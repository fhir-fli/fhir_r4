// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This FHIR value set is comprised of Actor participation Type codes, which can be used to value FHIR agents, actors, and other role elements. The FHIR Actor participation type value set is based on DICOM Audit Message, C402; ASTM Standard, E1762-95 [2013]; selected codes and derived actor roles from HL7 RoleClass OID 2.16.840.1.113883.5.110; HL7 Role Code 2.16.840.1.113883.5.111, including AgentRoleType; HL7 ParticipationType OID: 2.16.840.1.113883.5.90; and HL7 ParticipationFunction codes OID: 2.16.840.1.113883.5.88. This value set includes, by reference, role codes from external code systems: NUCC Health Care Provider Taxonomy OID: 2.16.840.1.113883.6.101; North American Industry Classification System [NAICS]OID: 2.16.840.1.113883.6.85; IndustryClassificationSystem 2.16.840.1.113883.1.11.16039; and US Census Occupation Code OID: 2.16.840.1.113883.6.243 for relevant recipient or custodian codes not included in this value set. If no source is indicated in the definition comments, then these are example FHIR codes.
@collection
class ParticipationRoleType {
  /// Constructor for internal use (like enum)
  ParticipationRoleType({this.fhirCode, this.element})
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

  /// ParticipationRoleType values
  /// AMENDER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AMENDER = ParticipationRoleType(
    fhirCode: 'AMENDER',
  );

  /// COAUTH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType COAUTH = ParticipationRoleType(
    fhirCode: 'COAUTH',
  );

  /// CONT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CONT = ParticipationRoleType(
    fhirCode: 'CONT',
  );

  /// EVTWIT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType EVTWIT = ParticipationRoleType(
    fhirCode: 'EVTWIT',
  );

  /// PRIMAUTH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PRIMAUTH = ParticipationRoleType(
    fhirCode: 'PRIMAUTH',
  );

  /// REVIEWER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType REVIEWER = ParticipationRoleType(
    fhirCode: 'REVIEWER',
  );

  /// SOURCE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType SOURCE = ParticipationRoleType(
    fhirCode: 'SOURCE',
  );

  /// TRANS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType TRANS = ParticipationRoleType(
    fhirCode: 'TRANS',
  );

  /// VALID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType VALID = ParticipationRoleType(
    fhirCode: 'VALID',
  );

  /// VERF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType VERF = ParticipationRoleType(
    fhirCode: 'VERF',
  );

  /// AFFL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AFFL = ParticipationRoleType(
    fhirCode: 'AFFL',
  );

  /// AGNT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AGNT = ParticipationRoleType(
    fhirCode: 'AGNT',
  );

  /// ASSIGNED
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType ASSIGNED = ParticipationRoleType(
    fhirCode: 'ASSIGNED',
  );

  /// CLAIM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CLAIM = ParticipationRoleType(
    fhirCode: 'CLAIM',
  );

  /// COVPTY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType COVPTY = ParticipationRoleType(
    fhirCode: 'COVPTY',
  );

  /// DEPEN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DEPEN = ParticipationRoleType(
    fhirCode: 'DEPEN',
  );

  /// ECON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType ECON = ParticipationRoleType(
    fhirCode: 'ECON',
  );

  /// EMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType EMP = ParticipationRoleType(
    fhirCode: 'EMP',
  );

  /// GUARD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType GUARD = ParticipationRoleType(
    fhirCode: 'GUARD',
  );

  /// INVSBJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType INVSBJ = ParticipationRoleType(
    fhirCode: 'INVSBJ',
  );

  /// NAMED
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType NAMED = ParticipationRoleType(
    fhirCode: 'NAMED',
  );

  /// NOK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType NOK = ParticipationRoleType(
    fhirCode: 'NOK',
  );

  /// PAT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PAT = ParticipationRoleType(
    fhirCode: 'PAT',
  );

  /// PROV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PROV = ParticipationRoleType(
    fhirCode: 'PROV',
  );

  /// NOT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType NOT = ParticipationRoleType(
    fhirCode: 'NOT',
  );

  /// CLASSIFIER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CLASSIFIER = ParticipationRoleType(
    fhirCode: 'CLASSIFIER',
  );

  /// CONSENTER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CONSENTER = ParticipationRoleType(
    fhirCode: 'CONSENTER',
  );

  /// CONSWIT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CONSWIT = ParticipationRoleType(
    fhirCode: 'CONSWIT',
  );

  /// COPART
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType COPART = ParticipationRoleType(
    fhirCode: 'COPART',
  );

  /// DECLASSIFIER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DECLASSIFIER = ParticipationRoleType(
    fhirCode: 'DECLASSIFIER',
  );

  /// DELEGATEE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DELEGATEE = ParticipationRoleType(
    fhirCode: 'DELEGATEE',
  );

  /// DELEGATOR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DELEGATOR = ParticipationRoleType(
    fhirCode: 'DELEGATOR',
  );

  /// DOWNGRDER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DOWNGRDER = ParticipationRoleType(
    fhirCode: 'DOWNGRDER',
  );

  /// DPOWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DPOWATT = ParticipationRoleType(
    fhirCode: 'DPOWATT',
  );

  /// EXCEST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType EXCEST = ParticipationRoleType(
    fhirCode: 'EXCEST',
  );

  /// GRANTEE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType GRANTEE = ParticipationRoleType(
    fhirCode: 'GRANTEE',
  );

  /// GRANTOR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType GRANTOR = ParticipationRoleType(
    fhirCode: 'GRANTOR',
  );

  /// GT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType GT = ParticipationRoleType(
    fhirCode: 'GT',
  );

  /// GUADLTM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType GUADLTM = ParticipationRoleType(
    fhirCode: 'GUADLTM',
  );

  /// HPOWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType HPOWATT = ParticipationRoleType(
    fhirCode: 'HPOWATT',
  );

  /// INTPRTER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType INTPRTER = ParticipationRoleType(
    fhirCode: 'INTPRTER',
  );

  /// POWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType POWATT = ParticipationRoleType(
    fhirCode: 'POWATT',
  );

  /// RESPRSN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RESPRSN = ParticipationRoleType(
    fhirCode: 'RESPRSN',
  );

  /// SPOWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType SPOWATT = ParticipationRoleType(
    fhirCode: 'SPOWATT',
  );

  /// AUCG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AUCG = ParticipationRoleType(
    fhirCode: 'AUCG',
  );

  /// AULR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AULR = ParticipationRoleType(
    fhirCode: 'AULR',
  );

  /// AUTM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AUTM = ParticipationRoleType(
    fhirCode: 'AUTM',
  );

  /// AUWA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AUWA = ParticipationRoleType(
    fhirCode: 'AUWA',
  );

  /// PROMSK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PROMSK = ParticipationRoleType(
    fhirCode: 'PROMSK',
  );

  /// AUT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AUT = ParticipationRoleType(
    fhirCode: 'AUT',
  );

  /// CST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CST = ParticipationRoleType(
    fhirCode: 'CST',
  );

  /// INF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType INF = ParticipationRoleType(
    fhirCode: 'INF',
  );

  /// IRCP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType IRCP = ParticipationRoleType(
    fhirCode: 'IRCP',
  );

  /// LA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType LA = ParticipationRoleType(
    fhirCode: 'LA',
  );

  /// TRC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType TRC = ParticipationRoleType(
    fhirCode: 'TRC',
  );

  /// WIT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType WIT = ParticipationRoleType(
    fhirCode: 'WIT',
  );

  /// authserver
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType authserver = ParticipationRoleType(
    fhirCode: 'authserver',
  );

  /// datacollector
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType datacollector = ParticipationRoleType(
    fhirCode: 'datacollector',
  );

  /// dataprocessor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType dataprocessor = ParticipationRoleType(
    fhirCode: 'dataprocessor',
  );

  /// datasubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType datasubject = ParticipationRoleType(
    fhirCode: 'datasubject',
  );

  /// humanuser
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType humanuser = ParticipationRoleType(
    fhirCode: 'humanuser',
  );

  /// ARCHIVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType ARCHIVE = ParticipationRoleType(
    fhirCode: 'ARCHIVE',
  );

  /// AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AR = ParticipationRoleType(
    fhirCode: 'AR',
  );

  /// AS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AS = ParticipationRoleType(
    fhirCode: 'AS',
  );

  /// AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType AU = ParticipationRoleType(
    fhirCode: 'AU',
  );

  /// BDUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType BDUS = ParticipationRoleType(
    fhirCode: 'BDUS',
  );

  /// BI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType BI = ParticipationRoleType(
    fhirCode: 'BI',
  );

  /// BMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType BMD = ParticipationRoleType(
    fhirCode: 'BMD',
  );

  /// CAD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CAD = ParticipationRoleType(
    fhirCode: 'CAD',
  );

  /// CAPTURE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CAPTURE = ParticipationRoleType(
    fhirCode: 'CAPTURE',
  );

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CD = ParticipationRoleType(
    fhirCode: 'CD',
  );

  /// CF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CF = ParticipationRoleType(
    fhirCode: 'CF',
  );

  /// COMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType COMP = ParticipationRoleType(
    fhirCode: 'COMP',
  );

  /// CP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CP = ParticipationRoleType(
    fhirCode: 'CP',
  );

  /// CR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CR = ParticipationRoleType(
    fhirCode: 'CR',
  );

  /// CS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CS = ParticipationRoleType(
    fhirCode: 'CS',
  );

  /// CT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType CT = ParticipationRoleType(
    fhirCode: 'CT',
  );

  /// DD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DD = ParticipationRoleType(
    fhirCode: 'DD',
  );

  /// DF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DF = ParticipationRoleType(
    fhirCode: 'DF',
  );

  /// DG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DG = ParticipationRoleType(
    fhirCode: 'DG',
  );

  /// DM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DM = ParticipationRoleType(
    fhirCode: 'DM',
  );

  /// DOCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DOCD = ParticipationRoleType(
    fhirCode: 'DOCD',
  );

  /// DS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DS = ParticipationRoleType(
    fhirCode: 'DS',
  );

  /// DSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DSS = ParticipationRoleType(
    fhirCode: 'DSS',
  );

  /// DX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType DX = ParticipationRoleType(
    fhirCode: 'DX',
  );

  /// EC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType EC = ParticipationRoleType(
    fhirCode: 'EC',
  );

  /// ECG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType ECG = ParticipationRoleType(
    fhirCode: 'ECG',
  );

  /// EPS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType EPS = ParticipationRoleType(
    fhirCode: 'EPS',
  );

  /// ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType ES = ParticipationRoleType(
    fhirCode: 'ES',
  );

  /// F
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType F = ParticipationRoleType(
    fhirCode: 'F',
  );

  /// FA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType FA = ParticipationRoleType(
    fhirCode: 'FA',
  );

  /// FC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType FC = ParticipationRoleType(
    fhirCode: 'FC',
  );

  /// FILMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType FILMD = ParticipationRoleType(
    fhirCode: 'FILMD',
  );

  /// FP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType FP = ParticipationRoleType(
    fhirCode: 'FP',
  );

  /// FS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType FS = ParticipationRoleType(
    fhirCode: 'FS',
  );

  /// GM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType GM = ParticipationRoleType(
    fhirCode: 'GM',
  );

  /// H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType H = ParticipationRoleType(
    fhirCode: 'H',
  );

  /// HC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType HC = ParticipationRoleType(
    fhirCode: 'HC',
  );

  /// HD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType HD = ParticipationRoleType(
    fhirCode: 'HD',
  );

  /// IO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType IO = ParticipationRoleType(
    fhirCode: 'IO',
  );

  /// IVOCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType IVOCT = ParticipationRoleType(
    fhirCode: 'IVOCT',
  );

  /// IVUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType IVUS = ParticipationRoleType(
    fhirCode: 'IVUS',
  );

  /// KER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType KER = ParticipationRoleType(
    fhirCode: 'KER',
  );

  /// KO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType KO = ParticipationRoleType(
    fhirCode: 'KO',
  );

  /// LEN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType LEN = ParticipationRoleType(
    fhirCode: 'LEN',
  );

  /// LOG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType LOG = ParticipationRoleType(
    fhirCode: 'LOG',
  );

  /// LP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType LP = ParticipationRoleType(
    fhirCode: 'LP',
  );

  /// LS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType LS = ParticipationRoleType(
    fhirCode: 'LS',
  );

  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType M = ParticipationRoleType(
    fhirCode: 'M',
  );

  /// MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MA = ParticipationRoleType(
    fhirCode: 'MA',
  );

  /// MC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MC = ParticipationRoleType(
    fhirCode: 'MC',
  );

  /// MCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MCD = ParticipationRoleType(
    fhirCode: 'MCD',
  );

  /// MEDIM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MEDIM = ParticipationRoleType(
    fhirCode: 'MEDIM',
  );

  /// MG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MG = ParticipationRoleType(
    fhirCode: 'MG',
  );

  /// MP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MP = ParticipationRoleType(
    fhirCode: 'MP',
  );

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MR = ParticipationRoleType(
    fhirCode: 'MR',
  );

  /// MS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType MS = ParticipationRoleType(
    fhirCode: 'MS',
  );

  /// NEARLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType NEARLINE = ParticipationRoleType(
    fhirCode: 'NEARLINE',
  );

  /// NM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType NM = ParticipationRoleType(
    fhirCode: 'NM',
  );

  /// OAM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OAM = ParticipationRoleType(
    fhirCode: 'OAM',
  );

  /// OCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OCT = ParticipationRoleType(
    fhirCode: 'OCT',
  );

  /// OFFLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OFFLINE = ParticipationRoleType(
    fhirCode: 'OFFLINE',
  );

  /// ONLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType ONLINE = ParticipationRoleType(
    fhirCode: 'ONLINE',
  );

  /// OP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OP = ParticipationRoleType(
    fhirCode: 'OP',
  );

  /// OPM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OPM = ParticipationRoleType(
    fhirCode: 'OPM',
  );

  /// OPR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OPR = ParticipationRoleType(
    fhirCode: 'OPR',
  );

  /// OPT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OPT = ParticipationRoleType(
    fhirCode: 'OPT',
  );

  /// OPV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OPV = ParticipationRoleType(
    fhirCode: 'OPV',
  );

  /// OSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OSS = ParticipationRoleType(
    fhirCode: 'OSS',
  );

  /// OT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType OT = ParticipationRoleType(
    fhirCode: 'OT',
  );

  /// PR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PR = ParticipationRoleType(
    fhirCode: 'PR',
  );

  /// PRINT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PRINT = ParticipationRoleType(
    fhirCode: 'PRINT',
  );

  /// PT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PT = ParticipationRoleType(
    fhirCode: 'PT',
  );

  /// PX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType PX = ParticipationRoleType(
    fhirCode: 'PX',
  );

  /// REG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType REG = ParticipationRoleType(
    fhirCode: 'REG',
  );

  /// RF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RF = ParticipationRoleType(
    fhirCode: 'RF',
  );

  /// RG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RG = ParticipationRoleType(
    fhirCode: 'RG',
  );

  /// RT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RT = ParticipationRoleType(
    fhirCode: 'RT',
  );

  /// RTDOSE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RTDOSE = ParticipationRoleType(
    fhirCode: 'RTDOSE',
  );

  /// RTIMAGE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RTIMAGE = ParticipationRoleType(
    fhirCode: 'RTIMAGE',
  );

  /// RTPLAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RTPLAN = ParticipationRoleType(
    fhirCode: 'RTPLAN',
  );

  /// RTRECORD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RTRECORD = ParticipationRoleType(
    fhirCode: 'RTRECORD',
  );

  /// RTSTRUCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType RTSTRUCT = ParticipationRoleType(
    fhirCode: 'RTSTRUCT',
  );

  /// SEG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType SEG = ParticipationRoleType(
    fhirCode: 'SEG',
  );

  /// SM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType SM = ParticipationRoleType(
    fhirCode: 'SM',
  );

  /// SMR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType SMR = ParticipationRoleType(
    fhirCode: 'SMR',
  );

  /// SR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType SR = ParticipationRoleType(
    fhirCode: 'SR',
  );

  /// SRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType SRF = ParticipationRoleType(
    fhirCode: 'SRF',
  );

  /// ST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType ST = ParticipationRoleType(
    fhirCode: 'ST',
  );

  /// TG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType TG = ParticipationRoleType(
    fhirCode: 'TG',
  );

  /// U
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType U = ParticipationRoleType(
    fhirCode: 'U',
  );

  /// UNAVAILABLE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType UNAVAILABLE = ParticipationRoleType(
    fhirCode: 'UNAVAILABLE',
  );

  /// US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType US = ParticipationRoleType(
    fhirCode: 'US',
  );

  /// VA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType VA = ParticipationRoleType(
    fhirCode: 'VA',
  );

  /// VF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType VF = ParticipationRoleType(
    fhirCode: 'VF',
  );

  /// VIDD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType VIDD = ParticipationRoleType(
    fhirCode: 'VIDD',
  );

  /// WSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType WSD = ParticipationRoleType(
    fhirCode: 'WSD',
  );

  /// XA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType XA = ParticipationRoleType(
    fhirCode: 'XA',
  );

  /// XC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType XC = ParticipationRoleType(
    fhirCode: 'XC',
  );

  /// value109001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109001 = ParticipationRoleType(
    fhirCode: '109001',
  );

  /// value109002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109002 = ParticipationRoleType(
    fhirCode: '109002',
  );

  /// value109003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109003 = ParticipationRoleType(
    fhirCode: '109003',
  );

  /// value109004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109004 = ParticipationRoleType(
    fhirCode: '109004',
  );

  /// value109005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109005 = ParticipationRoleType(
    fhirCode: '109005',
  );

  /// value109006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109006 = ParticipationRoleType(
    fhirCode: '109006',
  );

  /// value109007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109007 = ParticipationRoleType(
    fhirCode: '109007',
  );

  /// value109008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109008 = ParticipationRoleType(
    fhirCode: '109008',
  );

  /// value109009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109009 = ParticipationRoleType(
    fhirCode: '109009',
  );

  /// value109010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109010 = ParticipationRoleType(
    fhirCode: '109010',
  );

  /// value109011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109011 = ParticipationRoleType(
    fhirCode: '109011',
  );

  /// value109012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109012 = ParticipationRoleType(
    fhirCode: '109012',
  );

  /// value109013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109013 = ParticipationRoleType(
    fhirCode: '109013',
  );

  /// value109014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109014 = ParticipationRoleType(
    fhirCode: '109014',
  );

  /// value109015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109015 = ParticipationRoleType(
    fhirCode: '109015',
  );

  /// value109016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109016 = ParticipationRoleType(
    fhirCode: '109016',
  );

  /// value109017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109017 = ParticipationRoleType(
    fhirCode: '109017',
  );

  /// value109018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109018 = ParticipationRoleType(
    fhirCode: '109018',
  );

  /// value109019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109019 = ParticipationRoleType(
    fhirCode: '109019',
  );

  /// value109020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109020 = ParticipationRoleType(
    fhirCode: '109020',
  );

  /// value109021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109021 = ParticipationRoleType(
    fhirCode: '109021',
  );

  /// value109022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109022 = ParticipationRoleType(
    fhirCode: '109022',
  );

  /// value109023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109023 = ParticipationRoleType(
    fhirCode: '109023',
  );

  /// value109024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109024 = ParticipationRoleType(
    fhirCode: '109024',
  );

  /// value109025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109025 = ParticipationRoleType(
    fhirCode: '109025',
  );

  /// value109026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109026 = ParticipationRoleType(
    fhirCode: '109026',
  );

  /// value109027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109027 = ParticipationRoleType(
    fhirCode: '109027',
  );

  /// value109028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109028 = ParticipationRoleType(
    fhirCode: '109028',
  );

  /// value109029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109029 = ParticipationRoleType(
    fhirCode: '109029',
  );

  /// value109030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109030 = ParticipationRoleType(
    fhirCode: '109030',
  );

  /// value109031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109031 = ParticipationRoleType(
    fhirCode: '109031',
  );

  /// value109032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109032 = ParticipationRoleType(
    fhirCode: '109032',
  );

  /// value109033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109033 = ParticipationRoleType(
    fhirCode: '109033',
  );

  /// value109034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109034 = ParticipationRoleType(
    fhirCode: '109034',
  );

  /// value109035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109035 = ParticipationRoleType(
    fhirCode: '109035',
  );

  /// value109036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109036 = ParticipationRoleType(
    fhirCode: '109036',
  );

  /// value109037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109037 = ParticipationRoleType(
    fhirCode: '109037',
  );

  /// value109038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109038 = ParticipationRoleType(
    fhirCode: '109038',
  );

  /// value109039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109039 = ParticipationRoleType(
    fhirCode: '109039',
  );

  /// value109040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109040 = ParticipationRoleType(
    fhirCode: '109040',
  );

  /// value109041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109041 = ParticipationRoleType(
    fhirCode: '109041',
  );

  /// value109042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109042 = ParticipationRoleType(
    fhirCode: '109042',
  );

  /// value109043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109043 = ParticipationRoleType(
    fhirCode: '109043',
  );

  /// value109044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109044 = ParticipationRoleType(
    fhirCode: '109044',
  );

  /// value109045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109045 = ParticipationRoleType(
    fhirCode: '109045',
  );

  /// value109046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109046 = ParticipationRoleType(
    fhirCode: '109046',
  );

  /// value109047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109047 = ParticipationRoleType(
    fhirCode: '109047',
  );

  /// value109048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109048 = ParticipationRoleType(
    fhirCode: '109048',
  );

  /// value109049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109049 = ParticipationRoleType(
    fhirCode: '109049',
  );

  /// value109050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109050 = ParticipationRoleType(
    fhirCode: '109050',
  );

  /// value109051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109051 = ParticipationRoleType(
    fhirCode: '109051',
  );

  /// value109052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109052 = ParticipationRoleType(
    fhirCode: '109052',
  );

  /// value109053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109053 = ParticipationRoleType(
    fhirCode: '109053',
  );

  /// value109054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109054 = ParticipationRoleType(
    fhirCode: '109054',
  );

  /// value109055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109055 = ParticipationRoleType(
    fhirCode: '109055',
  );

  /// value109056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109056 = ParticipationRoleType(
    fhirCode: '109056',
  );

  /// value109057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109057 = ParticipationRoleType(
    fhirCode: '109057',
  );

  /// value109058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109058 = ParticipationRoleType(
    fhirCode: '109058',
  );

  /// value109059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109059 = ParticipationRoleType(
    fhirCode: '109059',
  );

  /// value109060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109060 = ParticipationRoleType(
    fhirCode: '109060',
  );

  /// value109061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109061 = ParticipationRoleType(
    fhirCode: '109061',
  );

  /// value109063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109063 = ParticipationRoleType(
    fhirCode: '109063',
  );

  /// value109070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109070 = ParticipationRoleType(
    fhirCode: '109070',
  );

  /// value109071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109071 = ParticipationRoleType(
    fhirCode: '109071',
  );

  /// value109072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109072 = ParticipationRoleType(
    fhirCode: '109072',
  );

  /// value109073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109073 = ParticipationRoleType(
    fhirCode: '109073',
  );

  /// value109080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109080 = ParticipationRoleType(
    fhirCode: '109080',
  );

  /// value109081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109081 = ParticipationRoleType(
    fhirCode: '109081',
  );

  /// value109082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109082 = ParticipationRoleType(
    fhirCode: '109082',
  );

  /// value109083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109083 = ParticipationRoleType(
    fhirCode: '109083',
  );

  /// value109091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109091 = ParticipationRoleType(
    fhirCode: '109091',
  );

  /// value109092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109092 = ParticipationRoleType(
    fhirCode: '109092',
  );

  /// value109093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109093 = ParticipationRoleType(
    fhirCode: '109093',
  );

  /// value109094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109094 = ParticipationRoleType(
    fhirCode: '109094',
  );

  /// value109095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109095 = ParticipationRoleType(
    fhirCode: '109095',
  );

  /// value109096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109096 = ParticipationRoleType(
    fhirCode: '109096',
  );

  /// value109101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109101 = ParticipationRoleType(
    fhirCode: '109101',
  );

  /// value109102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109102 = ParticipationRoleType(
    fhirCode: '109102',
  );

  /// value109103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109103 = ParticipationRoleType(
    fhirCode: '109103',
  );

  /// value109104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109104 = ParticipationRoleType(
    fhirCode: '109104',
  );

  /// value109105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109105 = ParticipationRoleType(
    fhirCode: '109105',
  );

  /// value109106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109106 = ParticipationRoleType(
    fhirCode: '109106',
  );

  /// value109110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109110 = ParticipationRoleType(
    fhirCode: '109110',
  );

  /// value109111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109111 = ParticipationRoleType(
    fhirCode: '109111',
  );

  /// value109112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109112 = ParticipationRoleType(
    fhirCode: '109112',
  );

  /// value109113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109113 = ParticipationRoleType(
    fhirCode: '109113',
  );

  /// value109114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109114 = ParticipationRoleType(
    fhirCode: '109114',
  );

  /// value109115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109115 = ParticipationRoleType(
    fhirCode: '109115',
  );

  /// value109116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109116 = ParticipationRoleType(
    fhirCode: '109116',
  );

  /// value109117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109117 = ParticipationRoleType(
    fhirCode: '109117',
  );

  /// value109120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109120 = ParticipationRoleType(
    fhirCode: '109120',
  );

  /// value109121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109121 = ParticipationRoleType(
    fhirCode: '109121',
  );

  /// value109122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109122 = ParticipationRoleType(
    fhirCode: '109122',
  );

  /// value109123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109123 = ParticipationRoleType(
    fhirCode: '109123',
  );

  /// value109124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109124 = ParticipationRoleType(
    fhirCode: '109124',
  );

  /// value109125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109125 = ParticipationRoleType(
    fhirCode: '109125',
  );

  /// value109132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109132 = ParticipationRoleType(
    fhirCode: '109132',
  );

  /// value109133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109133 = ParticipationRoleType(
    fhirCode: '109133',
  );

  /// value109134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109134 = ParticipationRoleType(
    fhirCode: '109134',
  );

  /// value109135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109135 = ParticipationRoleType(
    fhirCode: '109135',
  );

  /// value109136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109136 = ParticipationRoleType(
    fhirCode: '109136',
  );

  /// value109200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109200 = ParticipationRoleType(
    fhirCode: '109200',
  );

  /// value109201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109201 = ParticipationRoleType(
    fhirCode: '109201',
  );

  /// value109202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109202 = ParticipationRoleType(
    fhirCode: '109202',
  );

  /// value109203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109203 = ParticipationRoleType(
    fhirCode: '109203',
  );

  /// value109204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109204 = ParticipationRoleType(
    fhirCode: '109204',
  );

  /// value109205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109205 = ParticipationRoleType(
    fhirCode: '109205',
  );

  /// value109206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109206 = ParticipationRoleType(
    fhirCode: '109206',
  );

  /// value109207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109207 = ParticipationRoleType(
    fhirCode: '109207',
  );

  /// value109208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109208 = ParticipationRoleType(
    fhirCode: '109208',
  );

  /// value109209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109209 = ParticipationRoleType(
    fhirCode: '109209',
  );

  /// value109210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109210 = ParticipationRoleType(
    fhirCode: '109210',
  );

  /// value109211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109211 = ParticipationRoleType(
    fhirCode: '109211',
  );

  /// value109212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109212 = ParticipationRoleType(
    fhirCode: '109212',
  );

  /// value109213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109213 = ParticipationRoleType(
    fhirCode: '109213',
  );

  /// value109214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109214 = ParticipationRoleType(
    fhirCode: '109214',
  );

  /// value109215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109215 = ParticipationRoleType(
    fhirCode: '109215',
  );

  /// value109216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109216 = ParticipationRoleType(
    fhirCode: '109216',
  );

  /// value109217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109217 = ParticipationRoleType(
    fhirCode: '109217',
  );

  /// value109218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109218 = ParticipationRoleType(
    fhirCode: '109218',
  );

  /// value109219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109219 = ParticipationRoleType(
    fhirCode: '109219',
  );

  /// value109220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109220 = ParticipationRoleType(
    fhirCode: '109220',
  );

  /// value109221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109221 = ParticipationRoleType(
    fhirCode: '109221',
  );

  /// value109222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109222 = ParticipationRoleType(
    fhirCode: '109222',
  );

  /// value109701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109701 = ParticipationRoleType(
    fhirCode: '109701',
  );

  /// value109702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109702 = ParticipationRoleType(
    fhirCode: '109702',
  );

  /// value109703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109703 = ParticipationRoleType(
    fhirCode: '109703',
  );

  /// value109704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109704 = ParticipationRoleType(
    fhirCode: '109704',
  );

  /// value109705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109705 = ParticipationRoleType(
    fhirCode: '109705',
  );

  /// value109706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109706 = ParticipationRoleType(
    fhirCode: '109706',
  );

  /// value109707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109707 = ParticipationRoleType(
    fhirCode: '109707',
  );

  /// value109708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109708 = ParticipationRoleType(
    fhirCode: '109708',
  );

  /// value109709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109709 = ParticipationRoleType(
    fhirCode: '109709',
  );

  /// value109710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109710 = ParticipationRoleType(
    fhirCode: '109710',
  );

  /// value109801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109801 = ParticipationRoleType(
    fhirCode: '109801',
  );

  /// value109802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109802 = ParticipationRoleType(
    fhirCode: '109802',
  );

  /// value109803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109803 = ParticipationRoleType(
    fhirCode: '109803',
  );

  /// value109804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109804 = ParticipationRoleType(
    fhirCode: '109804',
  );

  /// value109805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109805 = ParticipationRoleType(
    fhirCode: '109805',
  );

  /// value109806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109806 = ParticipationRoleType(
    fhirCode: '109806',
  );

  /// value109807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109807 = ParticipationRoleType(
    fhirCode: '109807',
  );

  /// value109808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109808 = ParticipationRoleType(
    fhirCode: '109808',
  );

  /// value109809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109809 = ParticipationRoleType(
    fhirCode: '109809',
  );

  /// value109810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109810 = ParticipationRoleType(
    fhirCode: '109810',
  );

  /// value109811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109811 = ParticipationRoleType(
    fhirCode: '109811',
  );

  /// value109812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109812 = ParticipationRoleType(
    fhirCode: '109812',
  );

  /// value109813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109813 = ParticipationRoleType(
    fhirCode: '109813',
  );

  /// value109814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109814 = ParticipationRoleType(
    fhirCode: '109814',
  );

  /// value109815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109815 = ParticipationRoleType(
    fhirCode: '109815',
  );

  /// value109816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109816 = ParticipationRoleType(
    fhirCode: '109816',
  );

  /// value109817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109817 = ParticipationRoleType(
    fhirCode: '109817',
  );

  /// value109818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109818 = ParticipationRoleType(
    fhirCode: '109818',
  );

  /// value109819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109819 = ParticipationRoleType(
    fhirCode: '109819',
  );

  /// value109820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109820 = ParticipationRoleType(
    fhirCode: '109820',
  );

  /// value109821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109821 = ParticipationRoleType(
    fhirCode: '109821',
  );

  /// value109822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109822 = ParticipationRoleType(
    fhirCode: '109822',
  );

  /// value109823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109823 = ParticipationRoleType(
    fhirCode: '109823',
  );

  /// value109824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109824 = ParticipationRoleType(
    fhirCode: '109824',
  );

  /// value109825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109825 = ParticipationRoleType(
    fhirCode: '109825',
  );

  /// value109826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109826 = ParticipationRoleType(
    fhirCode: '109826',
  );

  /// value109827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109827 = ParticipationRoleType(
    fhirCode: '109827',
  );

  /// value109828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109828 = ParticipationRoleType(
    fhirCode: '109828',
  );

  /// value109829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109829 = ParticipationRoleType(
    fhirCode: '109829',
  );

  /// value109830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109830 = ParticipationRoleType(
    fhirCode: '109830',
  );

  /// value109831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109831 = ParticipationRoleType(
    fhirCode: '109831',
  );

  /// value109832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109832 = ParticipationRoleType(
    fhirCode: '109832',
  );

  /// value109833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109833 = ParticipationRoleType(
    fhirCode: '109833',
  );

  /// value109834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109834 = ParticipationRoleType(
    fhirCode: '109834',
  );

  /// value109835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109835 = ParticipationRoleType(
    fhirCode: '109835',
  );

  /// value109836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109836 = ParticipationRoleType(
    fhirCode: '109836',
  );

  /// value109837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109837 = ParticipationRoleType(
    fhirCode: '109837',
  );

  /// value109838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109838 = ParticipationRoleType(
    fhirCode: '109838',
  );

  /// value109839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109839 = ParticipationRoleType(
    fhirCode: '109839',
  );

  /// value109840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109840 = ParticipationRoleType(
    fhirCode: '109840',
  );

  /// value109841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109841 = ParticipationRoleType(
    fhirCode: '109841',
  );

  /// value109842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109842 = ParticipationRoleType(
    fhirCode: '109842',
  );

  /// value109843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109843 = ParticipationRoleType(
    fhirCode: '109843',
  );

  /// value109844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109844 = ParticipationRoleType(
    fhirCode: '109844',
  );

  /// value109845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109845 = ParticipationRoleType(
    fhirCode: '109845',
  );

  /// value109846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109846 = ParticipationRoleType(
    fhirCode: '109846',
  );

  /// value109847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109847 = ParticipationRoleType(
    fhirCode: '109847',
  );

  /// value109848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109848 = ParticipationRoleType(
    fhirCode: '109848',
  );

  /// value109849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109849 = ParticipationRoleType(
    fhirCode: '109849',
  );

  /// value109850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109850 = ParticipationRoleType(
    fhirCode: '109850',
  );

  /// value109851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109851 = ParticipationRoleType(
    fhirCode: '109851',
  );

  /// value109852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109852 = ParticipationRoleType(
    fhirCode: '109852',
  );

  /// value109853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109853 = ParticipationRoleType(
    fhirCode: '109853',
  );

  /// value109854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109854 = ParticipationRoleType(
    fhirCode: '109854',
  );

  /// value109855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109855 = ParticipationRoleType(
    fhirCode: '109855',
  );

  /// value109856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109856 = ParticipationRoleType(
    fhirCode: '109856',
  );

  /// value109857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109857 = ParticipationRoleType(
    fhirCode: '109857',
  );

  /// value109858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109858 = ParticipationRoleType(
    fhirCode: '109858',
  );

  /// value109859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109859 = ParticipationRoleType(
    fhirCode: '109859',
  );

  /// value109860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109860 = ParticipationRoleType(
    fhirCode: '109860',
  );

  /// value109861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109861 = ParticipationRoleType(
    fhirCode: '109861',
  );

  /// value109862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109862 = ParticipationRoleType(
    fhirCode: '109862',
  );

  /// value109863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109863 = ParticipationRoleType(
    fhirCode: '109863',
  );

  /// value109864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109864 = ParticipationRoleType(
    fhirCode: '109864',
  );

  /// value109865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109865 = ParticipationRoleType(
    fhirCode: '109865',
  );

  /// value109866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109866 = ParticipationRoleType(
    fhirCode: '109866',
  );

  /// value109867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109867 = ParticipationRoleType(
    fhirCode: '109867',
  );

  /// value109868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109868 = ParticipationRoleType(
    fhirCode: '109868',
  );

  /// value109869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109869 = ParticipationRoleType(
    fhirCode: '109869',
  );

  /// value109870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109870 = ParticipationRoleType(
    fhirCode: '109870',
  );

  /// value109871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109871 = ParticipationRoleType(
    fhirCode: '109871',
  );

  /// value109872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109872 = ParticipationRoleType(
    fhirCode: '109872',
  );

  /// value109873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109873 = ParticipationRoleType(
    fhirCode: '109873',
  );

  /// value109874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109874 = ParticipationRoleType(
    fhirCode: '109874',
  );

  /// value109875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109875 = ParticipationRoleType(
    fhirCode: '109875',
  );

  /// value109876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109876 = ParticipationRoleType(
    fhirCode: '109876',
  );

  /// value109877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109877 = ParticipationRoleType(
    fhirCode: '109877',
  );

  /// value109878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109878 = ParticipationRoleType(
    fhirCode: '109878',
  );

  /// value109879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109879 = ParticipationRoleType(
    fhirCode: '109879',
  );

  /// value109880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109880 = ParticipationRoleType(
    fhirCode: '109880',
  );

  /// value109881
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109881 = ParticipationRoleType(
    fhirCode: '109881',
  );

  /// value109901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109901 = ParticipationRoleType(
    fhirCode: '109901',
  );

  /// value109902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109902 = ParticipationRoleType(
    fhirCode: '109902',
  );

  /// value109903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109903 = ParticipationRoleType(
    fhirCode: '109903',
  );

  /// value109904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109904 = ParticipationRoleType(
    fhirCode: '109904',
  );

  /// value109905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109905 = ParticipationRoleType(
    fhirCode: '109905',
  );

  /// value109906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109906 = ParticipationRoleType(
    fhirCode: '109906',
  );

  /// value109907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109907 = ParticipationRoleType(
    fhirCode: '109907',
  );

  /// value109908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109908 = ParticipationRoleType(
    fhirCode: '109908',
  );

  /// value109909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109909 = ParticipationRoleType(
    fhirCode: '109909',
  );

  /// value109910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109910 = ParticipationRoleType(
    fhirCode: '109910',
  );

  /// value109911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109911 = ParticipationRoleType(
    fhirCode: '109911',
  );

  /// value109912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109912 = ParticipationRoleType(
    fhirCode: '109912',
  );

  /// value109913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109913 = ParticipationRoleType(
    fhirCode: '109913',
  );

  /// value109914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109914 = ParticipationRoleType(
    fhirCode: '109914',
  );

  /// value109915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109915 = ParticipationRoleType(
    fhirCode: '109915',
  );

  /// value109916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109916 = ParticipationRoleType(
    fhirCode: '109916',
  );

  /// value109917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109917 = ParticipationRoleType(
    fhirCode: '109917',
  );

  /// value109918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109918 = ParticipationRoleType(
    fhirCode: '109918',
  );

  /// value109919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109919 = ParticipationRoleType(
    fhirCode: '109919',
  );

  /// value109920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109920 = ParticipationRoleType(
    fhirCode: '109920',
  );

  /// value109921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109921 = ParticipationRoleType(
    fhirCode: '109921',
  );

  /// value109931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109931 = ParticipationRoleType(
    fhirCode: '109931',
  );

  /// value109932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109932 = ParticipationRoleType(
    fhirCode: '109932',
  );

  /// value109933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109933 = ParticipationRoleType(
    fhirCode: '109933',
  );

  /// value109941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109941 = ParticipationRoleType(
    fhirCode: '109941',
  );

  /// value109943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109943 = ParticipationRoleType(
    fhirCode: '109943',
  );

  /// value109991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109991 = ParticipationRoleType(
    fhirCode: '109991',
  );

  /// value109992
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109992 = ParticipationRoleType(
    fhirCode: '109992',
  );

  /// value109993
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109993 = ParticipationRoleType(
    fhirCode: '109993',
  );

  /// value109994
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109994 = ParticipationRoleType(
    fhirCode: '109994',
  );

  /// value109995
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109995 = ParticipationRoleType(
    fhirCode: '109995',
  );

  /// value109996
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109996 = ParticipationRoleType(
    fhirCode: '109996',
  );

  /// value109997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109997 = ParticipationRoleType(
    fhirCode: '109997',
  );

  /// value109998
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109998 = ParticipationRoleType(
    fhirCode: '109998',
  );

  /// value109999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value109999 = ParticipationRoleType(
    fhirCode: '109999',
  );

  /// value110001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110001 = ParticipationRoleType(
    fhirCode: '110001',
  );

  /// value110002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110002 = ParticipationRoleType(
    fhirCode: '110002',
  );

  /// value110003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110003 = ParticipationRoleType(
    fhirCode: '110003',
  );

  /// value110004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110004 = ParticipationRoleType(
    fhirCode: '110004',
  );

  /// value110005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110005 = ParticipationRoleType(
    fhirCode: '110005',
  );

  /// value110006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110006 = ParticipationRoleType(
    fhirCode: '110006',
  );

  /// value110007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110007 = ParticipationRoleType(
    fhirCode: '110007',
  );

  /// value110008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110008 = ParticipationRoleType(
    fhirCode: '110008',
  );

  /// value110009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110009 = ParticipationRoleType(
    fhirCode: '110009',
  );

  /// value110010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110010 = ParticipationRoleType(
    fhirCode: '110010',
  );

  /// value110011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110011 = ParticipationRoleType(
    fhirCode: '110011',
  );

  /// value110012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110012 = ParticipationRoleType(
    fhirCode: '110012',
  );

  /// value110013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110013 = ParticipationRoleType(
    fhirCode: '110013',
  );

  /// value110020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110020 = ParticipationRoleType(
    fhirCode: '110020',
  );

  /// value110021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110021 = ParticipationRoleType(
    fhirCode: '110021',
  );

  /// value110022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110022 = ParticipationRoleType(
    fhirCode: '110022',
  );

  /// value110023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110023 = ParticipationRoleType(
    fhirCode: '110023',
  );

  /// value110024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110024 = ParticipationRoleType(
    fhirCode: '110024',
  );

  /// value110025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110025 = ParticipationRoleType(
    fhirCode: '110025',
  );

  /// value110026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110026 = ParticipationRoleType(
    fhirCode: '110026',
  );

  /// value110027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110027 = ParticipationRoleType(
    fhirCode: '110027',
  );

  /// value110028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110028 = ParticipationRoleType(
    fhirCode: '110028',
  );

  /// value110030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110030 = ParticipationRoleType(
    fhirCode: '110030',
  );

  /// value110031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110031 = ParticipationRoleType(
    fhirCode: '110031',
  );

  /// value110032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110032 = ParticipationRoleType(
    fhirCode: '110032',
  );

  /// value110033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110033 = ParticipationRoleType(
    fhirCode: '110033',
  );

  /// value110034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110034 = ParticipationRoleType(
    fhirCode: '110034',
  );

  /// value110035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110035 = ParticipationRoleType(
    fhirCode: '110035',
  );

  /// value110036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110036 = ParticipationRoleType(
    fhirCode: '110036',
  );

  /// value110037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110037 = ParticipationRoleType(
    fhirCode: '110037',
  );

  /// value110038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110038 = ParticipationRoleType(
    fhirCode: '110038',
  );

  /// value110100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110100 = ParticipationRoleType(
    fhirCode: '110100',
  );

  /// value110101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110101 = ParticipationRoleType(
    fhirCode: '110101',
  );

  /// value110102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110102 = ParticipationRoleType(
    fhirCode: '110102',
  );

  /// value110103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110103 = ParticipationRoleType(
    fhirCode: '110103',
  );

  /// value110104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110104 = ParticipationRoleType(
    fhirCode: '110104',
  );

  /// value110105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110105 = ParticipationRoleType(
    fhirCode: '110105',
  );

  /// value110106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110106 = ParticipationRoleType(
    fhirCode: '110106',
  );

  /// value110107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110107 = ParticipationRoleType(
    fhirCode: '110107',
  );

  /// value110108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110108 = ParticipationRoleType(
    fhirCode: '110108',
  );

  /// value110109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110109 = ParticipationRoleType(
    fhirCode: '110109',
  );

  /// value110110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110110 = ParticipationRoleType(
    fhirCode: '110110',
  );

  /// value110111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110111 = ParticipationRoleType(
    fhirCode: '110111',
  );

  /// value110112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110112 = ParticipationRoleType(
    fhirCode: '110112',
  );

  /// value110113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110113 = ParticipationRoleType(
    fhirCode: '110113',
  );

  /// value110114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110114 = ParticipationRoleType(
    fhirCode: '110114',
  );

  /// value110120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110120 = ParticipationRoleType(
    fhirCode: '110120',
  );

  /// value110121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110121 = ParticipationRoleType(
    fhirCode: '110121',
  );

  /// value110122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110122 = ParticipationRoleType(
    fhirCode: '110122',
  );

  /// value110123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110123 = ParticipationRoleType(
    fhirCode: '110123',
  );

  /// value110124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110124 = ParticipationRoleType(
    fhirCode: '110124',
  );

  /// value110125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110125 = ParticipationRoleType(
    fhirCode: '110125',
  );

  /// value110126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110126 = ParticipationRoleType(
    fhirCode: '110126',
  );

  /// value110127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110127 = ParticipationRoleType(
    fhirCode: '110127',
  );

  /// value110128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110128 = ParticipationRoleType(
    fhirCode: '110128',
  );

  /// value110129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110129 = ParticipationRoleType(
    fhirCode: '110129',
  );

  /// value110130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110130 = ParticipationRoleType(
    fhirCode: '110130',
  );

  /// value110131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110131 = ParticipationRoleType(
    fhirCode: '110131',
  );

  /// value110132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110132 = ParticipationRoleType(
    fhirCode: '110132',
  );

  /// value110133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110133 = ParticipationRoleType(
    fhirCode: '110133',
  );

  /// value110134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110134 = ParticipationRoleType(
    fhirCode: '110134',
  );

  /// value110135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110135 = ParticipationRoleType(
    fhirCode: '110135',
  );

  /// value110136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110136 = ParticipationRoleType(
    fhirCode: '110136',
  );

  /// value110137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110137 = ParticipationRoleType(
    fhirCode: '110137',
  );

  /// value110138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110138 = ParticipationRoleType(
    fhirCode: '110138',
  );

  /// value110139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110139 = ParticipationRoleType(
    fhirCode: '110139',
  );

  /// value110140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110140 = ParticipationRoleType(
    fhirCode: '110140',
  );

  /// value110141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110141 = ParticipationRoleType(
    fhirCode: '110141',
  );

  /// value110142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110142 = ParticipationRoleType(
    fhirCode: '110142',
  );

  /// value110150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110150 = ParticipationRoleType(
    fhirCode: '110150',
  );

  /// value110151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110151 = ParticipationRoleType(
    fhirCode: '110151',
  );

  /// value110152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110152 = ParticipationRoleType(
    fhirCode: '110152',
  );

  /// value110153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110153 = ParticipationRoleType(
    fhirCode: '110153',
  );

  /// value110154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110154 = ParticipationRoleType(
    fhirCode: '110154',
  );

  /// value110155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110155 = ParticipationRoleType(
    fhirCode: '110155',
  );

  /// value110180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110180 = ParticipationRoleType(
    fhirCode: '110180',
  );

  /// value110181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110181 = ParticipationRoleType(
    fhirCode: '110181',
  );

  /// value110182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110182 = ParticipationRoleType(
    fhirCode: '110182',
  );

  /// value110190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110190 = ParticipationRoleType(
    fhirCode: '110190',
  );

  /// value110500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110500 = ParticipationRoleType(
    fhirCode: '110500',
  );

  /// value110501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110501 = ParticipationRoleType(
    fhirCode: '110501',
  );

  /// value110502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110502 = ParticipationRoleType(
    fhirCode: '110502',
  );

  /// value110503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110503 = ParticipationRoleType(
    fhirCode: '110503',
  );

  /// value110504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110504 = ParticipationRoleType(
    fhirCode: '110504',
  );

  /// value110505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110505 = ParticipationRoleType(
    fhirCode: '110505',
  );

  /// value110506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110506 = ParticipationRoleType(
    fhirCode: '110506',
  );

  /// value110507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110507 = ParticipationRoleType(
    fhirCode: '110507',
  );

  /// value110508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110508 = ParticipationRoleType(
    fhirCode: '110508',
  );

  /// value110509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110509 = ParticipationRoleType(
    fhirCode: '110509',
  );

  /// value110510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110510 = ParticipationRoleType(
    fhirCode: '110510',
  );

  /// value110511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110511 = ParticipationRoleType(
    fhirCode: '110511',
  );

  /// value110512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110512 = ParticipationRoleType(
    fhirCode: '110512',
  );

  /// value110513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110513 = ParticipationRoleType(
    fhirCode: '110513',
  );

  /// value110514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110514 = ParticipationRoleType(
    fhirCode: '110514',
  );

  /// value110515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110515 = ParticipationRoleType(
    fhirCode: '110515',
  );

  /// value110516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110516 = ParticipationRoleType(
    fhirCode: '110516',
  );

  /// value110518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110518 = ParticipationRoleType(
    fhirCode: '110518',
  );

  /// value110519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110519 = ParticipationRoleType(
    fhirCode: '110519',
  );

  /// value110521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110521 = ParticipationRoleType(
    fhirCode: '110521',
  );

  /// value110522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110522 = ParticipationRoleType(
    fhirCode: '110522',
  );

  /// value110523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110523 = ParticipationRoleType(
    fhirCode: '110523',
  );

  /// value110524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110524 = ParticipationRoleType(
    fhirCode: '110524',
  );

  /// value110526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110526 = ParticipationRoleType(
    fhirCode: '110526',
  );

  /// value110527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110527 = ParticipationRoleType(
    fhirCode: '110527',
  );

  /// value110528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110528 = ParticipationRoleType(
    fhirCode: '110528',
  );

  /// value110529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110529 = ParticipationRoleType(
    fhirCode: '110529',
  );

  /// value110700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110700 = ParticipationRoleType(
    fhirCode: '110700',
  );

  /// value110701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110701 = ParticipationRoleType(
    fhirCode: '110701',
  );

  /// value110702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110702 = ParticipationRoleType(
    fhirCode: '110702',
  );

  /// value110703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110703 = ParticipationRoleType(
    fhirCode: '110703',
  );

  /// value110704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110704 = ParticipationRoleType(
    fhirCode: '110704',
  );

  /// value110705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110705 = ParticipationRoleType(
    fhirCode: '110705',
  );

  /// value110706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110706 = ParticipationRoleType(
    fhirCode: '110706',
  );

  /// value110800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110800 = ParticipationRoleType(
    fhirCode: '110800',
  );

  /// value110801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110801 = ParticipationRoleType(
    fhirCode: '110801',
  );

  /// value110802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110802 = ParticipationRoleType(
    fhirCode: '110802',
  );

  /// value110803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110803 = ParticipationRoleType(
    fhirCode: '110803',
  );

  /// value110804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110804 = ParticipationRoleType(
    fhirCode: '110804',
  );

  /// value110805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110805 = ParticipationRoleType(
    fhirCode: '110805',
  );

  /// value110806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110806 = ParticipationRoleType(
    fhirCode: '110806',
  );

  /// value110807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110807 = ParticipationRoleType(
    fhirCode: '110807',
  );

  /// value110808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110808 = ParticipationRoleType(
    fhirCode: '110808',
  );

  /// value110809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110809 = ParticipationRoleType(
    fhirCode: '110809',
  );

  /// value110810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110810 = ParticipationRoleType(
    fhirCode: '110810',
  );

  /// value110811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110811 = ParticipationRoleType(
    fhirCode: '110811',
  );

  /// value110812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110812 = ParticipationRoleType(
    fhirCode: '110812',
  );

  /// value110813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110813 = ParticipationRoleType(
    fhirCode: '110813',
  );

  /// value110814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110814 = ParticipationRoleType(
    fhirCode: '110814',
  );

  /// value110815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110815 = ParticipationRoleType(
    fhirCode: '110815',
  );

  /// value110816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110816 = ParticipationRoleType(
    fhirCode: '110816',
  );

  /// value110817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110817 = ParticipationRoleType(
    fhirCode: '110817',
  );

  /// value110818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110818 = ParticipationRoleType(
    fhirCode: '110818',
  );

  /// value110819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110819 = ParticipationRoleType(
    fhirCode: '110819',
  );

  /// value110820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110820 = ParticipationRoleType(
    fhirCode: '110820',
  );

  /// value110821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110821 = ParticipationRoleType(
    fhirCode: '110821',
  );

  /// value110822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110822 = ParticipationRoleType(
    fhirCode: '110822',
  );

  /// value110823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110823 = ParticipationRoleType(
    fhirCode: '110823',
  );

  /// value110824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110824 = ParticipationRoleType(
    fhirCode: '110824',
  );

  /// value110825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110825 = ParticipationRoleType(
    fhirCode: '110825',
  );

  /// value110826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110826 = ParticipationRoleType(
    fhirCode: '110826',
  );

  /// value110827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110827 = ParticipationRoleType(
    fhirCode: '110827',
  );

  /// value110828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110828 = ParticipationRoleType(
    fhirCode: '110828',
  );

  /// value110829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110829 = ParticipationRoleType(
    fhirCode: '110829',
  );

  /// value110830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110830 = ParticipationRoleType(
    fhirCode: '110830',
  );

  /// value110831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110831 = ParticipationRoleType(
    fhirCode: '110831',
  );

  /// value110832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110832 = ParticipationRoleType(
    fhirCode: '110832',
  );

  /// value110833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110833 = ParticipationRoleType(
    fhirCode: '110833',
  );

  /// value110834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110834 = ParticipationRoleType(
    fhirCode: '110834',
  );

  /// value110835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110835 = ParticipationRoleType(
    fhirCode: '110835',
  );

  /// value110836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110836 = ParticipationRoleType(
    fhirCode: '110836',
  );

  /// value110837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110837 = ParticipationRoleType(
    fhirCode: '110837',
  );

  /// value110838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110838 = ParticipationRoleType(
    fhirCode: '110838',
  );

  /// value110839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110839 = ParticipationRoleType(
    fhirCode: '110839',
  );

  /// value110840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110840 = ParticipationRoleType(
    fhirCode: '110840',
  );

  /// value110841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110841 = ParticipationRoleType(
    fhirCode: '110841',
  );

  /// value110842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110842 = ParticipationRoleType(
    fhirCode: '110842',
  );

  /// value110843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110843 = ParticipationRoleType(
    fhirCode: '110843',
  );

  /// value110844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110844 = ParticipationRoleType(
    fhirCode: '110844',
  );

  /// value110845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110845 = ParticipationRoleType(
    fhirCode: '110845',
  );

  /// value110846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110846 = ParticipationRoleType(
    fhirCode: '110846',
  );

  /// value110847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110847 = ParticipationRoleType(
    fhirCode: '110847',
  );

  /// value110848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110848 = ParticipationRoleType(
    fhirCode: '110848',
  );

  /// value110849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110849 = ParticipationRoleType(
    fhirCode: '110849',
  );

  /// value110850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110850 = ParticipationRoleType(
    fhirCode: '110850',
  );

  /// value110851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110851 = ParticipationRoleType(
    fhirCode: '110851',
  );

  /// value110852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110852 = ParticipationRoleType(
    fhirCode: '110852',
  );

  /// value110853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110853 = ParticipationRoleType(
    fhirCode: '110853',
  );

  /// value110854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110854 = ParticipationRoleType(
    fhirCode: '110854',
  );

  /// value110855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110855 = ParticipationRoleType(
    fhirCode: '110855',
  );

  /// value110856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110856 = ParticipationRoleType(
    fhirCode: '110856',
  );

  /// value110857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110857 = ParticipationRoleType(
    fhirCode: '110857',
  );

  /// value110858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110858 = ParticipationRoleType(
    fhirCode: '110858',
  );

  /// value110859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110859 = ParticipationRoleType(
    fhirCode: '110859',
  );

  /// value110860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110860 = ParticipationRoleType(
    fhirCode: '110860',
  );

  /// value110861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110861 = ParticipationRoleType(
    fhirCode: '110861',
  );

  /// value110862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110862 = ParticipationRoleType(
    fhirCode: '110862',
  );

  /// value110863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110863 = ParticipationRoleType(
    fhirCode: '110863',
  );

  /// value110864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110864 = ParticipationRoleType(
    fhirCode: '110864',
  );

  /// value110865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110865 = ParticipationRoleType(
    fhirCode: '110865',
  );

  /// value110866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110866 = ParticipationRoleType(
    fhirCode: '110866',
  );

  /// value110867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110867 = ParticipationRoleType(
    fhirCode: '110867',
  );

  /// value110868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110868 = ParticipationRoleType(
    fhirCode: '110868',
  );

  /// value110869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110869 = ParticipationRoleType(
    fhirCode: '110869',
  );

  /// value110870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110870 = ParticipationRoleType(
    fhirCode: '110870',
  );

  /// value110871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110871 = ParticipationRoleType(
    fhirCode: '110871',
  );

  /// value110872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110872 = ParticipationRoleType(
    fhirCode: '110872',
  );

  /// value110873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110873 = ParticipationRoleType(
    fhirCode: '110873',
  );

  /// value110874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110874 = ParticipationRoleType(
    fhirCode: '110874',
  );

  /// value110875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110875 = ParticipationRoleType(
    fhirCode: '110875',
  );

  /// value110876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110876 = ParticipationRoleType(
    fhirCode: '110876',
  );

  /// value110877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110877 = ParticipationRoleType(
    fhirCode: '110877',
  );

  /// value110901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110901 = ParticipationRoleType(
    fhirCode: '110901',
  );

  /// value110902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110902 = ParticipationRoleType(
    fhirCode: '110902',
  );

  /// value110903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110903 = ParticipationRoleType(
    fhirCode: '110903',
  );

  /// value110904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110904 = ParticipationRoleType(
    fhirCode: '110904',
  );

  /// value110905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110905 = ParticipationRoleType(
    fhirCode: '110905',
  );

  /// value110906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110906 = ParticipationRoleType(
    fhirCode: '110906',
  );

  /// value110907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110907 = ParticipationRoleType(
    fhirCode: '110907',
  );

  /// value110908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110908 = ParticipationRoleType(
    fhirCode: '110908',
  );

  /// value110909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110909 = ParticipationRoleType(
    fhirCode: '110909',
  );

  /// value110910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110910 = ParticipationRoleType(
    fhirCode: '110910',
  );

  /// value110911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value110911 = ParticipationRoleType(
    fhirCode: '110911',
  );

  /// value111001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111001 = ParticipationRoleType(
    fhirCode: '111001',
  );

  /// value111002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111002 = ParticipationRoleType(
    fhirCode: '111002',
  );

  /// value111003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111003 = ParticipationRoleType(
    fhirCode: '111003',
  );

  /// value111004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111004 = ParticipationRoleType(
    fhirCode: '111004',
  );

  /// value111005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111005 = ParticipationRoleType(
    fhirCode: '111005',
  );

  /// value111006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111006 = ParticipationRoleType(
    fhirCode: '111006',
  );

  /// value111007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111007 = ParticipationRoleType(
    fhirCode: '111007',
  );

  /// value111008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111008 = ParticipationRoleType(
    fhirCode: '111008',
  );

  /// value111009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111009 = ParticipationRoleType(
    fhirCode: '111009',
  );

  /// value111010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111010 = ParticipationRoleType(
    fhirCode: '111010',
  );

  /// value111011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111011 = ParticipationRoleType(
    fhirCode: '111011',
  );

  /// value111012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111012 = ParticipationRoleType(
    fhirCode: '111012',
  );

  /// value111013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111013 = ParticipationRoleType(
    fhirCode: '111013',
  );

  /// value111014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111014 = ParticipationRoleType(
    fhirCode: '111014',
  );

  /// value111015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111015 = ParticipationRoleType(
    fhirCode: '111015',
  );

  /// value111016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111016 = ParticipationRoleType(
    fhirCode: '111016',
  );

  /// value111017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111017 = ParticipationRoleType(
    fhirCode: '111017',
  );

  /// value111018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111018 = ParticipationRoleType(
    fhirCode: '111018',
  );

  /// value111019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111019 = ParticipationRoleType(
    fhirCode: '111019',
  );

  /// value111020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111020 = ParticipationRoleType(
    fhirCode: '111020',
  );

  /// value111021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111021 = ParticipationRoleType(
    fhirCode: '111021',
  );

  /// value111022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111022 = ParticipationRoleType(
    fhirCode: '111022',
  );

  /// value111023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111023 = ParticipationRoleType(
    fhirCode: '111023',
  );

  /// value111024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111024 = ParticipationRoleType(
    fhirCode: '111024',
  );

  /// value111025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111025 = ParticipationRoleType(
    fhirCode: '111025',
  );

  /// value111026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111026 = ParticipationRoleType(
    fhirCode: '111026',
  );

  /// value111027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111027 = ParticipationRoleType(
    fhirCode: '111027',
  );

  /// value111028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111028 = ParticipationRoleType(
    fhirCode: '111028',
  );

  /// value111029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111029 = ParticipationRoleType(
    fhirCode: '111029',
  );

  /// value111030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111030 = ParticipationRoleType(
    fhirCode: '111030',
  );

  /// value111031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111031 = ParticipationRoleType(
    fhirCode: '111031',
  );

  /// value111032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111032 = ParticipationRoleType(
    fhirCode: '111032',
  );

  /// value111033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111033 = ParticipationRoleType(
    fhirCode: '111033',
  );

  /// value111034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111034 = ParticipationRoleType(
    fhirCode: '111034',
  );

  /// value111035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111035 = ParticipationRoleType(
    fhirCode: '111035',
  );

  /// value111036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111036 = ParticipationRoleType(
    fhirCode: '111036',
  );

  /// value111037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111037 = ParticipationRoleType(
    fhirCode: '111037',
  );

  /// value111038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111038 = ParticipationRoleType(
    fhirCode: '111038',
  );

  /// value111039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111039 = ParticipationRoleType(
    fhirCode: '111039',
  );

  /// value111040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111040 = ParticipationRoleType(
    fhirCode: '111040',
  );

  /// value111041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111041 = ParticipationRoleType(
    fhirCode: '111041',
  );

  /// value111042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111042 = ParticipationRoleType(
    fhirCode: '111042',
  );

  /// value111043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111043 = ParticipationRoleType(
    fhirCode: '111043',
  );

  /// value111044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111044 = ParticipationRoleType(
    fhirCode: '111044',
  );

  /// value111045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111045 = ParticipationRoleType(
    fhirCode: '111045',
  );

  /// value111046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111046 = ParticipationRoleType(
    fhirCode: '111046',
  );

  /// value111047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111047 = ParticipationRoleType(
    fhirCode: '111047',
  );

  /// value111048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111048 = ParticipationRoleType(
    fhirCode: '111048',
  );

  /// value111049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111049 = ParticipationRoleType(
    fhirCode: '111049',
  );

  /// value111050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111050 = ParticipationRoleType(
    fhirCode: '111050',
  );

  /// value111051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111051 = ParticipationRoleType(
    fhirCode: '111051',
  );

  /// value111052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111052 = ParticipationRoleType(
    fhirCode: '111052',
  );

  /// value111053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111053 = ParticipationRoleType(
    fhirCode: '111053',
  );

  /// value111054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111054 = ParticipationRoleType(
    fhirCode: '111054',
  );

  /// value111055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111055 = ParticipationRoleType(
    fhirCode: '111055',
  );

  /// value111056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111056 = ParticipationRoleType(
    fhirCode: '111056',
  );

  /// value111057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111057 = ParticipationRoleType(
    fhirCode: '111057',
  );

  /// value111058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111058 = ParticipationRoleType(
    fhirCode: '111058',
  );

  /// value111059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111059 = ParticipationRoleType(
    fhirCode: '111059',
  );

  /// value111060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111060 = ParticipationRoleType(
    fhirCode: '111060',
  );

  /// value111061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111061 = ParticipationRoleType(
    fhirCode: '111061',
  );

  /// value111062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111062 = ParticipationRoleType(
    fhirCode: '111062',
  );

  /// value111063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111063 = ParticipationRoleType(
    fhirCode: '111063',
  );

  /// value111064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111064 = ParticipationRoleType(
    fhirCode: '111064',
  );

  /// value111065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111065 = ParticipationRoleType(
    fhirCode: '111065',
  );

  /// value111066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111066 = ParticipationRoleType(
    fhirCode: '111066',
  );

  /// value111069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111069 = ParticipationRoleType(
    fhirCode: '111069',
  );

  /// value111071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111071 = ParticipationRoleType(
    fhirCode: '111071',
  );

  /// value111072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111072 = ParticipationRoleType(
    fhirCode: '111072',
  );

  /// value111081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111081 = ParticipationRoleType(
    fhirCode: '111081',
  );

  /// value111086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111086 = ParticipationRoleType(
    fhirCode: '111086',
  );

  /// value111087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111087 = ParticipationRoleType(
    fhirCode: '111087',
  );

  /// value111088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111088 = ParticipationRoleType(
    fhirCode: '111088',
  );

  /// value111089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111089 = ParticipationRoleType(
    fhirCode: '111089',
  );

  /// value111090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111090 = ParticipationRoleType(
    fhirCode: '111090',
  );

  /// value111091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111091 = ParticipationRoleType(
    fhirCode: '111091',
  );

  /// value111092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111092 = ParticipationRoleType(
    fhirCode: '111092',
  );

  /// value111093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111093 = ParticipationRoleType(
    fhirCode: '111093',
  );

  /// value111099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111099 = ParticipationRoleType(
    fhirCode: '111099',
  );

  /// value111100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111100 = ParticipationRoleType(
    fhirCode: '111100',
  );

  /// value111101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111101 = ParticipationRoleType(
    fhirCode: '111101',
  );

  /// value111102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111102 = ParticipationRoleType(
    fhirCode: '111102',
  );

  /// value111103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111103 = ParticipationRoleType(
    fhirCode: '111103',
  );

  /// value111104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111104 = ParticipationRoleType(
    fhirCode: '111104',
  );

  /// value111105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111105 = ParticipationRoleType(
    fhirCode: '111105',
  );

  /// value111111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111111 = ParticipationRoleType(
    fhirCode: '111111',
  );

  /// value111112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111112 = ParticipationRoleType(
    fhirCode: '111112',
  );

  /// value111113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111113 = ParticipationRoleType(
    fhirCode: '111113',
  );

  /// value111120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111120 = ParticipationRoleType(
    fhirCode: '111120',
  );

  /// value111121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111121 = ParticipationRoleType(
    fhirCode: '111121',
  );

  /// value111122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111122 = ParticipationRoleType(
    fhirCode: '111122',
  );

  /// value111123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111123 = ParticipationRoleType(
    fhirCode: '111123',
  );

  /// value111124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111124 = ParticipationRoleType(
    fhirCode: '111124',
  );

  /// value111125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111125 = ParticipationRoleType(
    fhirCode: '111125',
  );

  /// value111126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111126 = ParticipationRoleType(
    fhirCode: '111126',
  );

  /// value111127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111127 = ParticipationRoleType(
    fhirCode: '111127',
  );

  /// value111128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111128 = ParticipationRoleType(
    fhirCode: '111128',
  );

  /// value111129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111129 = ParticipationRoleType(
    fhirCode: '111129',
  );

  /// value111130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111130 = ParticipationRoleType(
    fhirCode: '111130',
  );

  /// value111135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111135 = ParticipationRoleType(
    fhirCode: '111135',
  );

  /// value111136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111136 = ParticipationRoleType(
    fhirCode: '111136',
  );

  /// value111137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111137 = ParticipationRoleType(
    fhirCode: '111137',
  );

  /// value111138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111138 = ParticipationRoleType(
    fhirCode: '111138',
  );

  /// value111139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111139 = ParticipationRoleType(
    fhirCode: '111139',
  );

  /// value111140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111140 = ParticipationRoleType(
    fhirCode: '111140',
  );

  /// value111141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111141 = ParticipationRoleType(
    fhirCode: '111141',
  );

  /// value111142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111142 = ParticipationRoleType(
    fhirCode: '111142',
  );

  /// value111143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111143 = ParticipationRoleType(
    fhirCode: '111143',
  );

  /// value111144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111144 = ParticipationRoleType(
    fhirCode: '111144',
  );

  /// value111145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111145 = ParticipationRoleType(
    fhirCode: '111145',
  );

  /// value111146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111146 = ParticipationRoleType(
    fhirCode: '111146',
  );

  /// value111147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111147 = ParticipationRoleType(
    fhirCode: '111147',
  );

  /// value111148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111148 = ParticipationRoleType(
    fhirCode: '111148',
  );

  /// value111149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111149 = ParticipationRoleType(
    fhirCode: '111149',
  );

  /// value111150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111150 = ParticipationRoleType(
    fhirCode: '111150',
  );

  /// value111151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111151 = ParticipationRoleType(
    fhirCode: '111151',
  );

  /// value111152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111152 = ParticipationRoleType(
    fhirCode: '111152',
  );

  /// value111153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111153 = ParticipationRoleType(
    fhirCode: '111153',
  );

  /// value111154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111154 = ParticipationRoleType(
    fhirCode: '111154',
  );

  /// value111155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111155 = ParticipationRoleType(
    fhirCode: '111155',
  );

  /// value111156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111156 = ParticipationRoleType(
    fhirCode: '111156',
  );

  /// value111157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111157 = ParticipationRoleType(
    fhirCode: '111157',
  );

  /// value111158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111158 = ParticipationRoleType(
    fhirCode: '111158',
  );

  /// value111159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111159 = ParticipationRoleType(
    fhirCode: '111159',
  );

  /// value111168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111168 = ParticipationRoleType(
    fhirCode: '111168',
  );

  /// value111170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111170 = ParticipationRoleType(
    fhirCode: '111170',
  );

  /// value111171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111171 = ParticipationRoleType(
    fhirCode: '111171',
  );

  /// value111172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111172 = ParticipationRoleType(
    fhirCode: '111172',
  );

  /// value111173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111173 = ParticipationRoleType(
    fhirCode: '111173',
  );

  /// value111174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111174 = ParticipationRoleType(
    fhirCode: '111174',
  );

  /// value111175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111175 = ParticipationRoleType(
    fhirCode: '111175',
  );

  /// value111176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111176 = ParticipationRoleType(
    fhirCode: '111176',
  );

  /// value111177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111177 = ParticipationRoleType(
    fhirCode: '111177',
  );

  /// value111178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111178 = ParticipationRoleType(
    fhirCode: '111178',
  );

  /// value111179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111179 = ParticipationRoleType(
    fhirCode: '111179',
  );

  /// value111180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111180 = ParticipationRoleType(
    fhirCode: '111180',
  );

  /// value111181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111181 = ParticipationRoleType(
    fhirCode: '111181',
  );

  /// value111182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111182 = ParticipationRoleType(
    fhirCode: '111182',
  );

  /// value111183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111183 = ParticipationRoleType(
    fhirCode: '111183',
  );

  /// value111184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111184 = ParticipationRoleType(
    fhirCode: '111184',
  );

  /// value111185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111185 = ParticipationRoleType(
    fhirCode: '111185',
  );

  /// value111186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111186 = ParticipationRoleType(
    fhirCode: '111186',
  );

  /// value111187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111187 = ParticipationRoleType(
    fhirCode: '111187',
  );

  /// value111188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111188 = ParticipationRoleType(
    fhirCode: '111188',
  );

  /// value111189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111189 = ParticipationRoleType(
    fhirCode: '111189',
  );

  /// value111190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111190 = ParticipationRoleType(
    fhirCode: '111190',
  );

  /// value111191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111191 = ParticipationRoleType(
    fhirCode: '111191',
  );

  /// value111192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111192 = ParticipationRoleType(
    fhirCode: '111192',
  );

  /// value111193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111193 = ParticipationRoleType(
    fhirCode: '111193',
  );

  /// value111194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111194 = ParticipationRoleType(
    fhirCode: '111194',
  );

  /// value111195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111195 = ParticipationRoleType(
    fhirCode: '111195',
  );

  /// value111196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111196 = ParticipationRoleType(
    fhirCode: '111196',
  );

  /// value111197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111197 = ParticipationRoleType(
    fhirCode: '111197',
  );

  /// value111198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111198 = ParticipationRoleType(
    fhirCode: '111198',
  );

  /// value111199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111199 = ParticipationRoleType(
    fhirCode: '111199',
  );

  /// value111200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111200 = ParticipationRoleType(
    fhirCode: '111200',
  );

  /// value111201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111201 = ParticipationRoleType(
    fhirCode: '111201',
  );

  /// value111202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111202 = ParticipationRoleType(
    fhirCode: '111202',
  );

  /// value111203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111203 = ParticipationRoleType(
    fhirCode: '111203',
  );

  /// value111204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111204 = ParticipationRoleType(
    fhirCode: '111204',
  );

  /// value111205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111205 = ParticipationRoleType(
    fhirCode: '111205',
  );

  /// value111206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111206 = ParticipationRoleType(
    fhirCode: '111206',
  );

  /// value111207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111207 = ParticipationRoleType(
    fhirCode: '111207',
  );

  /// value111208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111208 = ParticipationRoleType(
    fhirCode: '111208',
  );

  /// value111209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111209 = ParticipationRoleType(
    fhirCode: '111209',
  );

  /// value111210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111210 = ParticipationRoleType(
    fhirCode: '111210',
  );

  /// value111211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111211 = ParticipationRoleType(
    fhirCode: '111211',
  );

  /// value111212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111212 = ParticipationRoleType(
    fhirCode: '111212',
  );

  /// value111213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111213 = ParticipationRoleType(
    fhirCode: '111213',
  );

  /// value111214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111214 = ParticipationRoleType(
    fhirCode: '111214',
  );

  /// value111215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111215 = ParticipationRoleType(
    fhirCode: '111215',
  );

  /// value111216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111216 = ParticipationRoleType(
    fhirCode: '111216',
  );

  /// value111217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111217 = ParticipationRoleType(
    fhirCode: '111217',
  );

  /// value111218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111218 = ParticipationRoleType(
    fhirCode: '111218',
  );

  /// value111219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111219 = ParticipationRoleType(
    fhirCode: '111219',
  );

  /// value111220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111220 = ParticipationRoleType(
    fhirCode: '111220',
  );

  /// value111221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111221 = ParticipationRoleType(
    fhirCode: '111221',
  );

  /// value111222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111222 = ParticipationRoleType(
    fhirCode: '111222',
  );

  /// value111223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111223 = ParticipationRoleType(
    fhirCode: '111223',
  );

  /// value111224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111224 = ParticipationRoleType(
    fhirCode: '111224',
  );

  /// value111225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111225 = ParticipationRoleType(
    fhirCode: '111225',
  );

  /// value111233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111233 = ParticipationRoleType(
    fhirCode: '111233',
  );

  /// value111234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111234 = ParticipationRoleType(
    fhirCode: '111234',
  );

  /// value111235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111235 = ParticipationRoleType(
    fhirCode: '111235',
  );

  /// value111236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111236 = ParticipationRoleType(
    fhirCode: '111236',
  );

  /// value111237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111237 = ParticipationRoleType(
    fhirCode: '111237',
  );

  /// value111238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111238 = ParticipationRoleType(
    fhirCode: '111238',
  );

  /// value111239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111239 = ParticipationRoleType(
    fhirCode: '111239',
  );

  /// value111240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111240 = ParticipationRoleType(
    fhirCode: '111240',
  );

  /// value111241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111241 = ParticipationRoleType(
    fhirCode: '111241',
  );

  /// value111242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111242 = ParticipationRoleType(
    fhirCode: '111242',
  );

  /// value111243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111243 = ParticipationRoleType(
    fhirCode: '111243',
  );

  /// value111244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111244 = ParticipationRoleType(
    fhirCode: '111244',
  );

  /// value111245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111245 = ParticipationRoleType(
    fhirCode: '111245',
  );

  /// value111248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111248 = ParticipationRoleType(
    fhirCode: '111248',
  );

  /// value111249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111249 = ParticipationRoleType(
    fhirCode: '111249',
  );

  /// value111250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111250 = ParticipationRoleType(
    fhirCode: '111250',
  );

  /// value111251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111251 = ParticipationRoleType(
    fhirCode: '111251',
  );

  /// value111252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111252 = ParticipationRoleType(
    fhirCode: '111252',
  );

  /// value111253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111253 = ParticipationRoleType(
    fhirCode: '111253',
  );

  /// value111254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111254 = ParticipationRoleType(
    fhirCode: '111254',
  );

  /// value111255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111255 = ParticipationRoleType(
    fhirCode: '111255',
  );

  /// value111256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111256 = ParticipationRoleType(
    fhirCode: '111256',
  );

  /// value111257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111257 = ParticipationRoleType(
    fhirCode: '111257',
  );

  /// value111258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111258 = ParticipationRoleType(
    fhirCode: '111258',
  );

  /// value111259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111259 = ParticipationRoleType(
    fhirCode: '111259',
  );

  /// value111260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111260 = ParticipationRoleType(
    fhirCode: '111260',
  );

  /// value111262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111262 = ParticipationRoleType(
    fhirCode: '111262',
  );

  /// value111263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111263 = ParticipationRoleType(
    fhirCode: '111263',
  );

  /// value111264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111264 = ParticipationRoleType(
    fhirCode: '111264',
  );

  /// value111265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111265 = ParticipationRoleType(
    fhirCode: '111265',
  );

  /// value111269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111269 = ParticipationRoleType(
    fhirCode: '111269',
  );

  /// value111271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111271 = ParticipationRoleType(
    fhirCode: '111271',
  );

  /// value111273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111273 = ParticipationRoleType(
    fhirCode: '111273',
  );

  /// value111277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111277 = ParticipationRoleType(
    fhirCode: '111277',
  );

  /// value111278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111278 = ParticipationRoleType(
    fhirCode: '111278',
  );

  /// value111279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111279 = ParticipationRoleType(
    fhirCode: '111279',
  );

  /// value111281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111281 = ParticipationRoleType(
    fhirCode: '111281',
  );

  /// value111283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111283 = ParticipationRoleType(
    fhirCode: '111283',
  );

  /// value111284
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111284 = ParticipationRoleType(
    fhirCode: '111284',
  );

  /// value111285
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111285 = ParticipationRoleType(
    fhirCode: '111285',
  );

  /// value111286
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111286 = ParticipationRoleType(
    fhirCode: '111286',
  );

  /// value111287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111287 = ParticipationRoleType(
    fhirCode: '111287',
  );

  /// value111288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111288 = ParticipationRoleType(
    fhirCode: '111288',
  );

  /// value111290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111290 = ParticipationRoleType(
    fhirCode: '111290',
  );

  /// value111291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111291 = ParticipationRoleType(
    fhirCode: '111291',
  );

  /// value111292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111292 = ParticipationRoleType(
    fhirCode: '111292',
  );

  /// value111293
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111293 = ParticipationRoleType(
    fhirCode: '111293',
  );

  /// value111294
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111294 = ParticipationRoleType(
    fhirCode: '111294',
  );

  /// value111296
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111296 = ParticipationRoleType(
    fhirCode: '111296',
  );

  /// value111297
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111297 = ParticipationRoleType(
    fhirCode: '111297',
  );

  /// value111298
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111298 = ParticipationRoleType(
    fhirCode: '111298',
  );

  /// value111299
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111299 = ParticipationRoleType(
    fhirCode: '111299',
  );

  /// value111300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111300 = ParticipationRoleType(
    fhirCode: '111300',
  );

  /// value111301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111301 = ParticipationRoleType(
    fhirCode: '111301',
  );

  /// value111302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111302 = ParticipationRoleType(
    fhirCode: '111302',
  );

  /// value111303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111303 = ParticipationRoleType(
    fhirCode: '111303',
  );

  /// value111304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111304 = ParticipationRoleType(
    fhirCode: '111304',
  );

  /// value111305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111305 = ParticipationRoleType(
    fhirCode: '111305',
  );

  /// value111306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111306 = ParticipationRoleType(
    fhirCode: '111306',
  );

  /// value111307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111307 = ParticipationRoleType(
    fhirCode: '111307',
  );

  /// value111308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111308 = ParticipationRoleType(
    fhirCode: '111308',
  );

  /// value111309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111309 = ParticipationRoleType(
    fhirCode: '111309',
  );

  /// value111310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111310 = ParticipationRoleType(
    fhirCode: '111310',
  );

  /// value111311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111311 = ParticipationRoleType(
    fhirCode: '111311',
  );

  /// value111312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111312 = ParticipationRoleType(
    fhirCode: '111312',
  );

  /// value111313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111313 = ParticipationRoleType(
    fhirCode: '111313',
  );

  /// value111314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111314 = ParticipationRoleType(
    fhirCode: '111314',
  );

  /// value111315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111315 = ParticipationRoleType(
    fhirCode: '111315',
  );

  /// value111316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111316 = ParticipationRoleType(
    fhirCode: '111316',
  );

  /// value111317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111317 = ParticipationRoleType(
    fhirCode: '111317',
  );

  /// value111318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111318 = ParticipationRoleType(
    fhirCode: '111318',
  );

  /// value111320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111320 = ParticipationRoleType(
    fhirCode: '111320',
  );

  /// value111321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111321 = ParticipationRoleType(
    fhirCode: '111321',
  );

  /// value111322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111322 = ParticipationRoleType(
    fhirCode: '111322',
  );

  /// value111323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111323 = ParticipationRoleType(
    fhirCode: '111323',
  );

  /// value111324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111324 = ParticipationRoleType(
    fhirCode: '111324',
  );

  /// value111325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111325 = ParticipationRoleType(
    fhirCode: '111325',
  );

  /// value111326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111326 = ParticipationRoleType(
    fhirCode: '111326',
  );

  /// value111327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111327 = ParticipationRoleType(
    fhirCode: '111327',
  );

  /// value111328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111328 = ParticipationRoleType(
    fhirCode: '111328',
  );

  /// value111329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111329 = ParticipationRoleType(
    fhirCode: '111329',
  );

  /// value111330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111330 = ParticipationRoleType(
    fhirCode: '111330',
  );

  /// value111331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111331 = ParticipationRoleType(
    fhirCode: '111331',
  );

  /// value111332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111332 = ParticipationRoleType(
    fhirCode: '111332',
  );

  /// value111333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111333 = ParticipationRoleType(
    fhirCode: '111333',
  );

  /// value111334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111334 = ParticipationRoleType(
    fhirCode: '111334',
  );

  /// value111335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111335 = ParticipationRoleType(
    fhirCode: '111335',
  );

  /// value111336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111336 = ParticipationRoleType(
    fhirCode: '111336',
  );

  /// value111338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111338 = ParticipationRoleType(
    fhirCode: '111338',
  );

  /// value111340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111340 = ParticipationRoleType(
    fhirCode: '111340',
  );

  /// value111341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111341 = ParticipationRoleType(
    fhirCode: '111341',
  );

  /// value111342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111342 = ParticipationRoleType(
    fhirCode: '111342',
  );

  /// value111343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111343 = ParticipationRoleType(
    fhirCode: '111343',
  );

  /// value111344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111344 = ParticipationRoleType(
    fhirCode: '111344',
  );

  /// value111345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111345 = ParticipationRoleType(
    fhirCode: '111345',
  );

  /// value111346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111346 = ParticipationRoleType(
    fhirCode: '111346',
  );

  /// value111347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111347 = ParticipationRoleType(
    fhirCode: '111347',
  );

  /// value111350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111350 = ParticipationRoleType(
    fhirCode: '111350',
  );

  /// value111351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111351 = ParticipationRoleType(
    fhirCode: '111351',
  );

  /// value111352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111352 = ParticipationRoleType(
    fhirCode: '111352',
  );

  /// value111353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111353 = ParticipationRoleType(
    fhirCode: '111353',
  );

  /// value111354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111354 = ParticipationRoleType(
    fhirCode: '111354',
  );

  /// value111355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111355 = ParticipationRoleType(
    fhirCode: '111355',
  );

  /// value111356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111356 = ParticipationRoleType(
    fhirCode: '111356',
  );

  /// value111357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111357 = ParticipationRoleType(
    fhirCode: '111357',
  );

  /// value111358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111358 = ParticipationRoleType(
    fhirCode: '111358',
  );

  /// value111359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111359 = ParticipationRoleType(
    fhirCode: '111359',
  );

  /// value111360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111360 = ParticipationRoleType(
    fhirCode: '111360',
  );

  /// value111361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111361 = ParticipationRoleType(
    fhirCode: '111361',
  );

  /// value111362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111362 = ParticipationRoleType(
    fhirCode: '111362',
  );

  /// value111363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111363 = ParticipationRoleType(
    fhirCode: '111363',
  );

  /// value111364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111364 = ParticipationRoleType(
    fhirCode: '111364',
  );

  /// value111365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111365 = ParticipationRoleType(
    fhirCode: '111365',
  );

  /// value111366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111366 = ParticipationRoleType(
    fhirCode: '111366',
  );

  /// value111367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111367 = ParticipationRoleType(
    fhirCode: '111367',
  );

  /// value111368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111368 = ParticipationRoleType(
    fhirCode: '111368',
  );

  /// value111369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111369 = ParticipationRoleType(
    fhirCode: '111369',
  );

  /// value111370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111370 = ParticipationRoleType(
    fhirCode: '111370',
  );

  /// value111371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111371 = ParticipationRoleType(
    fhirCode: '111371',
  );

  /// value111372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111372 = ParticipationRoleType(
    fhirCode: '111372',
  );

  /// value111373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111373 = ParticipationRoleType(
    fhirCode: '111373',
  );

  /// value111374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111374 = ParticipationRoleType(
    fhirCode: '111374',
  );

  /// value111375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111375 = ParticipationRoleType(
    fhirCode: '111375',
  );

  /// value111376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111376 = ParticipationRoleType(
    fhirCode: '111376',
  );

  /// value111377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111377 = ParticipationRoleType(
    fhirCode: '111377',
  );

  /// value111380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111380 = ParticipationRoleType(
    fhirCode: '111380',
  );

  /// value111381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111381 = ParticipationRoleType(
    fhirCode: '111381',
  );

  /// value111382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111382 = ParticipationRoleType(
    fhirCode: '111382',
  );

  /// value111383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111383 = ParticipationRoleType(
    fhirCode: '111383',
  );

  /// value111384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111384 = ParticipationRoleType(
    fhirCode: '111384',
  );

  /// value111385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111385 = ParticipationRoleType(
    fhirCode: '111385',
  );

  /// value111386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111386 = ParticipationRoleType(
    fhirCode: '111386',
  );

  /// value111387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111387 = ParticipationRoleType(
    fhirCode: '111387',
  );

  /// value111388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111388 = ParticipationRoleType(
    fhirCode: '111388',
  );

  /// value111389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111389 = ParticipationRoleType(
    fhirCode: '111389',
  );

  /// value111390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111390 = ParticipationRoleType(
    fhirCode: '111390',
  );

  /// value111391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111391 = ParticipationRoleType(
    fhirCode: '111391',
  );

  /// value111392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111392 = ParticipationRoleType(
    fhirCode: '111392',
  );

  /// value111393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111393 = ParticipationRoleType(
    fhirCode: '111393',
  );

  /// value111394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111394 = ParticipationRoleType(
    fhirCode: '111394',
  );

  /// value111395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111395 = ParticipationRoleType(
    fhirCode: '111395',
  );

  /// value111396
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111396 = ParticipationRoleType(
    fhirCode: '111396',
  );

  /// value111397
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111397 = ParticipationRoleType(
    fhirCode: '111397',
  );

  /// value111398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111398 = ParticipationRoleType(
    fhirCode: '111398',
  );

  /// value111399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111399 = ParticipationRoleType(
    fhirCode: '111399',
  );

  /// value111400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111400 = ParticipationRoleType(
    fhirCode: '111400',
  );

  /// value111401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111401 = ParticipationRoleType(
    fhirCode: '111401',
  );

  /// value111402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111402 = ParticipationRoleType(
    fhirCode: '111402',
  );

  /// value111403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111403 = ParticipationRoleType(
    fhirCode: '111403',
  );

  /// value111404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111404 = ParticipationRoleType(
    fhirCode: '111404',
  );

  /// value111405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111405 = ParticipationRoleType(
    fhirCode: '111405',
  );

  /// value111406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111406 = ParticipationRoleType(
    fhirCode: '111406',
  );

  /// value111407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111407 = ParticipationRoleType(
    fhirCode: '111407',
  );

  /// value111408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111408 = ParticipationRoleType(
    fhirCode: '111408',
  );

  /// value111409
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111409 = ParticipationRoleType(
    fhirCode: '111409',
  );

  /// value111410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111410 = ParticipationRoleType(
    fhirCode: '111410',
  );

  /// value111411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111411 = ParticipationRoleType(
    fhirCode: '111411',
  );

  /// value111412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111412 = ParticipationRoleType(
    fhirCode: '111412',
  );

  /// value111413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111413 = ParticipationRoleType(
    fhirCode: '111413',
  );

  /// value111414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111414 = ParticipationRoleType(
    fhirCode: '111414',
  );

  /// value111415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111415 = ParticipationRoleType(
    fhirCode: '111415',
  );

  /// value111416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111416 = ParticipationRoleType(
    fhirCode: '111416',
  );

  /// value111417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111417 = ParticipationRoleType(
    fhirCode: '111417',
  );

  /// value111418
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111418 = ParticipationRoleType(
    fhirCode: '111418',
  );

  /// value111419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111419 = ParticipationRoleType(
    fhirCode: '111419',
  );

  /// value111420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111420 = ParticipationRoleType(
    fhirCode: '111420',
  );

  /// value111421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111421 = ParticipationRoleType(
    fhirCode: '111421',
  );

  /// value111423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111423 = ParticipationRoleType(
    fhirCode: '111423',
  );

  /// value111424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111424 = ParticipationRoleType(
    fhirCode: '111424',
  );

  /// value111425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111425 = ParticipationRoleType(
    fhirCode: '111425',
  );

  /// value111426
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111426 = ParticipationRoleType(
    fhirCode: '111426',
  );

  /// value111427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111427 = ParticipationRoleType(
    fhirCode: '111427',
  );

  /// value111428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111428 = ParticipationRoleType(
    fhirCode: '111428',
  );

  /// value111429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111429 = ParticipationRoleType(
    fhirCode: '111429',
  );

  /// value111430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111430 = ParticipationRoleType(
    fhirCode: '111430',
  );

  /// value111431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111431 = ParticipationRoleType(
    fhirCode: '111431',
  );

  /// value111432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111432 = ParticipationRoleType(
    fhirCode: '111432',
  );

  /// value111433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111433 = ParticipationRoleType(
    fhirCode: '111433',
  );

  /// value111434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111434 = ParticipationRoleType(
    fhirCode: '111434',
  );

  /// value111435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111435 = ParticipationRoleType(
    fhirCode: '111435',
  );

  /// value111436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111436 = ParticipationRoleType(
    fhirCode: '111436',
  );

  /// value111437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111437 = ParticipationRoleType(
    fhirCode: '111437',
  );

  /// value111438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111438 = ParticipationRoleType(
    fhirCode: '111438',
  );

  /// value111439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111439 = ParticipationRoleType(
    fhirCode: '111439',
  );

  /// value111440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111440 = ParticipationRoleType(
    fhirCode: '111440',
  );

  /// value111441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111441 = ParticipationRoleType(
    fhirCode: '111441',
  );

  /// value111442
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111442 = ParticipationRoleType(
    fhirCode: '111442',
  );

  /// value111443
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111443 = ParticipationRoleType(
    fhirCode: '111443',
  );

  /// value111444
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111444 = ParticipationRoleType(
    fhirCode: '111444',
  );

  /// value111445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111445 = ParticipationRoleType(
    fhirCode: '111445',
  );

  /// value111446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111446 = ParticipationRoleType(
    fhirCode: '111446',
  );

  /// value111447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111447 = ParticipationRoleType(
    fhirCode: '111447',
  );

  /// value111448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111448 = ParticipationRoleType(
    fhirCode: '111448',
  );

  /// value111449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111449 = ParticipationRoleType(
    fhirCode: '111449',
  );

  /// value111450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111450 = ParticipationRoleType(
    fhirCode: '111450',
  );

  /// value111451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111451 = ParticipationRoleType(
    fhirCode: '111451',
  );

  /// value111452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111452 = ParticipationRoleType(
    fhirCode: '111452',
  );

  /// value111453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111453 = ParticipationRoleType(
    fhirCode: '111453',
  );

  /// value111454
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111454 = ParticipationRoleType(
    fhirCode: '111454',
  );

  /// value111455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111455 = ParticipationRoleType(
    fhirCode: '111455',
  );

  /// value111456
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111456 = ParticipationRoleType(
    fhirCode: '111456',
  );

  /// value111457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111457 = ParticipationRoleType(
    fhirCode: '111457',
  );

  /// value111458
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111458 = ParticipationRoleType(
    fhirCode: '111458',
  );

  /// value111459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111459 = ParticipationRoleType(
    fhirCode: '111459',
  );

  /// value111460
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111460 = ParticipationRoleType(
    fhirCode: '111460',
  );

  /// value111461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111461 = ParticipationRoleType(
    fhirCode: '111461',
  );

  /// value111462
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111462 = ParticipationRoleType(
    fhirCode: '111462',
  );

  /// value111463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111463 = ParticipationRoleType(
    fhirCode: '111463',
  );

  /// value111464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111464 = ParticipationRoleType(
    fhirCode: '111464',
  );

  /// value111465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111465 = ParticipationRoleType(
    fhirCode: '111465',
  );

  /// value111466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111466 = ParticipationRoleType(
    fhirCode: '111466',
  );

  /// value111467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111467 = ParticipationRoleType(
    fhirCode: '111467',
  );

  /// value111468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111468 = ParticipationRoleType(
    fhirCode: '111468',
  );

  /// value111469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111469 = ParticipationRoleType(
    fhirCode: '111469',
  );

  /// value111470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111470 = ParticipationRoleType(
    fhirCode: '111470',
  );

  /// value111471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111471 = ParticipationRoleType(
    fhirCode: '111471',
  );

  /// value111472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111472 = ParticipationRoleType(
    fhirCode: '111472',
  );

  /// value111473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111473 = ParticipationRoleType(
    fhirCode: '111473',
  );

  /// value111474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111474 = ParticipationRoleType(
    fhirCode: '111474',
  );

  /// value111475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111475 = ParticipationRoleType(
    fhirCode: '111475',
  );

  /// value111476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111476 = ParticipationRoleType(
    fhirCode: '111476',
  );

  /// value111477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111477 = ParticipationRoleType(
    fhirCode: '111477',
  );

  /// value111478
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111478 = ParticipationRoleType(
    fhirCode: '111478',
  );

  /// value111479
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111479 = ParticipationRoleType(
    fhirCode: '111479',
  );

  /// value111480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111480 = ParticipationRoleType(
    fhirCode: '111480',
  );

  /// value111481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111481 = ParticipationRoleType(
    fhirCode: '111481',
  );

  /// value111482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111482 = ParticipationRoleType(
    fhirCode: '111482',
  );

  /// value111483
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111483 = ParticipationRoleType(
    fhirCode: '111483',
  );

  /// value111484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111484 = ParticipationRoleType(
    fhirCode: '111484',
  );

  /// value111485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111485 = ParticipationRoleType(
    fhirCode: '111485',
  );

  /// value111486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111486 = ParticipationRoleType(
    fhirCode: '111486',
  );

  /// value111487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111487 = ParticipationRoleType(
    fhirCode: '111487',
  );

  /// value111488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111488 = ParticipationRoleType(
    fhirCode: '111488',
  );

  /// value111489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111489 = ParticipationRoleType(
    fhirCode: '111489',
  );

  /// value111490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111490 = ParticipationRoleType(
    fhirCode: '111490',
  );

  /// value111491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111491 = ParticipationRoleType(
    fhirCode: '111491',
  );

  /// value111492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111492 = ParticipationRoleType(
    fhirCode: '111492',
  );

  /// value111494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111494 = ParticipationRoleType(
    fhirCode: '111494',
  );

  /// value111495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111495 = ParticipationRoleType(
    fhirCode: '111495',
  );

  /// value111496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111496 = ParticipationRoleType(
    fhirCode: '111496',
  );

  /// value111497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111497 = ParticipationRoleType(
    fhirCode: '111497',
  );

  /// value111498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111498 = ParticipationRoleType(
    fhirCode: '111498',
  );

  /// value111499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111499 = ParticipationRoleType(
    fhirCode: '111499',
  );

  /// value111500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111500 = ParticipationRoleType(
    fhirCode: '111500',
  );

  /// value111501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111501 = ParticipationRoleType(
    fhirCode: '111501',
  );

  /// value111502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111502 = ParticipationRoleType(
    fhirCode: '111502',
  );

  /// value111503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111503 = ParticipationRoleType(
    fhirCode: '111503',
  );

  /// value111504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111504 = ParticipationRoleType(
    fhirCode: '111504',
  );

  /// value111505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111505 = ParticipationRoleType(
    fhirCode: '111505',
  );

  /// value111506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111506 = ParticipationRoleType(
    fhirCode: '111506',
  );

  /// value111507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111507 = ParticipationRoleType(
    fhirCode: '111507',
  );

  /// value111508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111508 = ParticipationRoleType(
    fhirCode: '111508',
  );

  /// value111509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111509 = ParticipationRoleType(
    fhirCode: '111509',
  );

  /// value111510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111510 = ParticipationRoleType(
    fhirCode: '111510',
  );

  /// value111511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111511 = ParticipationRoleType(
    fhirCode: '111511',
  );

  /// value111512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111512 = ParticipationRoleType(
    fhirCode: '111512',
  );

  /// value111513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111513 = ParticipationRoleType(
    fhirCode: '111513',
  );

  /// value111514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111514 = ParticipationRoleType(
    fhirCode: '111514',
  );

  /// value111515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111515 = ParticipationRoleType(
    fhirCode: '111515',
  );

  /// value111516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111516 = ParticipationRoleType(
    fhirCode: '111516',
  );

  /// value111517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111517 = ParticipationRoleType(
    fhirCode: '111517',
  );

  /// value111518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111518 = ParticipationRoleType(
    fhirCode: '111518',
  );

  /// value111519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111519 = ParticipationRoleType(
    fhirCode: '111519',
  );

  /// value111520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111520 = ParticipationRoleType(
    fhirCode: '111520',
  );

  /// value111521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111521 = ParticipationRoleType(
    fhirCode: '111521',
  );

  /// value111522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111522 = ParticipationRoleType(
    fhirCode: '111522',
  );

  /// value111523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111523 = ParticipationRoleType(
    fhirCode: '111523',
  );

  /// value111524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111524 = ParticipationRoleType(
    fhirCode: '111524',
  );

  /// value111525
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111525 = ParticipationRoleType(
    fhirCode: '111525',
  );

  /// value111526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111526 = ParticipationRoleType(
    fhirCode: '111526',
  );

  /// value111527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111527 = ParticipationRoleType(
    fhirCode: '111527',
  );

  /// value111528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111528 = ParticipationRoleType(
    fhirCode: '111528',
  );

  /// value111529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111529 = ParticipationRoleType(
    fhirCode: '111529',
  );

  /// value111530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111530 = ParticipationRoleType(
    fhirCode: '111530',
  );

  /// value111531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111531 = ParticipationRoleType(
    fhirCode: '111531',
  );

  /// value111532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111532 = ParticipationRoleType(
    fhirCode: '111532',
  );

  /// value111533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111533 = ParticipationRoleType(
    fhirCode: '111533',
  );

  /// value111534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111534 = ParticipationRoleType(
    fhirCode: '111534',
  );

  /// value111535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111535 = ParticipationRoleType(
    fhirCode: '111535',
  );

  /// value111536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111536 = ParticipationRoleType(
    fhirCode: '111536',
  );

  /// value111537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111537 = ParticipationRoleType(
    fhirCode: '111537',
  );

  /// value111538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111538 = ParticipationRoleType(
    fhirCode: '111538',
  );

  /// value111539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111539 = ParticipationRoleType(
    fhirCode: '111539',
  );

  /// value111540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111540 = ParticipationRoleType(
    fhirCode: '111540',
  );

  /// value111541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111541 = ParticipationRoleType(
    fhirCode: '111541',
  );

  /// value111542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111542 = ParticipationRoleType(
    fhirCode: '111542',
  );

  /// value111543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111543 = ParticipationRoleType(
    fhirCode: '111543',
  );

  /// value111544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111544 = ParticipationRoleType(
    fhirCode: '111544',
  );

  /// value111545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111545 = ParticipationRoleType(
    fhirCode: '111545',
  );

  /// value111546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111546 = ParticipationRoleType(
    fhirCode: '111546',
  );

  /// value111547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111547 = ParticipationRoleType(
    fhirCode: '111547',
  );

  /// value111548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111548 = ParticipationRoleType(
    fhirCode: '111548',
  );

  /// value111549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111549 = ParticipationRoleType(
    fhirCode: '111549',
  );

  /// value111550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111550 = ParticipationRoleType(
    fhirCode: '111550',
  );

  /// value111551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111551 = ParticipationRoleType(
    fhirCode: '111551',
  );

  /// value111552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111552 = ParticipationRoleType(
    fhirCode: '111552',
  );

  /// value111553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111553 = ParticipationRoleType(
    fhirCode: '111553',
  );

  /// value111554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111554 = ParticipationRoleType(
    fhirCode: '111554',
  );

  /// value111555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111555 = ParticipationRoleType(
    fhirCode: '111555',
  );

  /// value111556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111556 = ParticipationRoleType(
    fhirCode: '111556',
  );

  /// value111557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111557 = ParticipationRoleType(
    fhirCode: '111557',
  );

  /// value111558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111558 = ParticipationRoleType(
    fhirCode: '111558',
  );

  /// value111559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111559 = ParticipationRoleType(
    fhirCode: '111559',
  );

  /// value111560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111560 = ParticipationRoleType(
    fhirCode: '111560',
  );

  /// value111561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111561 = ParticipationRoleType(
    fhirCode: '111561',
  );

  /// value111562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111562 = ParticipationRoleType(
    fhirCode: '111562',
  );

  /// value111563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111563 = ParticipationRoleType(
    fhirCode: '111563',
  );

  /// value111564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111564 = ParticipationRoleType(
    fhirCode: '111564',
  );

  /// value111565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111565 = ParticipationRoleType(
    fhirCode: '111565',
  );

  /// value111566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111566 = ParticipationRoleType(
    fhirCode: '111566',
  );

  /// value111567
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111567 = ParticipationRoleType(
    fhirCode: '111567',
  );

  /// value111568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111568 = ParticipationRoleType(
    fhirCode: '111568',
  );

  /// value111569
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111569 = ParticipationRoleType(
    fhirCode: '111569',
  );

  /// value111570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111570 = ParticipationRoleType(
    fhirCode: '111570',
  );

  /// value111571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111571 = ParticipationRoleType(
    fhirCode: '111571',
  );

  /// value111572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111572 = ParticipationRoleType(
    fhirCode: '111572',
  );

  /// value111573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111573 = ParticipationRoleType(
    fhirCode: '111573',
  );

  /// value111574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111574 = ParticipationRoleType(
    fhirCode: '111574',
  );

  /// value111575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111575 = ParticipationRoleType(
    fhirCode: '111575',
  );

  /// value111576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111576 = ParticipationRoleType(
    fhirCode: '111576',
  );

  /// value111577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111577 = ParticipationRoleType(
    fhirCode: '111577',
  );

  /// value111578
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111578 = ParticipationRoleType(
    fhirCode: '111578',
  );

  /// value111579
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111579 = ParticipationRoleType(
    fhirCode: '111579',
  );

  /// value111580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111580 = ParticipationRoleType(
    fhirCode: '111580',
  );

  /// value111581
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111581 = ParticipationRoleType(
    fhirCode: '111581',
  );

  /// value111582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111582 = ParticipationRoleType(
    fhirCode: '111582',
  );

  /// value111583
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111583 = ParticipationRoleType(
    fhirCode: '111583',
  );

  /// value111584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111584 = ParticipationRoleType(
    fhirCode: '111584',
  );

  /// value111585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111585 = ParticipationRoleType(
    fhirCode: '111585',
  );

  /// value111586
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111586 = ParticipationRoleType(
    fhirCode: '111586',
  );

  /// value111587
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111587 = ParticipationRoleType(
    fhirCode: '111587',
  );

  /// value111590
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111590 = ParticipationRoleType(
    fhirCode: '111590',
  );

  /// value111591
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111591 = ParticipationRoleType(
    fhirCode: '111591',
  );

  /// value111592
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111592 = ParticipationRoleType(
    fhirCode: '111592',
  );

  /// value111593
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111593 = ParticipationRoleType(
    fhirCode: '111593',
  );

  /// value111601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111601 = ParticipationRoleType(
    fhirCode: '111601',
  );

  /// value111602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111602 = ParticipationRoleType(
    fhirCode: '111602',
  );

  /// value111603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111603 = ParticipationRoleType(
    fhirCode: '111603',
  );

  /// value111604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111604 = ParticipationRoleType(
    fhirCode: '111604',
  );

  /// value111605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111605 = ParticipationRoleType(
    fhirCode: '111605',
  );

  /// value111606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111606 = ParticipationRoleType(
    fhirCode: '111606',
  );

  /// value111607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111607 = ParticipationRoleType(
    fhirCode: '111607',
  );

  /// value111609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111609 = ParticipationRoleType(
    fhirCode: '111609',
  );

  /// value111621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111621 = ParticipationRoleType(
    fhirCode: '111621',
  );

  /// value111622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111622 = ParticipationRoleType(
    fhirCode: '111622',
  );

  /// value111623
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111623 = ParticipationRoleType(
    fhirCode: '111623',
  );

  /// value111625
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111625 = ParticipationRoleType(
    fhirCode: '111625',
  );

  /// value111626
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111626 = ParticipationRoleType(
    fhirCode: '111626',
  );

  /// value111627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111627 = ParticipationRoleType(
    fhirCode: '111627',
  );

  /// value111628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111628 = ParticipationRoleType(
    fhirCode: '111628',
  );

  /// value111629
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111629 = ParticipationRoleType(
    fhirCode: '111629',
  );

  /// value111630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111630 = ParticipationRoleType(
    fhirCode: '111630',
  );

  /// value111631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111631 = ParticipationRoleType(
    fhirCode: '111631',
  );

  /// value111632
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111632 = ParticipationRoleType(
    fhirCode: '111632',
  );

  /// value111633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111633 = ParticipationRoleType(
    fhirCode: '111633',
  );

  /// value111634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111634 = ParticipationRoleType(
    fhirCode: '111634',
  );

  /// value111635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111635 = ParticipationRoleType(
    fhirCode: '111635',
  );

  /// value111636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111636 = ParticipationRoleType(
    fhirCode: '111636',
  );

  /// value111637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111637 = ParticipationRoleType(
    fhirCode: '111637',
  );

  /// value111638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111638 = ParticipationRoleType(
    fhirCode: '111638',
  );

  /// value111641
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111641 = ParticipationRoleType(
    fhirCode: '111641',
  );

  /// value111642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111642 = ParticipationRoleType(
    fhirCode: '111642',
  );

  /// value111643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111643 = ParticipationRoleType(
    fhirCode: '111643',
  );

  /// value111644
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111644 = ParticipationRoleType(
    fhirCode: '111644',
  );

  /// value111645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111645 = ParticipationRoleType(
    fhirCode: '111645',
  );

  /// value111646
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111646 = ParticipationRoleType(
    fhirCode: '111646',
  );

  /// value111671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111671 = ParticipationRoleType(
    fhirCode: '111671',
  );

  /// value111672
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111672 = ParticipationRoleType(
    fhirCode: '111672',
  );

  /// value111673
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111673 = ParticipationRoleType(
    fhirCode: '111673',
  );

  /// value111674
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111674 = ParticipationRoleType(
    fhirCode: '111674',
  );

  /// value111675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111675 = ParticipationRoleType(
    fhirCode: '111675',
  );

  /// value111676
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111676 = ParticipationRoleType(
    fhirCode: '111676',
  );

  /// value111677
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111677 = ParticipationRoleType(
    fhirCode: '111677',
  );

  /// value111678
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111678 = ParticipationRoleType(
    fhirCode: '111678',
  );

  /// value111679
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111679 = ParticipationRoleType(
    fhirCode: '111679',
  );

  /// value111680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111680 = ParticipationRoleType(
    fhirCode: '111680',
  );

  /// value111685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111685 = ParticipationRoleType(
    fhirCode: '111685',
  );

  /// value111686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111686 = ParticipationRoleType(
    fhirCode: '111686',
  );

  /// value111687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111687 = ParticipationRoleType(
    fhirCode: '111687',
  );

  /// value111688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111688 = ParticipationRoleType(
    fhirCode: '111688',
  );

  /// value111689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111689 = ParticipationRoleType(
    fhirCode: '111689',
  );

  /// value111690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111690 = ParticipationRoleType(
    fhirCode: '111690',
  );

  /// value111691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111691 = ParticipationRoleType(
    fhirCode: '111691',
  );

  /// value111692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111692 = ParticipationRoleType(
    fhirCode: '111692',
  );

  /// value111693
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111693 = ParticipationRoleType(
    fhirCode: '111693',
  );

  /// value111694
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111694 = ParticipationRoleType(
    fhirCode: '111694',
  );

  /// value111695
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111695 = ParticipationRoleType(
    fhirCode: '111695',
  );

  /// value111696
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111696 = ParticipationRoleType(
    fhirCode: '111696',
  );

  /// value111697
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111697 = ParticipationRoleType(
    fhirCode: '111697',
  );

  /// value111698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111698 = ParticipationRoleType(
    fhirCode: '111698',
  );

  /// value111700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111700 = ParticipationRoleType(
    fhirCode: '111700',
  );

  /// value111701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111701 = ParticipationRoleType(
    fhirCode: '111701',
  );

  /// value111702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111702 = ParticipationRoleType(
    fhirCode: '111702',
  );

  /// value111703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111703 = ParticipationRoleType(
    fhirCode: '111703',
  );

  /// value111704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111704 = ParticipationRoleType(
    fhirCode: '111704',
  );

  /// value111705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111705 = ParticipationRoleType(
    fhirCode: '111705',
  );

  /// value111706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111706 = ParticipationRoleType(
    fhirCode: '111706',
  );

  /// value111707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111707 = ParticipationRoleType(
    fhirCode: '111707',
  );

  /// value111708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111708 = ParticipationRoleType(
    fhirCode: '111708',
  );

  /// value111709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111709 = ParticipationRoleType(
    fhirCode: '111709',
  );

  /// value111710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111710 = ParticipationRoleType(
    fhirCode: '111710',
  );

  /// value111711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111711 = ParticipationRoleType(
    fhirCode: '111711',
  );

  /// value111712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111712 = ParticipationRoleType(
    fhirCode: '111712',
  );

  /// value111718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111718 = ParticipationRoleType(
    fhirCode: '111718',
  );

  /// value111719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111719 = ParticipationRoleType(
    fhirCode: '111719',
  );

  /// value111720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111720 = ParticipationRoleType(
    fhirCode: '111720',
  );

  /// value111721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111721 = ParticipationRoleType(
    fhirCode: '111721',
  );

  /// value111723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111723 = ParticipationRoleType(
    fhirCode: '111723',
  );

  /// value111724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111724 = ParticipationRoleType(
    fhirCode: '111724',
  );

  /// value111726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111726 = ParticipationRoleType(
    fhirCode: '111726',
  );

  /// value111727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111727 = ParticipationRoleType(
    fhirCode: '111727',
  );

  /// value111729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111729 = ParticipationRoleType(
    fhirCode: '111729',
  );

  /// value111741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111741 = ParticipationRoleType(
    fhirCode: '111741',
  );

  /// value111742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111742 = ParticipationRoleType(
    fhirCode: '111742',
  );

  /// value111743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111743 = ParticipationRoleType(
    fhirCode: '111743',
  );

  /// value111744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111744 = ParticipationRoleType(
    fhirCode: '111744',
  );

  /// value111745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111745 = ParticipationRoleType(
    fhirCode: '111745',
  );

  /// value111746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111746 = ParticipationRoleType(
    fhirCode: '111746',
  );

  /// value111747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111747 = ParticipationRoleType(
    fhirCode: '111747',
  );

  /// value111748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111748 = ParticipationRoleType(
    fhirCode: '111748',
  );

  /// value111749
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111749 = ParticipationRoleType(
    fhirCode: '111749',
  );

  /// value111750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111750 = ParticipationRoleType(
    fhirCode: '111750',
  );

  /// value111751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111751 = ParticipationRoleType(
    fhirCode: '111751',
  );

  /// value111752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111752 = ParticipationRoleType(
    fhirCode: '111752',
  );

  /// value111753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111753 = ParticipationRoleType(
    fhirCode: '111753',
  );

  /// value111754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111754 = ParticipationRoleType(
    fhirCode: '111754',
  );

  /// value111755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111755 = ParticipationRoleType(
    fhirCode: '111755',
  );

  /// value111756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111756 = ParticipationRoleType(
    fhirCode: '111756',
  );

  /// value111760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111760 = ParticipationRoleType(
    fhirCode: '111760',
  );

  /// value111761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111761 = ParticipationRoleType(
    fhirCode: '111761',
  );

  /// value111762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111762 = ParticipationRoleType(
    fhirCode: '111762',
  );

  /// value111763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111763 = ParticipationRoleType(
    fhirCode: '111763',
  );

  /// value111764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111764 = ParticipationRoleType(
    fhirCode: '111764',
  );

  /// value111765
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111765 = ParticipationRoleType(
    fhirCode: '111765',
  );

  /// value111766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111766 = ParticipationRoleType(
    fhirCode: '111766',
  );

  /// value111767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111767 = ParticipationRoleType(
    fhirCode: '111767',
  );

  /// value111768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111768 = ParticipationRoleType(
    fhirCode: '111768',
  );

  /// value111769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111769 = ParticipationRoleType(
    fhirCode: '111769',
  );

  /// value111770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111770 = ParticipationRoleType(
    fhirCode: '111770',
  );

  /// value111771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111771 = ParticipationRoleType(
    fhirCode: '111771',
  );

  /// value111772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111772 = ParticipationRoleType(
    fhirCode: '111772',
  );

  /// value111773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111773 = ParticipationRoleType(
    fhirCode: '111773',
  );

  /// value111776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111776 = ParticipationRoleType(
    fhirCode: '111776',
  );

  /// value111777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111777 = ParticipationRoleType(
    fhirCode: '111777',
  );

  /// value111778
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111778 = ParticipationRoleType(
    fhirCode: '111778',
  );

  /// value111779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111779 = ParticipationRoleType(
    fhirCode: '111779',
  );

  /// value111780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111780 = ParticipationRoleType(
    fhirCode: '111780',
  );

  /// value111781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111781 = ParticipationRoleType(
    fhirCode: '111781',
  );

  /// value111782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111782 = ParticipationRoleType(
    fhirCode: '111782',
  );

  /// value111783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111783 = ParticipationRoleType(
    fhirCode: '111783',
  );

  /// value111786
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111786 = ParticipationRoleType(
    fhirCode: '111786',
  );

  /// value111787
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111787 = ParticipationRoleType(
    fhirCode: '111787',
  );

  /// value111791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111791 = ParticipationRoleType(
    fhirCode: '111791',
  );

  /// value111792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111792 = ParticipationRoleType(
    fhirCode: '111792',
  );

  /// value111800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111800 = ParticipationRoleType(
    fhirCode: '111800',
  );

  /// value111801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111801 = ParticipationRoleType(
    fhirCode: '111801',
  );

  /// value111802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111802 = ParticipationRoleType(
    fhirCode: '111802',
  );

  /// value111803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111803 = ParticipationRoleType(
    fhirCode: '111803',
  );

  /// value111804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111804 = ParticipationRoleType(
    fhirCode: '111804',
  );

  /// value111805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111805 = ParticipationRoleType(
    fhirCode: '111805',
  );

  /// value111806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111806 = ParticipationRoleType(
    fhirCode: '111806',
  );

  /// value111807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111807 = ParticipationRoleType(
    fhirCode: '111807',
  );

  /// value111808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111808 = ParticipationRoleType(
    fhirCode: '111808',
  );

  /// value111809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111809 = ParticipationRoleType(
    fhirCode: '111809',
  );

  /// value111810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111810 = ParticipationRoleType(
    fhirCode: '111810',
  );

  /// value111811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111811 = ParticipationRoleType(
    fhirCode: '111811',
  );

  /// value111812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111812 = ParticipationRoleType(
    fhirCode: '111812',
  );

  /// value111813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111813 = ParticipationRoleType(
    fhirCode: '111813',
  );

  /// value111814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111814 = ParticipationRoleType(
    fhirCode: '111814',
  );

  /// value111815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111815 = ParticipationRoleType(
    fhirCode: '111815',
  );

  /// value111816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111816 = ParticipationRoleType(
    fhirCode: '111816',
  );

  /// value111817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111817 = ParticipationRoleType(
    fhirCode: '111817',
  );

  /// value111818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111818 = ParticipationRoleType(
    fhirCode: '111818',
  );

  /// value111819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111819 = ParticipationRoleType(
    fhirCode: '111819',
  );

  /// value111820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111820 = ParticipationRoleType(
    fhirCode: '111820',
  );

  /// value111821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111821 = ParticipationRoleType(
    fhirCode: '111821',
  );

  /// value111822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111822 = ParticipationRoleType(
    fhirCode: '111822',
  );

  /// value111823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111823 = ParticipationRoleType(
    fhirCode: '111823',
  );

  /// value111824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111824 = ParticipationRoleType(
    fhirCode: '111824',
  );

  /// value111825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111825 = ParticipationRoleType(
    fhirCode: '111825',
  );

  /// value111826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111826 = ParticipationRoleType(
    fhirCode: '111826',
  );

  /// value111827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111827 = ParticipationRoleType(
    fhirCode: '111827',
  );

  /// value111828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111828 = ParticipationRoleType(
    fhirCode: '111828',
  );

  /// value111829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111829 = ParticipationRoleType(
    fhirCode: '111829',
  );

  /// value111830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111830 = ParticipationRoleType(
    fhirCode: '111830',
  );

  /// value111831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111831 = ParticipationRoleType(
    fhirCode: '111831',
  );

  /// value111832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111832 = ParticipationRoleType(
    fhirCode: '111832',
  );

  /// value111833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111833 = ParticipationRoleType(
    fhirCode: '111833',
  );

  /// value111834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111834 = ParticipationRoleType(
    fhirCode: '111834',
  );

  /// value111835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111835 = ParticipationRoleType(
    fhirCode: '111835',
  );

  /// value111836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111836 = ParticipationRoleType(
    fhirCode: '111836',
  );

  /// value111837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111837 = ParticipationRoleType(
    fhirCode: '111837',
  );

  /// value111838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111838 = ParticipationRoleType(
    fhirCode: '111838',
  );

  /// value111839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111839 = ParticipationRoleType(
    fhirCode: '111839',
  );

  /// value111840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111840 = ParticipationRoleType(
    fhirCode: '111840',
  );

  /// value111841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111841 = ParticipationRoleType(
    fhirCode: '111841',
  );

  /// value111842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111842 = ParticipationRoleType(
    fhirCode: '111842',
  );

  /// value111843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111843 = ParticipationRoleType(
    fhirCode: '111843',
  );

  /// value111844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111844 = ParticipationRoleType(
    fhirCode: '111844',
  );

  /// value111845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111845 = ParticipationRoleType(
    fhirCode: '111845',
  );

  /// value111846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111846 = ParticipationRoleType(
    fhirCode: '111846',
  );

  /// value111847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111847 = ParticipationRoleType(
    fhirCode: '111847',
  );

  /// value111848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111848 = ParticipationRoleType(
    fhirCode: '111848',
  );

  /// value111849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111849 = ParticipationRoleType(
    fhirCode: '111849',
  );

  /// value111850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111850 = ParticipationRoleType(
    fhirCode: '111850',
  );

  /// value111851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111851 = ParticipationRoleType(
    fhirCode: '111851',
  );

  /// value111852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111852 = ParticipationRoleType(
    fhirCode: '111852',
  );

  /// value111853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111853 = ParticipationRoleType(
    fhirCode: '111853',
  );

  /// value111854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111854 = ParticipationRoleType(
    fhirCode: '111854',
  );

  /// value111855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111855 = ParticipationRoleType(
    fhirCode: '111855',
  );

  /// value111856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111856 = ParticipationRoleType(
    fhirCode: '111856',
  );

  /// value111900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111900 = ParticipationRoleType(
    fhirCode: '111900',
  );

  /// value111901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111901 = ParticipationRoleType(
    fhirCode: '111901',
  );

  /// value111902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111902 = ParticipationRoleType(
    fhirCode: '111902',
  );

  /// value111903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111903 = ParticipationRoleType(
    fhirCode: '111903',
  );

  /// value111904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111904 = ParticipationRoleType(
    fhirCode: '111904',
  );

  /// value111905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111905 = ParticipationRoleType(
    fhirCode: '111905',
  );

  /// value111906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111906 = ParticipationRoleType(
    fhirCode: '111906',
  );

  /// value111907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111907 = ParticipationRoleType(
    fhirCode: '111907',
  );

  /// value111908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111908 = ParticipationRoleType(
    fhirCode: '111908',
  );

  /// value111909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111909 = ParticipationRoleType(
    fhirCode: '111909',
  );

  /// value111910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111910 = ParticipationRoleType(
    fhirCode: '111910',
  );

  /// value111911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111911 = ParticipationRoleType(
    fhirCode: '111911',
  );

  /// value111912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111912 = ParticipationRoleType(
    fhirCode: '111912',
  );

  /// value111913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111913 = ParticipationRoleType(
    fhirCode: '111913',
  );

  /// value111914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111914 = ParticipationRoleType(
    fhirCode: '111914',
  );

  /// value111915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111915 = ParticipationRoleType(
    fhirCode: '111915',
  );

  /// value111916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111916 = ParticipationRoleType(
    fhirCode: '111916',
  );

  /// value111917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111917 = ParticipationRoleType(
    fhirCode: '111917',
  );

  /// value111918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111918 = ParticipationRoleType(
    fhirCode: '111918',
  );

  /// value111919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111919 = ParticipationRoleType(
    fhirCode: '111919',
  );

  /// value111920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111920 = ParticipationRoleType(
    fhirCode: '111920',
  );

  /// value111921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111921 = ParticipationRoleType(
    fhirCode: '111921',
  );

  /// value111922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111922 = ParticipationRoleType(
    fhirCode: '111922',
  );

  /// value111923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111923 = ParticipationRoleType(
    fhirCode: '111923',
  );

  /// value111924
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111924 = ParticipationRoleType(
    fhirCode: '111924',
  );

  /// value111925
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111925 = ParticipationRoleType(
    fhirCode: '111925',
  );

  /// value111926
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111926 = ParticipationRoleType(
    fhirCode: '111926',
  );

  /// value111927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111927 = ParticipationRoleType(
    fhirCode: '111927',
  );

  /// value111928
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111928 = ParticipationRoleType(
    fhirCode: '111928',
  );

  /// value111929
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111929 = ParticipationRoleType(
    fhirCode: '111929',
  );

  /// value111930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111930 = ParticipationRoleType(
    fhirCode: '111930',
  );

  /// value111931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111931 = ParticipationRoleType(
    fhirCode: '111931',
  );

  /// value111932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111932 = ParticipationRoleType(
    fhirCode: '111932',
  );

  /// value111933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111933 = ParticipationRoleType(
    fhirCode: '111933',
  );

  /// value111934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111934 = ParticipationRoleType(
    fhirCode: '111934',
  );

  /// value111935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111935 = ParticipationRoleType(
    fhirCode: '111935',
  );

  /// value111936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111936 = ParticipationRoleType(
    fhirCode: '111936',
  );

  /// value111937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111937 = ParticipationRoleType(
    fhirCode: '111937',
  );

  /// value111938
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111938 = ParticipationRoleType(
    fhirCode: '111938',
  );

  /// value111939
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111939 = ParticipationRoleType(
    fhirCode: '111939',
  );

  /// value111940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111940 = ParticipationRoleType(
    fhirCode: '111940',
  );

  /// value111941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111941 = ParticipationRoleType(
    fhirCode: '111941',
  );

  /// value111942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111942 = ParticipationRoleType(
    fhirCode: '111942',
  );

  /// value111943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111943 = ParticipationRoleType(
    fhirCode: '111943',
  );

  /// value111944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111944 = ParticipationRoleType(
    fhirCode: '111944',
  );

  /// value111945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111945 = ParticipationRoleType(
    fhirCode: '111945',
  );

  /// value111946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111946 = ParticipationRoleType(
    fhirCode: '111946',
  );

  /// value111947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value111947 = ParticipationRoleType(
    fhirCode: '111947',
  );

  /// value112000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112000 = ParticipationRoleType(
    fhirCode: '112000',
  );

  /// value112001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112001 = ParticipationRoleType(
    fhirCode: '112001',
  );

  /// value112002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112002 = ParticipationRoleType(
    fhirCode: '112002',
  );

  /// value112003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112003 = ParticipationRoleType(
    fhirCode: '112003',
  );

  /// value112004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112004 = ParticipationRoleType(
    fhirCode: '112004',
  );

  /// value112005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112005 = ParticipationRoleType(
    fhirCode: '112005',
  );

  /// value112006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112006 = ParticipationRoleType(
    fhirCode: '112006',
  );

  /// value112007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112007 = ParticipationRoleType(
    fhirCode: '112007',
  );

  /// value112008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112008 = ParticipationRoleType(
    fhirCode: '112008',
  );

  /// value112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112009 = ParticipationRoleType(
    fhirCode: '112009',
  );

  /// value112010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112010 = ParticipationRoleType(
    fhirCode: '112010',
  );

  /// value112011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112011 = ParticipationRoleType(
    fhirCode: '112011',
  );

  /// value112012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112012 = ParticipationRoleType(
    fhirCode: '112012',
  );

  /// value112013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112013 = ParticipationRoleType(
    fhirCode: '112013',
  );

  /// value112014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112014 = ParticipationRoleType(
    fhirCode: '112014',
  );

  /// value112015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112015 = ParticipationRoleType(
    fhirCode: '112015',
  );

  /// value112016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112016 = ParticipationRoleType(
    fhirCode: '112016',
  );

  /// value112017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112017 = ParticipationRoleType(
    fhirCode: '112017',
  );

  /// value112018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112018 = ParticipationRoleType(
    fhirCode: '112018',
  );

  /// value112019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112019 = ParticipationRoleType(
    fhirCode: '112019',
  );

  /// value112020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112020 = ParticipationRoleType(
    fhirCode: '112020',
  );

  /// value112021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112021 = ParticipationRoleType(
    fhirCode: '112021',
  );

  /// value112022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112022 = ParticipationRoleType(
    fhirCode: '112022',
  );

  /// value112023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112023 = ParticipationRoleType(
    fhirCode: '112023',
  );

  /// value112024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112024 = ParticipationRoleType(
    fhirCode: '112024',
  );

  /// value112025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112025 = ParticipationRoleType(
    fhirCode: '112025',
  );

  /// value112026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112026 = ParticipationRoleType(
    fhirCode: '112026',
  );

  /// value112027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112027 = ParticipationRoleType(
    fhirCode: '112027',
  );

  /// value112028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112028 = ParticipationRoleType(
    fhirCode: '112028',
  );

  /// value112029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112029 = ParticipationRoleType(
    fhirCode: '112029',
  );

  /// value112030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112030 = ParticipationRoleType(
    fhirCode: '112030',
  );

  /// value112031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112031 = ParticipationRoleType(
    fhirCode: '112031',
  );

  /// value112032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112032 = ParticipationRoleType(
    fhirCode: '112032',
  );

  /// value112033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112033 = ParticipationRoleType(
    fhirCode: '112033',
  );

  /// value112034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112034 = ParticipationRoleType(
    fhirCode: '112034',
  );

  /// value112035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112035 = ParticipationRoleType(
    fhirCode: '112035',
  );

  /// value112036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112036 = ParticipationRoleType(
    fhirCode: '112036',
  );

  /// value112037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112037 = ParticipationRoleType(
    fhirCode: '112037',
  );

  /// value112038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112038 = ParticipationRoleType(
    fhirCode: '112038',
  );

  /// value112039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112039 = ParticipationRoleType(
    fhirCode: '112039',
  );

  /// value112040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112040 = ParticipationRoleType(
    fhirCode: '112040',
  );

  /// value112041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112041 = ParticipationRoleType(
    fhirCode: '112041',
  );

  /// value112042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112042 = ParticipationRoleType(
    fhirCode: '112042',
  );

  /// value112043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112043 = ParticipationRoleType(
    fhirCode: '112043',
  );

  /// value112044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112044 = ParticipationRoleType(
    fhirCode: '112044',
  );

  /// value112045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112045 = ParticipationRoleType(
    fhirCode: '112045',
  );

  /// value112046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112046 = ParticipationRoleType(
    fhirCode: '112046',
  );

  /// value112047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112047 = ParticipationRoleType(
    fhirCode: '112047',
  );

  /// value112048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112048 = ParticipationRoleType(
    fhirCode: '112048',
  );

  /// value112049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112049 = ParticipationRoleType(
    fhirCode: '112049',
  );

  /// value112050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112050 = ParticipationRoleType(
    fhirCode: '112050',
  );

  /// value112051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112051 = ParticipationRoleType(
    fhirCode: '112051',
  );

  /// value112052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112052 = ParticipationRoleType(
    fhirCode: '112052',
  );

  /// value112053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112053 = ParticipationRoleType(
    fhirCode: '112053',
  );

  /// value112054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112054 = ParticipationRoleType(
    fhirCode: '112054',
  );

  /// value112055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112055 = ParticipationRoleType(
    fhirCode: '112055',
  );

  /// value112056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112056 = ParticipationRoleType(
    fhirCode: '112056',
  );

  /// value112057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112057 = ParticipationRoleType(
    fhirCode: '112057',
  );

  /// value112058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112058 = ParticipationRoleType(
    fhirCode: '112058',
  );

  /// value112059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112059 = ParticipationRoleType(
    fhirCode: '112059',
  );

  /// value112060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112060 = ParticipationRoleType(
    fhirCode: '112060',
  );

  /// value112061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112061 = ParticipationRoleType(
    fhirCode: '112061',
  );

  /// value112062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112062 = ParticipationRoleType(
    fhirCode: '112062',
  );

  /// value112063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112063 = ParticipationRoleType(
    fhirCode: '112063',
  );

  /// value112064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112064 = ParticipationRoleType(
    fhirCode: '112064',
  );

  /// value112065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112065 = ParticipationRoleType(
    fhirCode: '112065',
  );

  /// value112066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112066 = ParticipationRoleType(
    fhirCode: '112066',
  );

  /// value112067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112067 = ParticipationRoleType(
    fhirCode: '112067',
  );

  /// value112068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112068 = ParticipationRoleType(
    fhirCode: '112068',
  );

  /// value112069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112069 = ParticipationRoleType(
    fhirCode: '112069',
  );

  /// value112070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112070 = ParticipationRoleType(
    fhirCode: '112070',
  );

  /// value112071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112071 = ParticipationRoleType(
    fhirCode: '112071',
  );

  /// value112072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112072 = ParticipationRoleType(
    fhirCode: '112072',
  );

  /// value112073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112073 = ParticipationRoleType(
    fhirCode: '112073',
  );

  /// value112074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112074 = ParticipationRoleType(
    fhirCode: '112074',
  );

  /// value112075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112075 = ParticipationRoleType(
    fhirCode: '112075',
  );

  /// value112076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112076 = ParticipationRoleType(
    fhirCode: '112076',
  );

  /// value112077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112077 = ParticipationRoleType(
    fhirCode: '112077',
  );

  /// value112078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112078 = ParticipationRoleType(
    fhirCode: '112078',
  );

  /// value112079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112079 = ParticipationRoleType(
    fhirCode: '112079',
  );

  /// value112080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112080 = ParticipationRoleType(
    fhirCode: '112080',
  );

  /// value112081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112081 = ParticipationRoleType(
    fhirCode: '112081',
  );

  /// value112082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112082 = ParticipationRoleType(
    fhirCode: '112082',
  );

  /// value112083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112083 = ParticipationRoleType(
    fhirCode: '112083',
  );

  /// value112084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112084 = ParticipationRoleType(
    fhirCode: '112084',
  );

  /// value112085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112085 = ParticipationRoleType(
    fhirCode: '112085',
  );

  /// value112086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112086 = ParticipationRoleType(
    fhirCode: '112086',
  );

  /// value112087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112087 = ParticipationRoleType(
    fhirCode: '112087',
  );

  /// value112088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112088 = ParticipationRoleType(
    fhirCode: '112088',
  );

  /// value112089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112089 = ParticipationRoleType(
    fhirCode: '112089',
  );

  /// value112090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112090 = ParticipationRoleType(
    fhirCode: '112090',
  );

  /// value112091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112091 = ParticipationRoleType(
    fhirCode: '112091',
  );

  /// value112092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112092 = ParticipationRoleType(
    fhirCode: '112092',
  );

  /// value112093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112093 = ParticipationRoleType(
    fhirCode: '112093',
  );

  /// value112094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112094 = ParticipationRoleType(
    fhirCode: '112094',
  );

  /// value112095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112095 = ParticipationRoleType(
    fhirCode: '112095',
  );

  /// value112096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112096 = ParticipationRoleType(
    fhirCode: '112096',
  );

  /// value112097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112097 = ParticipationRoleType(
    fhirCode: '112097',
  );

  /// value112098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112098 = ParticipationRoleType(
    fhirCode: '112098',
  );

  /// value112099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112099 = ParticipationRoleType(
    fhirCode: '112099',
  );

  /// value112100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112100 = ParticipationRoleType(
    fhirCode: '112100',
  );

  /// value112101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112101 = ParticipationRoleType(
    fhirCode: '112101',
  );

  /// value112102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112102 = ParticipationRoleType(
    fhirCode: '112102',
  );

  /// value112103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112103 = ParticipationRoleType(
    fhirCode: '112103',
  );

  /// value112104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112104 = ParticipationRoleType(
    fhirCode: '112104',
  );

  /// value112105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112105 = ParticipationRoleType(
    fhirCode: '112105',
  );

  /// value112106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112106 = ParticipationRoleType(
    fhirCode: '112106',
  );

  /// value112107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112107 = ParticipationRoleType(
    fhirCode: '112107',
  );

  /// value112108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112108 = ParticipationRoleType(
    fhirCode: '112108',
  );

  /// value112109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112109 = ParticipationRoleType(
    fhirCode: '112109',
  );

  /// value112110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112110 = ParticipationRoleType(
    fhirCode: '112110',
  );

  /// value112111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112111 = ParticipationRoleType(
    fhirCode: '112111',
  );

  /// value112112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112112 = ParticipationRoleType(
    fhirCode: '112112',
  );

  /// value112113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112113 = ParticipationRoleType(
    fhirCode: '112113',
  );

  /// value112114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112114 = ParticipationRoleType(
    fhirCode: '112114',
  );

  /// value112115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112115 = ParticipationRoleType(
    fhirCode: '112115',
  );

  /// value112116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112116 = ParticipationRoleType(
    fhirCode: '112116',
  );

  /// value112117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112117 = ParticipationRoleType(
    fhirCode: '112117',
  );

  /// value112118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112118 = ParticipationRoleType(
    fhirCode: '112118',
  );

  /// value112119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112119 = ParticipationRoleType(
    fhirCode: '112119',
  );

  /// value112120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112120 = ParticipationRoleType(
    fhirCode: '112120',
  );

  /// value112121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112121 = ParticipationRoleType(
    fhirCode: '112121',
  );

  /// value112122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112122 = ParticipationRoleType(
    fhirCode: '112122',
  );

  /// value112123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112123 = ParticipationRoleType(
    fhirCode: '112123',
  );

  /// value112124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112124 = ParticipationRoleType(
    fhirCode: '112124',
  );

  /// value112125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112125 = ParticipationRoleType(
    fhirCode: '112125',
  );

  /// value112126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112126 = ParticipationRoleType(
    fhirCode: '112126',
  );

  /// value112127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112127 = ParticipationRoleType(
    fhirCode: '112127',
  );

  /// value112128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112128 = ParticipationRoleType(
    fhirCode: '112128',
  );

  /// value112129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112129 = ParticipationRoleType(
    fhirCode: '112129',
  );

  /// value112130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112130 = ParticipationRoleType(
    fhirCode: '112130',
  );

  /// value112131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112131 = ParticipationRoleType(
    fhirCode: '112131',
  );

  /// value112132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112132 = ParticipationRoleType(
    fhirCode: '112132',
  );

  /// value112133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112133 = ParticipationRoleType(
    fhirCode: '112133',
  );

  /// value112134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112134 = ParticipationRoleType(
    fhirCode: '112134',
  );

  /// value112135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112135 = ParticipationRoleType(
    fhirCode: '112135',
  );

  /// value112136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112136 = ParticipationRoleType(
    fhirCode: '112136',
  );

  /// value112137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112137 = ParticipationRoleType(
    fhirCode: '112137',
  );

  /// value112138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112138 = ParticipationRoleType(
    fhirCode: '112138',
  );

  /// value112139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112139 = ParticipationRoleType(
    fhirCode: '112139',
  );

  /// value112140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112140 = ParticipationRoleType(
    fhirCode: '112140',
  );

  /// value112141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112141 = ParticipationRoleType(
    fhirCode: '112141',
  );

  /// value112142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112142 = ParticipationRoleType(
    fhirCode: '112142',
  );

  /// value112143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112143 = ParticipationRoleType(
    fhirCode: '112143',
  );

  /// value112144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112144 = ParticipationRoleType(
    fhirCode: '112144',
  );

  /// value112145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112145 = ParticipationRoleType(
    fhirCode: '112145',
  );

  /// value112146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112146 = ParticipationRoleType(
    fhirCode: '112146',
  );

  /// value112147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112147 = ParticipationRoleType(
    fhirCode: '112147',
  );

  /// value112148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112148 = ParticipationRoleType(
    fhirCode: '112148',
  );

  /// value112149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112149 = ParticipationRoleType(
    fhirCode: '112149',
  );

  /// value112150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112150 = ParticipationRoleType(
    fhirCode: '112150',
  );

  /// value112151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112151 = ParticipationRoleType(
    fhirCode: '112151',
  );

  /// value112152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112152 = ParticipationRoleType(
    fhirCode: '112152',
  );

  /// value112153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112153 = ParticipationRoleType(
    fhirCode: '112153',
  );

  /// value112154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112154 = ParticipationRoleType(
    fhirCode: '112154',
  );

  /// value112155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112155 = ParticipationRoleType(
    fhirCode: '112155',
  );

  /// value112156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112156 = ParticipationRoleType(
    fhirCode: '112156',
  );

  /// value112157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112157 = ParticipationRoleType(
    fhirCode: '112157',
  );

  /// value112158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112158 = ParticipationRoleType(
    fhirCode: '112158',
  );

  /// value112159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112159 = ParticipationRoleType(
    fhirCode: '112159',
  );

  /// value112160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112160 = ParticipationRoleType(
    fhirCode: '112160',
  );

  /// value112161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112161 = ParticipationRoleType(
    fhirCode: '112161',
  );

  /// value112162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112162 = ParticipationRoleType(
    fhirCode: '112162',
  );

  /// value112163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112163 = ParticipationRoleType(
    fhirCode: '112163',
  );

  /// value112164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112164 = ParticipationRoleType(
    fhirCode: '112164',
  );

  /// value112165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112165 = ParticipationRoleType(
    fhirCode: '112165',
  );

  /// value112166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112166 = ParticipationRoleType(
    fhirCode: '112166',
  );

  /// value112167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112167 = ParticipationRoleType(
    fhirCode: '112167',
  );

  /// value112168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112168 = ParticipationRoleType(
    fhirCode: '112168',
  );

  /// value112169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112169 = ParticipationRoleType(
    fhirCode: '112169',
  );

  /// value112170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112170 = ParticipationRoleType(
    fhirCode: '112170',
  );

  /// value112171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112171 = ParticipationRoleType(
    fhirCode: '112171',
  );

  /// value112172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112172 = ParticipationRoleType(
    fhirCode: '112172',
  );

  /// value112173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112173 = ParticipationRoleType(
    fhirCode: '112173',
  );

  /// value112174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112174 = ParticipationRoleType(
    fhirCode: '112174',
  );

  /// value112175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112175 = ParticipationRoleType(
    fhirCode: '112175',
  );

  /// value112176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112176 = ParticipationRoleType(
    fhirCode: '112176',
  );

  /// value112177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112177 = ParticipationRoleType(
    fhirCode: '112177',
  );

  /// value112178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112178 = ParticipationRoleType(
    fhirCode: '112178',
  );

  /// value112179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112179 = ParticipationRoleType(
    fhirCode: '112179',
  );

  /// value112180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112180 = ParticipationRoleType(
    fhirCode: '112180',
  );

  /// value112181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112181 = ParticipationRoleType(
    fhirCode: '112181',
  );

  /// value112182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112182 = ParticipationRoleType(
    fhirCode: '112182',
  );

  /// value112183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112183 = ParticipationRoleType(
    fhirCode: '112183',
  );

  /// value112184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112184 = ParticipationRoleType(
    fhirCode: '112184',
  );

  /// value112185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112185 = ParticipationRoleType(
    fhirCode: '112185',
  );

  /// value112186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112186 = ParticipationRoleType(
    fhirCode: '112186',
  );

  /// value112187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112187 = ParticipationRoleType(
    fhirCode: '112187',
  );

  /// value112188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112188 = ParticipationRoleType(
    fhirCode: '112188',
  );

  /// value112189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112189 = ParticipationRoleType(
    fhirCode: '112189',
  );

  /// value112191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112191 = ParticipationRoleType(
    fhirCode: '112191',
  );

  /// value112192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112192 = ParticipationRoleType(
    fhirCode: '112192',
  );

  /// value112193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112193 = ParticipationRoleType(
    fhirCode: '112193',
  );

  /// value112194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112194 = ParticipationRoleType(
    fhirCode: '112194',
  );

  /// value112195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112195 = ParticipationRoleType(
    fhirCode: '112195',
  );

  /// value112196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112196 = ParticipationRoleType(
    fhirCode: '112196',
  );

  /// value112197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112197 = ParticipationRoleType(
    fhirCode: '112197',
  );

  /// value112198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112198 = ParticipationRoleType(
    fhirCode: '112198',
  );

  /// value112199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112199 = ParticipationRoleType(
    fhirCode: '112199',
  );

  /// value112200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112200 = ParticipationRoleType(
    fhirCode: '112200',
  );

  /// value112201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112201 = ParticipationRoleType(
    fhirCode: '112201',
  );

  /// value112220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112220 = ParticipationRoleType(
    fhirCode: '112220',
  );

  /// value112222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112222 = ParticipationRoleType(
    fhirCode: '112222',
  );

  /// value112224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112224 = ParticipationRoleType(
    fhirCode: '112224',
  );

  /// value112225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112225 = ParticipationRoleType(
    fhirCode: '112225',
  );

  /// value112226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112226 = ParticipationRoleType(
    fhirCode: '112226',
  );

  /// value112227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112227 = ParticipationRoleType(
    fhirCode: '112227',
  );

  /// value112228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112228 = ParticipationRoleType(
    fhirCode: '112228',
  );

  /// value112229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112229 = ParticipationRoleType(
    fhirCode: '112229',
  );

  /// value112232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112232 = ParticipationRoleType(
    fhirCode: '112232',
  );

  /// value112233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112233 = ParticipationRoleType(
    fhirCode: '112233',
  );

  /// value112238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112238 = ParticipationRoleType(
    fhirCode: '112238',
  );

  /// value112240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112240 = ParticipationRoleType(
    fhirCode: '112240',
  );

  /// value112241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112241 = ParticipationRoleType(
    fhirCode: '112241',
  );

  /// value112242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112242 = ParticipationRoleType(
    fhirCode: '112242',
  );

  /// value112243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112243 = ParticipationRoleType(
    fhirCode: '112243',
  );

  /// value112244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112244 = ParticipationRoleType(
    fhirCode: '112244',
  );

  /// value112248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112248 = ParticipationRoleType(
    fhirCode: '112248',
  );

  /// value112249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112249 = ParticipationRoleType(
    fhirCode: '112249',
  );

  /// value112300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112300 = ParticipationRoleType(
    fhirCode: '112300',
  );

  /// value112301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112301 = ParticipationRoleType(
    fhirCode: '112301',
  );

  /// value112302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112302 = ParticipationRoleType(
    fhirCode: '112302',
  );

  /// value112303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112303 = ParticipationRoleType(
    fhirCode: '112303',
  );

  /// value112304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112304 = ParticipationRoleType(
    fhirCode: '112304',
  );

  /// value112305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112305 = ParticipationRoleType(
    fhirCode: '112305',
  );

  /// value112306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112306 = ParticipationRoleType(
    fhirCode: '112306',
  );

  /// value112307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112307 = ParticipationRoleType(
    fhirCode: '112307',
  );

  /// value112308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112308 = ParticipationRoleType(
    fhirCode: '112308',
  );

  /// value112309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112309 = ParticipationRoleType(
    fhirCode: '112309',
  );

  /// value112310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112310 = ParticipationRoleType(
    fhirCode: '112310',
  );

  /// value112311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112311 = ParticipationRoleType(
    fhirCode: '112311',
  );

  /// value112312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112312 = ParticipationRoleType(
    fhirCode: '112312',
  );

  /// value112313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112313 = ParticipationRoleType(
    fhirCode: '112313',
  );

  /// value112314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112314 = ParticipationRoleType(
    fhirCode: '112314',
  );

  /// value112315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112315 = ParticipationRoleType(
    fhirCode: '112315',
  );

  /// value112316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112316 = ParticipationRoleType(
    fhirCode: '112316',
  );

  /// value112317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112317 = ParticipationRoleType(
    fhirCode: '112317',
  );

  /// value112318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112318 = ParticipationRoleType(
    fhirCode: '112318',
  );

  /// value112319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112319 = ParticipationRoleType(
    fhirCode: '112319',
  );

  /// value112320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112320 = ParticipationRoleType(
    fhirCode: '112320',
  );

  /// value112321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112321 = ParticipationRoleType(
    fhirCode: '112321',
  );

  /// value112325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112325 = ParticipationRoleType(
    fhirCode: '112325',
  );

  /// value112340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112340 = ParticipationRoleType(
    fhirCode: '112340',
  );

  /// value112341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112341 = ParticipationRoleType(
    fhirCode: '112341',
  );

  /// value112342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112342 = ParticipationRoleType(
    fhirCode: '112342',
  );

  /// value112343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112343 = ParticipationRoleType(
    fhirCode: '112343',
  );

  /// value112344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112344 = ParticipationRoleType(
    fhirCode: '112344',
  );

  /// value112345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112345 = ParticipationRoleType(
    fhirCode: '112345',
  );

  /// value112346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112346 = ParticipationRoleType(
    fhirCode: '112346',
  );

  /// value112347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112347 = ParticipationRoleType(
    fhirCode: '112347',
  );

  /// value112348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112348 = ParticipationRoleType(
    fhirCode: '112348',
  );

  /// value112350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112350 = ParticipationRoleType(
    fhirCode: '112350',
  );

  /// value112351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112351 = ParticipationRoleType(
    fhirCode: '112351',
  );

  /// value112352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112352 = ParticipationRoleType(
    fhirCode: '112352',
  );

  /// value112353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112353 = ParticipationRoleType(
    fhirCode: '112353',
  );

  /// value112354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112354 = ParticipationRoleType(
    fhirCode: '112354',
  );

  /// value112355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112355 = ParticipationRoleType(
    fhirCode: '112355',
  );

  /// value112356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112356 = ParticipationRoleType(
    fhirCode: '112356',
  );

  /// value112357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112357 = ParticipationRoleType(
    fhirCode: '112357',
  );

  /// value112358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112358 = ParticipationRoleType(
    fhirCode: '112358',
  );

  /// value112359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112359 = ParticipationRoleType(
    fhirCode: '112359',
  );

  /// value112360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112360 = ParticipationRoleType(
    fhirCode: '112360',
  );

  /// value112361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112361 = ParticipationRoleType(
    fhirCode: '112361',
  );

  /// value112362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112362 = ParticipationRoleType(
    fhirCode: '112362',
  );

  /// value112363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112363 = ParticipationRoleType(
    fhirCode: '112363',
  );

  /// value112364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112364 = ParticipationRoleType(
    fhirCode: '112364',
  );

  /// value112365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112365 = ParticipationRoleType(
    fhirCode: '112365',
  );

  /// value112366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112366 = ParticipationRoleType(
    fhirCode: '112366',
  );

  /// value112367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112367 = ParticipationRoleType(
    fhirCode: '112367',
  );

  /// value112368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112368 = ParticipationRoleType(
    fhirCode: '112368',
  );

  /// value112369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112369 = ParticipationRoleType(
    fhirCode: '112369',
  );

  /// value112370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112370 = ParticipationRoleType(
    fhirCode: '112370',
  );

  /// value112371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112371 = ParticipationRoleType(
    fhirCode: '112371',
  );

  /// value112372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112372 = ParticipationRoleType(
    fhirCode: '112372',
  );

  /// value112373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112373 = ParticipationRoleType(
    fhirCode: '112373',
  );

  /// value112374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112374 = ParticipationRoleType(
    fhirCode: '112374',
  );

  /// value112375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112375 = ParticipationRoleType(
    fhirCode: '112375',
  );

  /// value112376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112376 = ParticipationRoleType(
    fhirCode: '112376',
  );

  /// value112377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112377 = ParticipationRoleType(
    fhirCode: '112377',
  );

  /// value112378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112378 = ParticipationRoleType(
    fhirCode: '112378',
  );

  /// value112379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112379 = ParticipationRoleType(
    fhirCode: '112379',
  );

  /// value112380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112380 = ParticipationRoleType(
    fhirCode: '112380',
  );

  /// value112381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112381 = ParticipationRoleType(
    fhirCode: '112381',
  );

  /// value112700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112700 = ParticipationRoleType(
    fhirCode: '112700',
  );

  /// value112701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112701 = ParticipationRoleType(
    fhirCode: '112701',
  );

  /// value112702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112702 = ParticipationRoleType(
    fhirCode: '112702',
  );

  /// value112703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112703 = ParticipationRoleType(
    fhirCode: '112703',
  );

  /// value112704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112704 = ParticipationRoleType(
    fhirCode: '112704',
  );

  /// value112705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112705 = ParticipationRoleType(
    fhirCode: '112705',
  );

  /// value112706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112706 = ParticipationRoleType(
    fhirCode: '112706',
  );

  /// value112707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112707 = ParticipationRoleType(
    fhirCode: '112707',
  );

  /// value112708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112708 = ParticipationRoleType(
    fhirCode: '112708',
  );

  /// value112709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112709 = ParticipationRoleType(
    fhirCode: '112709',
  );

  /// value112710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112710 = ParticipationRoleType(
    fhirCode: '112710',
  );

  /// value112711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112711 = ParticipationRoleType(
    fhirCode: '112711',
  );

  /// value112712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112712 = ParticipationRoleType(
    fhirCode: '112712',
  );

  /// value112713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112713 = ParticipationRoleType(
    fhirCode: '112713',
  );

  /// value112714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112714 = ParticipationRoleType(
    fhirCode: '112714',
  );

  /// value112715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112715 = ParticipationRoleType(
    fhirCode: '112715',
  );

  /// value112716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112716 = ParticipationRoleType(
    fhirCode: '112716',
  );

  /// value112717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112717 = ParticipationRoleType(
    fhirCode: '112717',
  );

  /// value112718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112718 = ParticipationRoleType(
    fhirCode: '112718',
  );

  /// value112719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112719 = ParticipationRoleType(
    fhirCode: '112719',
  );

  /// value112720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112720 = ParticipationRoleType(
    fhirCode: '112720',
  );

  /// value112721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value112721 = ParticipationRoleType(
    fhirCode: '112721',
  );

  /// value113000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113000 = ParticipationRoleType(
    fhirCode: '113000',
  );

  /// value113001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113001 = ParticipationRoleType(
    fhirCode: '113001',
  );

  /// value113002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113002 = ParticipationRoleType(
    fhirCode: '113002',
  );

  /// value113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113003 = ParticipationRoleType(
    fhirCode: '113003',
  );

  /// value113004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113004 = ParticipationRoleType(
    fhirCode: '113004',
  );

  /// value113005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113005 = ParticipationRoleType(
    fhirCode: '113005',
  );

  /// value113006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113006 = ParticipationRoleType(
    fhirCode: '113006',
  );

  /// value113007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113007 = ParticipationRoleType(
    fhirCode: '113007',
  );

  /// value113008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113008 = ParticipationRoleType(
    fhirCode: '113008',
  );

  /// value113009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113009 = ParticipationRoleType(
    fhirCode: '113009',
  );

  /// value113010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113010 = ParticipationRoleType(
    fhirCode: '113010',
  );

  /// value113011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113011 = ParticipationRoleType(
    fhirCode: '113011',
  );

  /// value113012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113012 = ParticipationRoleType(
    fhirCode: '113012',
  );

  /// value113013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113013 = ParticipationRoleType(
    fhirCode: '113013',
  );

  /// value113014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113014 = ParticipationRoleType(
    fhirCode: '113014',
  );

  /// value113015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113015 = ParticipationRoleType(
    fhirCode: '113015',
  );

  /// value113016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113016 = ParticipationRoleType(
    fhirCode: '113016',
  );

  /// value113017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113017 = ParticipationRoleType(
    fhirCode: '113017',
  );

  /// value113018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113018 = ParticipationRoleType(
    fhirCode: '113018',
  );

  /// value113020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113020 = ParticipationRoleType(
    fhirCode: '113020',
  );

  /// value113021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113021 = ParticipationRoleType(
    fhirCode: '113021',
  );

  /// value113026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113026 = ParticipationRoleType(
    fhirCode: '113026',
  );

  /// value113030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113030 = ParticipationRoleType(
    fhirCode: '113030',
  );

  /// value113031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113031 = ParticipationRoleType(
    fhirCode: '113031',
  );

  /// value113032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113032 = ParticipationRoleType(
    fhirCode: '113032',
  );

  /// value113033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113033 = ParticipationRoleType(
    fhirCode: '113033',
  );

  /// value113034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113034 = ParticipationRoleType(
    fhirCode: '113034',
  );

  /// value113035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113035 = ParticipationRoleType(
    fhirCode: '113035',
  );

  /// value113036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113036 = ParticipationRoleType(
    fhirCode: '113036',
  );

  /// value113037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113037 = ParticipationRoleType(
    fhirCode: '113037',
  );

  /// value113038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113038 = ParticipationRoleType(
    fhirCode: '113038',
  );

  /// value113039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113039 = ParticipationRoleType(
    fhirCode: '113039',
  );

  /// value113040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113040 = ParticipationRoleType(
    fhirCode: '113040',
  );

  /// value113041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113041 = ParticipationRoleType(
    fhirCode: '113041',
  );

  /// value113042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113042 = ParticipationRoleType(
    fhirCode: '113042',
  );

  /// value113043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113043 = ParticipationRoleType(
    fhirCode: '113043',
  );

  /// value113044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113044 = ParticipationRoleType(
    fhirCode: '113044',
  );

  /// value113045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113045 = ParticipationRoleType(
    fhirCode: '113045',
  );

  /// value113046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113046 = ParticipationRoleType(
    fhirCode: '113046',
  );

  /// value113047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113047 = ParticipationRoleType(
    fhirCode: '113047',
  );

  /// value113048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113048 = ParticipationRoleType(
    fhirCode: '113048',
  );

  /// value113049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113049 = ParticipationRoleType(
    fhirCode: '113049',
  );

  /// value113050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113050 = ParticipationRoleType(
    fhirCode: '113050',
  );

  /// value113051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113051 = ParticipationRoleType(
    fhirCode: '113051',
  );

  /// value113052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113052 = ParticipationRoleType(
    fhirCode: '113052',
  );

  /// value113053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113053 = ParticipationRoleType(
    fhirCode: '113053',
  );

  /// value113054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113054 = ParticipationRoleType(
    fhirCode: '113054',
  );

  /// value113055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113055 = ParticipationRoleType(
    fhirCode: '113055',
  );

  /// value113056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113056 = ParticipationRoleType(
    fhirCode: '113056',
  );

  /// value113057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113057 = ParticipationRoleType(
    fhirCode: '113057',
  );

  /// value113058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113058 = ParticipationRoleType(
    fhirCode: '113058',
  );

  /// value113059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113059 = ParticipationRoleType(
    fhirCode: '113059',
  );

  /// value113060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113060 = ParticipationRoleType(
    fhirCode: '113060',
  );

  /// value113061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113061 = ParticipationRoleType(
    fhirCode: '113061',
  );

  /// value113062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113062 = ParticipationRoleType(
    fhirCode: '113062',
  );

  /// value113063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113063 = ParticipationRoleType(
    fhirCode: '113063',
  );

  /// value113064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113064 = ParticipationRoleType(
    fhirCode: '113064',
  );

  /// value113065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113065 = ParticipationRoleType(
    fhirCode: '113065',
  );

  /// value113066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113066 = ParticipationRoleType(
    fhirCode: '113066',
  );

  /// value113067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113067 = ParticipationRoleType(
    fhirCode: '113067',
  );

  /// value113068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113068 = ParticipationRoleType(
    fhirCode: '113068',
  );

  /// value113069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113069 = ParticipationRoleType(
    fhirCode: '113069',
  );

  /// value113070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113070 = ParticipationRoleType(
    fhirCode: '113070',
  );

  /// value113071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113071 = ParticipationRoleType(
    fhirCode: '113071',
  );

  /// value113072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113072 = ParticipationRoleType(
    fhirCode: '113072',
  );

  /// value113073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113073 = ParticipationRoleType(
    fhirCode: '113073',
  );

  /// value113074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113074 = ParticipationRoleType(
    fhirCode: '113074',
  );

  /// value113075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113075 = ParticipationRoleType(
    fhirCode: '113075',
  );

  /// value113076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113076 = ParticipationRoleType(
    fhirCode: '113076',
  );

  /// value113077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113077 = ParticipationRoleType(
    fhirCode: '113077',
  );

  /// value113078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113078 = ParticipationRoleType(
    fhirCode: '113078',
  );

  /// value113079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113079 = ParticipationRoleType(
    fhirCode: '113079',
  );

  /// value113080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113080 = ParticipationRoleType(
    fhirCode: '113080',
  );

  /// value113081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113081 = ParticipationRoleType(
    fhirCode: '113081',
  );

  /// value113082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113082 = ParticipationRoleType(
    fhirCode: '113082',
  );

  /// value113083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113083 = ParticipationRoleType(
    fhirCode: '113083',
  );

  /// value113085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113085 = ParticipationRoleType(
    fhirCode: '113085',
  );

  /// value113086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113086 = ParticipationRoleType(
    fhirCode: '113086',
  );

  /// value113087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113087 = ParticipationRoleType(
    fhirCode: '113087',
  );

  /// value113088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113088 = ParticipationRoleType(
    fhirCode: '113088',
  );

  /// value113089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113089 = ParticipationRoleType(
    fhirCode: '113089',
  );

  /// value113090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113090 = ParticipationRoleType(
    fhirCode: '113090',
  );

  /// value113091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113091 = ParticipationRoleType(
    fhirCode: '113091',
  );

  /// value113092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113092 = ParticipationRoleType(
    fhirCode: '113092',
  );

  /// value113093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113093 = ParticipationRoleType(
    fhirCode: '113093',
  );

  /// value113094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113094 = ParticipationRoleType(
    fhirCode: '113094',
  );

  /// value113095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113095 = ParticipationRoleType(
    fhirCode: '113095',
  );

  /// value113096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113096 = ParticipationRoleType(
    fhirCode: '113096',
  );

  /// value113097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113097 = ParticipationRoleType(
    fhirCode: '113097',
  );

  /// value113100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113100 = ParticipationRoleType(
    fhirCode: '113100',
  );

  /// value113101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113101 = ParticipationRoleType(
    fhirCode: '113101',
  );

  /// value113102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113102 = ParticipationRoleType(
    fhirCode: '113102',
  );

  /// value113103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113103 = ParticipationRoleType(
    fhirCode: '113103',
  );

  /// value113104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113104 = ParticipationRoleType(
    fhirCode: '113104',
  );

  /// value113105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113105 = ParticipationRoleType(
    fhirCode: '113105',
  );

  /// value113106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113106 = ParticipationRoleType(
    fhirCode: '113106',
  );

  /// value113107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113107 = ParticipationRoleType(
    fhirCode: '113107',
  );

  /// value113108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113108 = ParticipationRoleType(
    fhirCode: '113108',
  );

  /// value113109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113109 = ParticipationRoleType(
    fhirCode: '113109',
  );

  /// value113110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113110 = ParticipationRoleType(
    fhirCode: '113110',
  );

  /// value113111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113111 = ParticipationRoleType(
    fhirCode: '113111',
  );

  /// value113500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113500 = ParticipationRoleType(
    fhirCode: '113500',
  );

  /// value113502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113502 = ParticipationRoleType(
    fhirCode: '113502',
  );

  /// value113503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113503 = ParticipationRoleType(
    fhirCode: '113503',
  );

  /// value113505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113505 = ParticipationRoleType(
    fhirCode: '113505',
  );

  /// value113506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113506 = ParticipationRoleType(
    fhirCode: '113506',
  );

  /// value113507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113507 = ParticipationRoleType(
    fhirCode: '113507',
  );

  /// value113508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113508 = ParticipationRoleType(
    fhirCode: '113508',
  );

  /// value113509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113509 = ParticipationRoleType(
    fhirCode: '113509',
  );

  /// value113510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113510 = ParticipationRoleType(
    fhirCode: '113510',
  );

  /// value113511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113511 = ParticipationRoleType(
    fhirCode: '113511',
  );

  /// value113512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113512 = ParticipationRoleType(
    fhirCode: '113512',
  );

  /// value113513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113513 = ParticipationRoleType(
    fhirCode: '113513',
  );

  /// value113514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113514 = ParticipationRoleType(
    fhirCode: '113514',
  );

  /// value113516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113516 = ParticipationRoleType(
    fhirCode: '113516',
  );

  /// value113517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113517 = ParticipationRoleType(
    fhirCode: '113517',
  );

  /// value113518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113518 = ParticipationRoleType(
    fhirCode: '113518',
  );

  /// value113520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113520 = ParticipationRoleType(
    fhirCode: '113520',
  );

  /// value113521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113521 = ParticipationRoleType(
    fhirCode: '113521',
  );

  /// value113522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113522 = ParticipationRoleType(
    fhirCode: '113522',
  );

  /// value113523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113523 = ParticipationRoleType(
    fhirCode: '113523',
  );

  /// value113526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113526 = ParticipationRoleType(
    fhirCode: '113526',
  );

  /// value113527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113527 = ParticipationRoleType(
    fhirCode: '113527',
  );

  /// value113528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113528 = ParticipationRoleType(
    fhirCode: '113528',
  );

  /// value113529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113529 = ParticipationRoleType(
    fhirCode: '113529',
  );

  /// value113530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113530 = ParticipationRoleType(
    fhirCode: '113530',
  );

  /// value113540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113540 = ParticipationRoleType(
    fhirCode: '113540',
  );

  /// value113541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113541 = ParticipationRoleType(
    fhirCode: '113541',
  );

  /// value113542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113542 = ParticipationRoleType(
    fhirCode: '113542',
  );

  /// value113543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113543 = ParticipationRoleType(
    fhirCode: '113543',
  );

  /// value113550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113550 = ParticipationRoleType(
    fhirCode: '113550',
  );

  /// value113551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113551 = ParticipationRoleType(
    fhirCode: '113551',
  );

  /// value113552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113552 = ParticipationRoleType(
    fhirCode: '113552',
  );

  /// value113560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113560 = ParticipationRoleType(
    fhirCode: '113560',
  );

  /// value113561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113561 = ParticipationRoleType(
    fhirCode: '113561',
  );

  /// value113562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113562 = ParticipationRoleType(
    fhirCode: '113562',
  );

  /// value113563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113563 = ParticipationRoleType(
    fhirCode: '113563',
  );

  /// value113568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113568 = ParticipationRoleType(
    fhirCode: '113568',
  );

  /// value113570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113570 = ParticipationRoleType(
    fhirCode: '113570',
  );

  /// value113571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113571 = ParticipationRoleType(
    fhirCode: '113571',
  );

  /// value113572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113572 = ParticipationRoleType(
    fhirCode: '113572',
  );

  /// value113573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113573 = ParticipationRoleType(
    fhirCode: '113573',
  );

  /// value113574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113574 = ParticipationRoleType(
    fhirCode: '113574',
  );

  /// value113575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113575 = ParticipationRoleType(
    fhirCode: '113575',
  );

  /// value113576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113576 = ParticipationRoleType(
    fhirCode: '113576',
  );

  /// value113577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113577 = ParticipationRoleType(
    fhirCode: '113577',
  );

  /// value113601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113601 = ParticipationRoleType(
    fhirCode: '113601',
  );

  /// value113602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113602 = ParticipationRoleType(
    fhirCode: '113602',
  );

  /// value113603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113603 = ParticipationRoleType(
    fhirCode: '113603',
  );

  /// value113605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113605 = ParticipationRoleType(
    fhirCode: '113605',
  );

  /// value113606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113606 = ParticipationRoleType(
    fhirCode: '113606',
  );

  /// value113607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113607 = ParticipationRoleType(
    fhirCode: '113607',
  );

  /// value113608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113608 = ParticipationRoleType(
    fhirCode: '113608',
  );

  /// value113609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113609 = ParticipationRoleType(
    fhirCode: '113609',
  );

  /// value113611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113611 = ParticipationRoleType(
    fhirCode: '113611',
  );

  /// value113612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113612 = ParticipationRoleType(
    fhirCode: '113612',
  );

  /// value113613
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113613 = ParticipationRoleType(
    fhirCode: '113613',
  );

  /// value113620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113620 = ParticipationRoleType(
    fhirCode: '113620',
  );

  /// value113621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113621 = ParticipationRoleType(
    fhirCode: '113621',
  );

  /// value113622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113622 = ParticipationRoleType(
    fhirCode: '113622',
  );

  /// value113630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113630 = ParticipationRoleType(
    fhirCode: '113630',
  );

  /// value113631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113631 = ParticipationRoleType(
    fhirCode: '113631',
  );

  /// value113650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113650 = ParticipationRoleType(
    fhirCode: '113650',
  );

  /// value113651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113651 = ParticipationRoleType(
    fhirCode: '113651',
  );

  /// value113652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113652 = ParticipationRoleType(
    fhirCode: '113652',
  );

  /// value113653
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113653 = ParticipationRoleType(
    fhirCode: '113653',
  );

  /// value113661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113661 = ParticipationRoleType(
    fhirCode: '113661',
  );

  /// value113662
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113662 = ParticipationRoleType(
    fhirCode: '113662',
  );

  /// value113663
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113663 = ParticipationRoleType(
    fhirCode: '113663',
  );

  /// value113664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113664 = ParticipationRoleType(
    fhirCode: '113664',
  );

  /// value113665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113665 = ParticipationRoleType(
    fhirCode: '113665',
  );

  /// value113666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113666 = ParticipationRoleType(
    fhirCode: '113666',
  );

  /// value113669
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113669 = ParticipationRoleType(
    fhirCode: '113669',
  );

  /// value113670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113670 = ParticipationRoleType(
    fhirCode: '113670',
  );

  /// value113671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113671 = ParticipationRoleType(
    fhirCode: '113671',
  );

  /// value113680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113680 = ParticipationRoleType(
    fhirCode: '113680',
  );

  /// value113681
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113681 = ParticipationRoleType(
    fhirCode: '113681',
  );

  /// value113682
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113682 = ParticipationRoleType(
    fhirCode: '113682',
  );

  /// value113683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113683 = ParticipationRoleType(
    fhirCode: '113683',
  );

  /// value113684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113684 = ParticipationRoleType(
    fhirCode: '113684',
  );

  /// value113685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113685 = ParticipationRoleType(
    fhirCode: '113685',
  );

  /// value113686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113686 = ParticipationRoleType(
    fhirCode: '113686',
  );

  /// value113687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113687 = ParticipationRoleType(
    fhirCode: '113687',
  );

  /// value113688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113688 = ParticipationRoleType(
    fhirCode: '113688',
  );

  /// value113689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113689 = ParticipationRoleType(
    fhirCode: '113689',
  );

  /// value113690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113690 = ParticipationRoleType(
    fhirCode: '113690',
  );

  /// value113691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113691 = ParticipationRoleType(
    fhirCode: '113691',
  );

  /// value113692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113692 = ParticipationRoleType(
    fhirCode: '113692',
  );

  /// value113701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113701 = ParticipationRoleType(
    fhirCode: '113701',
  );

  /// value113702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113702 = ParticipationRoleType(
    fhirCode: '113702',
  );

  /// value113704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113704 = ParticipationRoleType(
    fhirCode: '113704',
  );

  /// value113705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113705 = ParticipationRoleType(
    fhirCode: '113705',
  );

  /// value113706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113706 = ParticipationRoleType(
    fhirCode: '113706',
  );

  /// value113710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113710 = ParticipationRoleType(
    fhirCode: '113710',
  );

  /// value113711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113711 = ParticipationRoleType(
    fhirCode: '113711',
  );

  /// value113720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113720 = ParticipationRoleType(
    fhirCode: '113720',
  );

  /// value113721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113721 = ParticipationRoleType(
    fhirCode: '113721',
  );

  /// value113722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113722 = ParticipationRoleType(
    fhirCode: '113722',
  );

  /// value113723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113723 = ParticipationRoleType(
    fhirCode: '113723',
  );

  /// value113724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113724 = ParticipationRoleType(
    fhirCode: '113724',
  );

  /// value113725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113725 = ParticipationRoleType(
    fhirCode: '113725',
  );

  /// value113726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113726 = ParticipationRoleType(
    fhirCode: '113726',
  );

  /// value113727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113727 = ParticipationRoleType(
    fhirCode: '113727',
  );

  /// value113728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113728 = ParticipationRoleType(
    fhirCode: '113728',
  );

  /// value113729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113729 = ParticipationRoleType(
    fhirCode: '113729',
  );

  /// value113730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113730 = ParticipationRoleType(
    fhirCode: '113730',
  );

  /// value113731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113731 = ParticipationRoleType(
    fhirCode: '113731',
  );

  /// value113732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113732 = ParticipationRoleType(
    fhirCode: '113732',
  );

  /// value113733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113733 = ParticipationRoleType(
    fhirCode: '113733',
  );

  /// value113734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113734 = ParticipationRoleType(
    fhirCode: '113734',
  );

  /// value113735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113735 = ParticipationRoleType(
    fhirCode: '113735',
  );

  /// value113736
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113736 = ParticipationRoleType(
    fhirCode: '113736',
  );

  /// value113737
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113737 = ParticipationRoleType(
    fhirCode: '113737',
  );

  /// value113738
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113738 = ParticipationRoleType(
    fhirCode: '113738',
  );

  /// value113739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113739 = ParticipationRoleType(
    fhirCode: '113739',
  );

  /// value113740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113740 = ParticipationRoleType(
    fhirCode: '113740',
  );

  /// value113742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113742 = ParticipationRoleType(
    fhirCode: '113742',
  );

  /// value113743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113743 = ParticipationRoleType(
    fhirCode: '113743',
  );

  /// value113744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113744 = ParticipationRoleType(
    fhirCode: '113744',
  );

  /// value113745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113745 = ParticipationRoleType(
    fhirCode: '113745',
  );

  /// value113748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113748 = ParticipationRoleType(
    fhirCode: '113748',
  );

  /// value113750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113750 = ParticipationRoleType(
    fhirCode: '113750',
  );

  /// value113751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113751 = ParticipationRoleType(
    fhirCode: '113751',
  );

  /// value113752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113752 = ParticipationRoleType(
    fhirCode: '113752',
  );

  /// value113753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113753 = ParticipationRoleType(
    fhirCode: '113753',
  );

  /// value113754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113754 = ParticipationRoleType(
    fhirCode: '113754',
  );

  /// value113755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113755 = ParticipationRoleType(
    fhirCode: '113755',
  );

  /// value113756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113756 = ParticipationRoleType(
    fhirCode: '113756',
  );

  /// value113757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113757 = ParticipationRoleType(
    fhirCode: '113757',
  );

  /// value113758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113758 = ParticipationRoleType(
    fhirCode: '113758',
  );

  /// value113759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113759 = ParticipationRoleType(
    fhirCode: '113759',
  );

  /// value113760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113760 = ParticipationRoleType(
    fhirCode: '113760',
  );

  /// value113761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113761 = ParticipationRoleType(
    fhirCode: '113761',
  );

  /// value113763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113763 = ParticipationRoleType(
    fhirCode: '113763',
  );

  /// value113764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113764 = ParticipationRoleType(
    fhirCode: '113764',
  );

  /// value113766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113766 = ParticipationRoleType(
    fhirCode: '113766',
  );

  /// value113767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113767 = ParticipationRoleType(
    fhirCode: '113767',
  );

  /// value113768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113768 = ParticipationRoleType(
    fhirCode: '113768',
  );

  /// value113769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113769 = ParticipationRoleType(
    fhirCode: '113769',
  );

  /// value113770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113770 = ParticipationRoleType(
    fhirCode: '113770',
  );

  /// value113771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113771 = ParticipationRoleType(
    fhirCode: '113771',
  );

  /// value113772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113772 = ParticipationRoleType(
    fhirCode: '113772',
  );

  /// value113773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113773 = ParticipationRoleType(
    fhirCode: '113773',
  );

  /// value113780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113780 = ParticipationRoleType(
    fhirCode: '113780',
  );

  /// value113788
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113788 = ParticipationRoleType(
    fhirCode: '113788',
  );

  /// value113789
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113789 = ParticipationRoleType(
    fhirCode: '113789',
  );

  /// value113790
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113790 = ParticipationRoleType(
    fhirCode: '113790',
  );

  /// value113791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113791 = ParticipationRoleType(
    fhirCode: '113791',
  );

  /// value113792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113792 = ParticipationRoleType(
    fhirCode: '113792',
  );

  /// value113793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113793 = ParticipationRoleType(
    fhirCode: '113793',
  );

  /// value113794
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113794 = ParticipationRoleType(
    fhirCode: '113794',
  );

  /// value113795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113795 = ParticipationRoleType(
    fhirCode: '113795',
  );

  /// value113800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113800 = ParticipationRoleType(
    fhirCode: '113800',
  );

  /// value113801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113801 = ParticipationRoleType(
    fhirCode: '113801',
  );

  /// value113802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113802 = ParticipationRoleType(
    fhirCode: '113802',
  );

  /// value113803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113803 = ParticipationRoleType(
    fhirCode: '113803',
  );

  /// value113804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113804 = ParticipationRoleType(
    fhirCode: '113804',
  );

  /// value113805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113805 = ParticipationRoleType(
    fhirCode: '113805',
  );

  /// value113806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113806 = ParticipationRoleType(
    fhirCode: '113806',
  );

  /// value113807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113807 = ParticipationRoleType(
    fhirCode: '113807',
  );

  /// value113808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113808 = ParticipationRoleType(
    fhirCode: '113808',
  );

  /// value113809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113809 = ParticipationRoleType(
    fhirCode: '113809',
  );

  /// value113810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113810 = ParticipationRoleType(
    fhirCode: '113810',
  );

  /// value113811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113811 = ParticipationRoleType(
    fhirCode: '113811',
  );

  /// value113812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113812 = ParticipationRoleType(
    fhirCode: '113812',
  );

  /// value113813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113813 = ParticipationRoleType(
    fhirCode: '113813',
  );

  /// value113814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113814 = ParticipationRoleType(
    fhirCode: '113814',
  );

  /// value113815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113815 = ParticipationRoleType(
    fhirCode: '113815',
  );

  /// value113816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113816 = ParticipationRoleType(
    fhirCode: '113816',
  );

  /// value113817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113817 = ParticipationRoleType(
    fhirCode: '113817',
  );

  /// value113818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113818 = ParticipationRoleType(
    fhirCode: '113818',
  );

  /// value113819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113819 = ParticipationRoleType(
    fhirCode: '113819',
  );

  /// value113820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113820 = ParticipationRoleType(
    fhirCode: '113820',
  );

  /// value113821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113821 = ParticipationRoleType(
    fhirCode: '113821',
  );

  /// value113822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113822 = ParticipationRoleType(
    fhirCode: '113822',
  );

  /// value113823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113823 = ParticipationRoleType(
    fhirCode: '113823',
  );

  /// value113824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113824 = ParticipationRoleType(
    fhirCode: '113824',
  );

  /// value113825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113825 = ParticipationRoleType(
    fhirCode: '113825',
  );

  /// value113826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113826 = ParticipationRoleType(
    fhirCode: '113826',
  );

  /// value113827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113827 = ParticipationRoleType(
    fhirCode: '113827',
  );

  /// value113828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113828 = ParticipationRoleType(
    fhirCode: '113828',
  );

  /// value113829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113829 = ParticipationRoleType(
    fhirCode: '113829',
  );

  /// value113830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113830 = ParticipationRoleType(
    fhirCode: '113830',
  );

  /// value113831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113831 = ParticipationRoleType(
    fhirCode: '113831',
  );

  /// value113832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113832 = ParticipationRoleType(
    fhirCode: '113832',
  );

  /// value113833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113833 = ParticipationRoleType(
    fhirCode: '113833',
  );

  /// value113834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113834 = ParticipationRoleType(
    fhirCode: '113834',
  );

  /// value113835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113835 = ParticipationRoleType(
    fhirCode: '113835',
  );

  /// value113836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113836 = ParticipationRoleType(
    fhirCode: '113836',
  );

  /// value113837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113837 = ParticipationRoleType(
    fhirCode: '113837',
  );

  /// value113838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113838 = ParticipationRoleType(
    fhirCode: '113838',
  );

  /// value113839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113839 = ParticipationRoleType(
    fhirCode: '113839',
  );

  /// value113840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113840 = ParticipationRoleType(
    fhirCode: '113840',
  );

  /// value113841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113841 = ParticipationRoleType(
    fhirCode: '113841',
  );

  /// value113842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113842 = ParticipationRoleType(
    fhirCode: '113842',
  );

  /// value113845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113845 = ParticipationRoleType(
    fhirCode: '113845',
  );

  /// value113846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113846 = ParticipationRoleType(
    fhirCode: '113846',
  );

  /// value113847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113847 = ParticipationRoleType(
    fhirCode: '113847',
  );

  /// value113850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113850 = ParticipationRoleType(
    fhirCode: '113850',
  );

  /// value113851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113851 = ParticipationRoleType(
    fhirCode: '113851',
  );

  /// value113852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113852 = ParticipationRoleType(
    fhirCode: '113852',
  );

  /// value113853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113853 = ParticipationRoleType(
    fhirCode: '113853',
  );

  /// value113854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113854 = ParticipationRoleType(
    fhirCode: '113854',
  );

  /// value113855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113855 = ParticipationRoleType(
    fhirCode: '113855',
  );

  /// value113856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113856 = ParticipationRoleType(
    fhirCode: '113856',
  );

  /// value113857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113857 = ParticipationRoleType(
    fhirCode: '113857',
  );

  /// value113858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113858 = ParticipationRoleType(
    fhirCode: '113858',
  );

  /// value113859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113859 = ParticipationRoleType(
    fhirCode: '113859',
  );

  /// value113860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113860 = ParticipationRoleType(
    fhirCode: '113860',
  );

  /// value113861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113861 = ParticipationRoleType(
    fhirCode: '113861',
  );

  /// value113862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113862 = ParticipationRoleType(
    fhirCode: '113862',
  );

  /// value113863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113863 = ParticipationRoleType(
    fhirCode: '113863',
  );

  /// value113864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113864 = ParticipationRoleType(
    fhirCode: '113864',
  );

  /// value113865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113865 = ParticipationRoleType(
    fhirCode: '113865',
  );

  /// value113866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113866 = ParticipationRoleType(
    fhirCode: '113866',
  );

  /// value113867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113867 = ParticipationRoleType(
    fhirCode: '113867',
  );

  /// value113868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113868 = ParticipationRoleType(
    fhirCode: '113868',
  );

  /// value113870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113870 = ParticipationRoleType(
    fhirCode: '113870',
  );

  /// value113871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113871 = ParticipationRoleType(
    fhirCode: '113871',
  );

  /// value113872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113872 = ParticipationRoleType(
    fhirCode: '113872',
  );

  /// value113873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113873 = ParticipationRoleType(
    fhirCode: '113873',
  );

  /// value113874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113874 = ParticipationRoleType(
    fhirCode: '113874',
  );

  /// value113875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113875 = ParticipationRoleType(
    fhirCode: '113875',
  );

  /// value113876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113876 = ParticipationRoleType(
    fhirCode: '113876',
  );

  /// value113877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113877 = ParticipationRoleType(
    fhirCode: '113877',
  );

  /// value113878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113878 = ParticipationRoleType(
    fhirCode: '113878',
  );

  /// value113879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113879 = ParticipationRoleType(
    fhirCode: '113879',
  );

  /// value113880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113880 = ParticipationRoleType(
    fhirCode: '113880',
  );

  /// value113890
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113890 = ParticipationRoleType(
    fhirCode: '113890',
  );

  /// value113893
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113893 = ParticipationRoleType(
    fhirCode: '113893',
  );

  /// value113895
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113895 = ParticipationRoleType(
    fhirCode: '113895',
  );

  /// value113896
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113896 = ParticipationRoleType(
    fhirCode: '113896',
  );

  /// value113897
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113897 = ParticipationRoleType(
    fhirCode: '113897',
  );

  /// value113898
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113898 = ParticipationRoleType(
    fhirCode: '113898',
  );

  /// value113899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113899 = ParticipationRoleType(
    fhirCode: '113899',
  );

  /// value113900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113900 = ParticipationRoleType(
    fhirCode: '113900',
  );

  /// value113901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113901 = ParticipationRoleType(
    fhirCode: '113901',
  );

  /// value113902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113902 = ParticipationRoleType(
    fhirCode: '113902',
  );

  /// value113903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113903 = ParticipationRoleType(
    fhirCode: '113903',
  );

  /// value113904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113904 = ParticipationRoleType(
    fhirCode: '113904',
  );

  /// value113905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113905 = ParticipationRoleType(
    fhirCode: '113905',
  );

  /// value113906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113906 = ParticipationRoleType(
    fhirCode: '113906',
  );

  /// value113907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113907 = ParticipationRoleType(
    fhirCode: '113907',
  );

  /// value113908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113908 = ParticipationRoleType(
    fhirCode: '113908',
  );

  /// value113909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113909 = ParticipationRoleType(
    fhirCode: '113909',
  );

  /// value113910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113910 = ParticipationRoleType(
    fhirCode: '113910',
  );

  /// value113911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113911 = ParticipationRoleType(
    fhirCode: '113911',
  );

  /// value113912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113912 = ParticipationRoleType(
    fhirCode: '113912',
  );

  /// value113913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113913 = ParticipationRoleType(
    fhirCode: '113913',
  );

  /// value113914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113914 = ParticipationRoleType(
    fhirCode: '113914',
  );

  /// value113921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113921 = ParticipationRoleType(
    fhirCode: '113921',
  );

  /// value113922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113922 = ParticipationRoleType(
    fhirCode: '113922',
  );

  /// value113923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113923 = ParticipationRoleType(
    fhirCode: '113923',
  );

  /// value113930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113930 = ParticipationRoleType(
    fhirCode: '113930',
  );

  /// value113931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113931 = ParticipationRoleType(
    fhirCode: '113931',
  );

  /// value113932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113932 = ParticipationRoleType(
    fhirCode: '113932',
  );

  /// value113933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113933 = ParticipationRoleType(
    fhirCode: '113933',
  );

  /// value113934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113934 = ParticipationRoleType(
    fhirCode: '113934',
  );

  /// value113935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113935 = ParticipationRoleType(
    fhirCode: '113935',
  );

  /// value113936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113936 = ParticipationRoleType(
    fhirCode: '113936',
  );

  /// value113937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113937 = ParticipationRoleType(
    fhirCode: '113937',
  );

  /// value113940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113940 = ParticipationRoleType(
    fhirCode: '113940',
  );

  /// value113941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113941 = ParticipationRoleType(
    fhirCode: '113941',
  );

  /// value113942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113942 = ParticipationRoleType(
    fhirCode: '113942',
  );

  /// value113943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113943 = ParticipationRoleType(
    fhirCode: '113943',
  );

  /// value113944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113944 = ParticipationRoleType(
    fhirCode: '113944',
  );

  /// value113945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113945 = ParticipationRoleType(
    fhirCode: '113945',
  );

  /// value113946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113946 = ParticipationRoleType(
    fhirCode: '113946',
  );

  /// value113947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113947 = ParticipationRoleType(
    fhirCode: '113947',
  );

  /// value113948
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113948 = ParticipationRoleType(
    fhirCode: '113948',
  );

  /// value113949
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113949 = ParticipationRoleType(
    fhirCode: '113949',
  );

  /// value113950
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113950 = ParticipationRoleType(
    fhirCode: '113950',
  );

  /// value113951
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113951 = ParticipationRoleType(
    fhirCode: '113951',
  );

  /// value113952
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113952 = ParticipationRoleType(
    fhirCode: '113952',
  );

  /// value113953
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113953 = ParticipationRoleType(
    fhirCode: '113953',
  );

  /// value113954
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113954 = ParticipationRoleType(
    fhirCode: '113954',
  );

  /// value113955
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113955 = ParticipationRoleType(
    fhirCode: '113955',
  );

  /// value113956
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113956 = ParticipationRoleType(
    fhirCode: '113956',
  );

  /// value113957
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113957 = ParticipationRoleType(
    fhirCode: '113957',
  );

  /// value113958
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113958 = ParticipationRoleType(
    fhirCode: '113958',
  );

  /// value113959
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113959 = ParticipationRoleType(
    fhirCode: '113959',
  );

  /// value113961
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113961 = ParticipationRoleType(
    fhirCode: '113961',
  );

  /// value113962
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113962 = ParticipationRoleType(
    fhirCode: '113962',
  );

  /// value113963
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113963 = ParticipationRoleType(
    fhirCode: '113963',
  );

  /// value113970
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value113970 = ParticipationRoleType(
    fhirCode: '113970',
  );

  /// value114000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114000 = ParticipationRoleType(
    fhirCode: '114000',
  );

  /// value114001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114001 = ParticipationRoleType(
    fhirCode: '114001',
  );

  /// value114002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114002 = ParticipationRoleType(
    fhirCode: '114002',
  );

  /// value114003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114003 = ParticipationRoleType(
    fhirCode: '114003',
  );

  /// value114004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114004 = ParticipationRoleType(
    fhirCode: '114004',
  );

  /// value114005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114005 = ParticipationRoleType(
    fhirCode: '114005',
  );

  /// value114006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114006 = ParticipationRoleType(
    fhirCode: '114006',
  );

  /// value114007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114007 = ParticipationRoleType(
    fhirCode: '114007',
  );

  /// value114008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114008 = ParticipationRoleType(
    fhirCode: '114008',
  );

  /// value114009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114009 = ParticipationRoleType(
    fhirCode: '114009',
  );

  /// value114010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114010 = ParticipationRoleType(
    fhirCode: '114010',
  );

  /// value114011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114011 = ParticipationRoleType(
    fhirCode: '114011',
  );

  /// value114201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114201 = ParticipationRoleType(
    fhirCode: '114201',
  );

  /// value114202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114202 = ParticipationRoleType(
    fhirCode: '114202',
  );

  /// value114203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114203 = ParticipationRoleType(
    fhirCode: '114203',
  );

  /// value114204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114204 = ParticipationRoleType(
    fhirCode: '114204',
  );

  /// value114205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114205 = ParticipationRoleType(
    fhirCode: '114205',
  );

  /// value114206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114206 = ParticipationRoleType(
    fhirCode: '114206',
  );

  /// value114207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114207 = ParticipationRoleType(
    fhirCode: '114207',
  );

  /// value114208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114208 = ParticipationRoleType(
    fhirCode: '114208',
  );

  /// value114209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114209 = ParticipationRoleType(
    fhirCode: '114209',
  );

  /// value114210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114210 = ParticipationRoleType(
    fhirCode: '114210',
  );

  /// value114211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114211 = ParticipationRoleType(
    fhirCode: '114211',
  );

  /// value114213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114213 = ParticipationRoleType(
    fhirCode: '114213',
  );

  /// value114215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114215 = ParticipationRoleType(
    fhirCode: '114215',
  );

  /// value114216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value114216 = ParticipationRoleType(
    fhirCode: '114216',
  );

  /// value121001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121001 = ParticipationRoleType(
    fhirCode: '121001',
  );

  /// value121002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121002 = ParticipationRoleType(
    fhirCode: '121002',
  );

  /// value121003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121003 = ParticipationRoleType(
    fhirCode: '121003',
  );

  /// value121004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121004 = ParticipationRoleType(
    fhirCode: '121004',
  );

  /// value121005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121005 = ParticipationRoleType(
    fhirCode: '121005',
  );

  /// value121006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121006 = ParticipationRoleType(
    fhirCode: '121006',
  );

  /// value121007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121007 = ParticipationRoleType(
    fhirCode: '121007',
  );

  /// value121008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121008 = ParticipationRoleType(
    fhirCode: '121008',
  );

  /// value121009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121009 = ParticipationRoleType(
    fhirCode: '121009',
  );

  /// value121010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121010 = ParticipationRoleType(
    fhirCode: '121010',
  );

  /// value121011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121011 = ParticipationRoleType(
    fhirCode: '121011',
  );

  /// value121012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121012 = ParticipationRoleType(
    fhirCode: '121012',
  );

  /// value121013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121013 = ParticipationRoleType(
    fhirCode: '121013',
  );

  /// value121014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121014 = ParticipationRoleType(
    fhirCode: '121014',
  );

  /// value121015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121015 = ParticipationRoleType(
    fhirCode: '121015',
  );

  /// value121016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121016 = ParticipationRoleType(
    fhirCode: '121016',
  );

  /// value121017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121017 = ParticipationRoleType(
    fhirCode: '121017',
  );

  /// value121018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121018 = ParticipationRoleType(
    fhirCode: '121018',
  );

  /// value121019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121019 = ParticipationRoleType(
    fhirCode: '121019',
  );

  /// value121020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121020 = ParticipationRoleType(
    fhirCode: '121020',
  );

  /// value121021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121021 = ParticipationRoleType(
    fhirCode: '121021',
  );

  /// value121022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121022 = ParticipationRoleType(
    fhirCode: '121022',
  );

  /// value121023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121023 = ParticipationRoleType(
    fhirCode: '121023',
  );

  /// value121024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121024 = ParticipationRoleType(
    fhirCode: '121024',
  );

  /// value121025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121025 = ParticipationRoleType(
    fhirCode: '121025',
  );

  /// value121026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121026 = ParticipationRoleType(
    fhirCode: '121026',
  );

  /// value121027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121027 = ParticipationRoleType(
    fhirCode: '121027',
  );

  /// value121028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121028 = ParticipationRoleType(
    fhirCode: '121028',
  );

  /// value121029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121029 = ParticipationRoleType(
    fhirCode: '121029',
  );

  /// value121030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121030 = ParticipationRoleType(
    fhirCode: '121030',
  );

  /// value121031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121031 = ParticipationRoleType(
    fhirCode: '121031',
  );

  /// value121032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121032 = ParticipationRoleType(
    fhirCode: '121032',
  );

  /// value121033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121033 = ParticipationRoleType(
    fhirCode: '121033',
  );

  /// value121034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121034 = ParticipationRoleType(
    fhirCode: '121034',
  );

  /// value121035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121035 = ParticipationRoleType(
    fhirCode: '121035',
  );

  /// value121036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121036 = ParticipationRoleType(
    fhirCode: '121036',
  );

  /// value121037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121037 = ParticipationRoleType(
    fhirCode: '121037',
  );

  /// value121038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121038 = ParticipationRoleType(
    fhirCode: '121038',
  );

  /// value121039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121039 = ParticipationRoleType(
    fhirCode: '121039',
  );

  /// value121040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121040 = ParticipationRoleType(
    fhirCode: '121040',
  );

  /// value121041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121041 = ParticipationRoleType(
    fhirCode: '121041',
  );

  /// value121042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121042 = ParticipationRoleType(
    fhirCode: '121042',
  );

  /// value121043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121043 = ParticipationRoleType(
    fhirCode: '121043',
  );

  /// value121044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121044 = ParticipationRoleType(
    fhirCode: '121044',
  );

  /// value121045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121045 = ParticipationRoleType(
    fhirCode: '121045',
  );

  /// value121046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121046 = ParticipationRoleType(
    fhirCode: '121046',
  );

  /// value121047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121047 = ParticipationRoleType(
    fhirCode: '121047',
  );

  /// value121048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121048 = ParticipationRoleType(
    fhirCode: '121048',
  );

  /// value121049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121049 = ParticipationRoleType(
    fhirCode: '121049',
  );

  /// value121050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121050 = ParticipationRoleType(
    fhirCode: '121050',
  );

  /// value121051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121051 = ParticipationRoleType(
    fhirCode: '121051',
  );

  /// value121052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121052 = ParticipationRoleType(
    fhirCode: '121052',
  );

  /// value121053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121053 = ParticipationRoleType(
    fhirCode: '121053',
  );

  /// value121054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121054 = ParticipationRoleType(
    fhirCode: '121054',
  );

  /// value121055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121055 = ParticipationRoleType(
    fhirCode: '121055',
  );

  /// value121056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121056 = ParticipationRoleType(
    fhirCode: '121056',
  );

  /// value121057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121057 = ParticipationRoleType(
    fhirCode: '121057',
  );

  /// value121058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121058 = ParticipationRoleType(
    fhirCode: '121058',
  );

  /// value121059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121059 = ParticipationRoleType(
    fhirCode: '121059',
  );

  /// value121060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121060 = ParticipationRoleType(
    fhirCode: '121060',
  );

  /// value121062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121062 = ParticipationRoleType(
    fhirCode: '121062',
  );

  /// value121064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121064 = ParticipationRoleType(
    fhirCode: '121064',
  );

  /// value121065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121065 = ParticipationRoleType(
    fhirCode: '121065',
  );

  /// value121066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121066 = ParticipationRoleType(
    fhirCode: '121066',
  );

  /// value121068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121068 = ParticipationRoleType(
    fhirCode: '121068',
  );

  /// value121069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121069 = ParticipationRoleType(
    fhirCode: '121069',
  );

  /// value121070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121070 = ParticipationRoleType(
    fhirCode: '121070',
  );

  /// value121071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121071 = ParticipationRoleType(
    fhirCode: '121071',
  );

  /// value121072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121072 = ParticipationRoleType(
    fhirCode: '121072',
  );

  /// value121073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121073 = ParticipationRoleType(
    fhirCode: '121073',
  );

  /// value121074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121074 = ParticipationRoleType(
    fhirCode: '121074',
  );

  /// value121075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121075 = ParticipationRoleType(
    fhirCode: '121075',
  );

  /// value121076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121076 = ParticipationRoleType(
    fhirCode: '121076',
  );

  /// value121077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121077 = ParticipationRoleType(
    fhirCode: '121077',
  );

  /// value121078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121078 = ParticipationRoleType(
    fhirCode: '121078',
  );

  /// value121079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121079 = ParticipationRoleType(
    fhirCode: '121079',
  );

  /// value121080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121080 = ParticipationRoleType(
    fhirCode: '121080',
  );

  /// value121081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121081 = ParticipationRoleType(
    fhirCode: '121081',
  );

  /// value121082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121082 = ParticipationRoleType(
    fhirCode: '121082',
  );

  /// value121083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121083 = ParticipationRoleType(
    fhirCode: '121083',
  );

  /// value121084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121084 = ParticipationRoleType(
    fhirCode: '121084',
  );

  /// value121085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121085 = ParticipationRoleType(
    fhirCode: '121085',
  );

  /// value121086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121086 = ParticipationRoleType(
    fhirCode: '121086',
  );

  /// value121087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121087 = ParticipationRoleType(
    fhirCode: '121087',
  );

  /// value121088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121088 = ParticipationRoleType(
    fhirCode: '121088',
  );

  /// value121089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121089 = ParticipationRoleType(
    fhirCode: '121089',
  );

  /// value121090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121090 = ParticipationRoleType(
    fhirCode: '121090',
  );

  /// value121091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121091 = ParticipationRoleType(
    fhirCode: '121091',
  );

  /// value121092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121092 = ParticipationRoleType(
    fhirCode: '121092',
  );

  /// value121093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121093 = ParticipationRoleType(
    fhirCode: '121093',
  );

  /// value121094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121094 = ParticipationRoleType(
    fhirCode: '121094',
  );

  /// value121095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121095 = ParticipationRoleType(
    fhirCode: '121095',
  );

  /// value121096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121096 = ParticipationRoleType(
    fhirCode: '121096',
  );

  /// value121097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121097 = ParticipationRoleType(
    fhirCode: '121097',
  );

  /// value121098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121098 = ParticipationRoleType(
    fhirCode: '121098',
  );

  /// value121099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121099 = ParticipationRoleType(
    fhirCode: '121099',
  );

  /// value121100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121100 = ParticipationRoleType(
    fhirCode: '121100',
  );

  /// value121101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121101 = ParticipationRoleType(
    fhirCode: '121101',
  );

  /// value121102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121102 = ParticipationRoleType(
    fhirCode: '121102',
  );

  /// value121103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121103 = ParticipationRoleType(
    fhirCode: '121103',
  );

  /// value121104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121104 = ParticipationRoleType(
    fhirCode: '121104',
  );

  /// value121105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121105 = ParticipationRoleType(
    fhirCode: '121105',
  );

  /// value121106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121106 = ParticipationRoleType(
    fhirCode: '121106',
  );

  /// value121109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121109 = ParticipationRoleType(
    fhirCode: '121109',
  );

  /// value121110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121110 = ParticipationRoleType(
    fhirCode: '121110',
  );

  /// value121111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121111 = ParticipationRoleType(
    fhirCode: '121111',
  );

  /// value121112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121112 = ParticipationRoleType(
    fhirCode: '121112',
  );

  /// value121113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121113 = ParticipationRoleType(
    fhirCode: '121113',
  );

  /// value121114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121114 = ParticipationRoleType(
    fhirCode: '121114',
  );

  /// value121115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121115 = ParticipationRoleType(
    fhirCode: '121115',
  );

  /// value121116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121116 = ParticipationRoleType(
    fhirCode: '121116',
  );

  /// value121117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121117 = ParticipationRoleType(
    fhirCode: '121117',
  );

  /// value121118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121118 = ParticipationRoleType(
    fhirCode: '121118',
  );

  /// value121120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121120 = ParticipationRoleType(
    fhirCode: '121120',
  );

  /// value121121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121121 = ParticipationRoleType(
    fhirCode: '121121',
  );

  /// value121122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121122 = ParticipationRoleType(
    fhirCode: '121122',
  );

  /// value121123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121123 = ParticipationRoleType(
    fhirCode: '121123',
  );

  /// value121124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121124 = ParticipationRoleType(
    fhirCode: '121124',
  );

  /// value121125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121125 = ParticipationRoleType(
    fhirCode: '121125',
  );

  /// value121126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121126 = ParticipationRoleType(
    fhirCode: '121126',
  );

  /// value121127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121127 = ParticipationRoleType(
    fhirCode: '121127',
  );

  /// value121128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121128 = ParticipationRoleType(
    fhirCode: '121128',
  );

  /// value121130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121130 = ParticipationRoleType(
    fhirCode: '121130',
  );

  /// value121131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121131 = ParticipationRoleType(
    fhirCode: '121131',
  );

  /// value121132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121132 = ParticipationRoleType(
    fhirCode: '121132',
  );

  /// value121133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121133 = ParticipationRoleType(
    fhirCode: '121133',
  );

  /// value121135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121135 = ParticipationRoleType(
    fhirCode: '121135',
  );

  /// value121136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121136 = ParticipationRoleType(
    fhirCode: '121136',
  );

  /// value121137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121137 = ParticipationRoleType(
    fhirCode: '121137',
  );

  /// value121138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121138 = ParticipationRoleType(
    fhirCode: '121138',
  );

  /// value121139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121139 = ParticipationRoleType(
    fhirCode: '121139',
  );

  /// value121140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121140 = ParticipationRoleType(
    fhirCode: '121140',
  );

  /// value121141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121141 = ParticipationRoleType(
    fhirCode: '121141',
  );

  /// value121142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121142 = ParticipationRoleType(
    fhirCode: '121142',
  );

  /// value121143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121143 = ParticipationRoleType(
    fhirCode: '121143',
  );

  /// value121144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121144 = ParticipationRoleType(
    fhirCode: '121144',
  );

  /// value121145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121145 = ParticipationRoleType(
    fhirCode: '121145',
  );

  /// value121146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121146 = ParticipationRoleType(
    fhirCode: '121146',
  );

  /// value121147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121147 = ParticipationRoleType(
    fhirCode: '121147',
  );

  /// value121148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121148 = ParticipationRoleType(
    fhirCode: '121148',
  );

  /// value121149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121149 = ParticipationRoleType(
    fhirCode: '121149',
  );

  /// value121150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121150 = ParticipationRoleType(
    fhirCode: '121150',
  );

  /// value121151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121151 = ParticipationRoleType(
    fhirCode: '121151',
  );

  /// value121152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121152 = ParticipationRoleType(
    fhirCode: '121152',
  );

  /// value121153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121153 = ParticipationRoleType(
    fhirCode: '121153',
  );

  /// value121154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121154 = ParticipationRoleType(
    fhirCode: '121154',
  );

  /// value121155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121155 = ParticipationRoleType(
    fhirCode: '121155',
  );

  /// value121156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121156 = ParticipationRoleType(
    fhirCode: '121156',
  );

  /// value121157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121157 = ParticipationRoleType(
    fhirCode: '121157',
  );

  /// value121158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121158 = ParticipationRoleType(
    fhirCode: '121158',
  );

  /// value121160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121160 = ParticipationRoleType(
    fhirCode: '121160',
  );

  /// value121161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121161 = ParticipationRoleType(
    fhirCode: '121161',
  );

  /// value121162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121162 = ParticipationRoleType(
    fhirCode: '121162',
  );

  /// value121163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121163 = ParticipationRoleType(
    fhirCode: '121163',
  );

  /// value121165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121165 = ParticipationRoleType(
    fhirCode: '121165',
  );

  /// value121166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121166 = ParticipationRoleType(
    fhirCode: '121166',
  );

  /// value121167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121167 = ParticipationRoleType(
    fhirCode: '121167',
  );

  /// value121168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121168 = ParticipationRoleType(
    fhirCode: '121168',
  );

  /// value121169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121169 = ParticipationRoleType(
    fhirCode: '121169',
  );

  /// value121171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121171 = ParticipationRoleType(
    fhirCode: '121171',
  );

  /// value121172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121172 = ParticipationRoleType(
    fhirCode: '121172',
  );

  /// value121173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121173 = ParticipationRoleType(
    fhirCode: '121173',
  );

  /// value121174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121174 = ParticipationRoleType(
    fhirCode: '121174',
  );

  /// value121180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121180 = ParticipationRoleType(
    fhirCode: '121180',
  );

  /// value121181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121181 = ParticipationRoleType(
    fhirCode: '121181',
  );

  /// value121190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121190 = ParticipationRoleType(
    fhirCode: '121190',
  );

  /// value121191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121191 = ParticipationRoleType(
    fhirCode: '121191',
  );

  /// value121192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121192 = ParticipationRoleType(
    fhirCode: '121192',
  );

  /// value121193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121193 = ParticipationRoleType(
    fhirCode: '121193',
  );

  /// value121194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121194 = ParticipationRoleType(
    fhirCode: '121194',
  );

  /// value121195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121195 = ParticipationRoleType(
    fhirCode: '121195',
  );

  /// value121196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121196 = ParticipationRoleType(
    fhirCode: '121196',
  );

  /// value121197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121197 = ParticipationRoleType(
    fhirCode: '121197',
  );

  /// value121198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121198 = ParticipationRoleType(
    fhirCode: '121198',
  );

  /// value121200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121200 = ParticipationRoleType(
    fhirCode: '121200',
  );

  /// value121201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121201 = ParticipationRoleType(
    fhirCode: '121201',
  );

  /// value121202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121202 = ParticipationRoleType(
    fhirCode: '121202',
  );

  /// value121206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121206 = ParticipationRoleType(
    fhirCode: '121206',
  );

  /// value121207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121207 = ParticipationRoleType(
    fhirCode: '121207',
  );

  /// value121208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121208 = ParticipationRoleType(
    fhirCode: '121208',
  );

  /// value121210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121210 = ParticipationRoleType(
    fhirCode: '121210',
  );

  /// value121211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121211 = ParticipationRoleType(
    fhirCode: '121211',
  );

  /// value121213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121213 = ParticipationRoleType(
    fhirCode: '121213',
  );

  /// value121214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121214 = ParticipationRoleType(
    fhirCode: '121214',
  );

  /// value121216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121216 = ParticipationRoleType(
    fhirCode: '121216',
  );

  /// value121217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121217 = ParticipationRoleType(
    fhirCode: '121217',
  );

  /// value121218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121218 = ParticipationRoleType(
    fhirCode: '121218',
  );

  /// value121219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121219 = ParticipationRoleType(
    fhirCode: '121219',
  );

  /// value121220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121220 = ParticipationRoleType(
    fhirCode: '121220',
  );

  /// value121221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121221 = ParticipationRoleType(
    fhirCode: '121221',
  );

  /// value121222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121222 = ParticipationRoleType(
    fhirCode: '121222',
  );

  /// value121230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121230 = ParticipationRoleType(
    fhirCode: '121230',
  );

  /// value121231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121231 = ParticipationRoleType(
    fhirCode: '121231',
  );

  /// value121232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121232 = ParticipationRoleType(
    fhirCode: '121232',
  );

  /// value121233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121233 = ParticipationRoleType(
    fhirCode: '121233',
  );

  /// value121242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121242 = ParticipationRoleType(
    fhirCode: '121242',
  );

  /// value121243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121243 = ParticipationRoleType(
    fhirCode: '121243',
  );

  /// value121244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121244 = ParticipationRoleType(
    fhirCode: '121244',
  );

  /// value121290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121290 = ParticipationRoleType(
    fhirCode: '121290',
  );

  /// value121291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121291 = ParticipationRoleType(
    fhirCode: '121291',
  );

  /// value121301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121301 = ParticipationRoleType(
    fhirCode: '121301',
  );

  /// value121302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121302 = ParticipationRoleType(
    fhirCode: '121302',
  );

  /// value121303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121303 = ParticipationRoleType(
    fhirCode: '121303',
  );

  /// value121304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121304 = ParticipationRoleType(
    fhirCode: '121304',
  );

  /// value121305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121305 = ParticipationRoleType(
    fhirCode: '121305',
  );

  /// value121306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121306 = ParticipationRoleType(
    fhirCode: '121306',
  );

  /// value121307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121307 = ParticipationRoleType(
    fhirCode: '121307',
  );

  /// value121311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121311 = ParticipationRoleType(
    fhirCode: '121311',
  );

  /// value121312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121312 = ParticipationRoleType(
    fhirCode: '121312',
  );

  /// value121313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121313 = ParticipationRoleType(
    fhirCode: '121313',
  );

  /// value121314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121314 = ParticipationRoleType(
    fhirCode: '121314',
  );

  /// value121315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121315 = ParticipationRoleType(
    fhirCode: '121315',
  );

  /// value121316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121316 = ParticipationRoleType(
    fhirCode: '121316',
  );

  /// value121317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121317 = ParticipationRoleType(
    fhirCode: '121317',
  );

  /// value121318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121318 = ParticipationRoleType(
    fhirCode: '121318',
  );

  /// value121320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121320 = ParticipationRoleType(
    fhirCode: '121320',
  );

  /// value121321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121321 = ParticipationRoleType(
    fhirCode: '121321',
  );

  /// value121322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121322 = ParticipationRoleType(
    fhirCode: '121322',
  );

  /// value121323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121323 = ParticipationRoleType(
    fhirCode: '121323',
  );

  /// value121324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121324 = ParticipationRoleType(
    fhirCode: '121324',
  );

  /// value121325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121325 = ParticipationRoleType(
    fhirCode: '121325',
  );

  /// value121326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121326 = ParticipationRoleType(
    fhirCode: '121326',
  );

  /// value121327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121327 = ParticipationRoleType(
    fhirCode: '121327',
  );

  /// value121328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121328 = ParticipationRoleType(
    fhirCode: '121328',
  );

  /// value121329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121329 = ParticipationRoleType(
    fhirCode: '121329',
  );

  /// value121330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121330 = ParticipationRoleType(
    fhirCode: '121330',
  );

  /// value121331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121331 = ParticipationRoleType(
    fhirCode: '121331',
  );

  /// value121332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121332 = ParticipationRoleType(
    fhirCode: '121332',
  );

  /// value121333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121333 = ParticipationRoleType(
    fhirCode: '121333',
  );

  /// value121334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121334 = ParticipationRoleType(
    fhirCode: '121334',
  );

  /// value121335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121335 = ParticipationRoleType(
    fhirCode: '121335',
  );

  /// value121338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121338 = ParticipationRoleType(
    fhirCode: '121338',
  );

  /// value121339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121339 = ParticipationRoleType(
    fhirCode: '121339',
  );

  /// value121340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121340 = ParticipationRoleType(
    fhirCode: '121340',
  );

  /// value121341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121341 = ParticipationRoleType(
    fhirCode: '121341',
  );

  /// value121342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121342 = ParticipationRoleType(
    fhirCode: '121342',
  );

  /// value121346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121346 = ParticipationRoleType(
    fhirCode: '121346',
  );

  /// value121347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121347 = ParticipationRoleType(
    fhirCode: '121347',
  );

  /// value121348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121348 = ParticipationRoleType(
    fhirCode: '121348',
  );

  /// value121349
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121349 = ParticipationRoleType(
    fhirCode: '121349',
  );

  /// value121350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121350 = ParticipationRoleType(
    fhirCode: '121350',
  );

  /// value121351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121351 = ParticipationRoleType(
    fhirCode: '121351',
  );

  /// value121352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121352 = ParticipationRoleType(
    fhirCode: '121352',
  );

  /// value121353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121353 = ParticipationRoleType(
    fhirCode: '121353',
  );

  /// value121354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121354 = ParticipationRoleType(
    fhirCode: '121354',
  );

  /// value121358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121358 = ParticipationRoleType(
    fhirCode: '121358',
  );

  /// value121360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121360 = ParticipationRoleType(
    fhirCode: '121360',
  );

  /// value121361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121361 = ParticipationRoleType(
    fhirCode: '121361',
  );

  /// value121362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121362 = ParticipationRoleType(
    fhirCode: '121362',
  );

  /// value121363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121363 = ParticipationRoleType(
    fhirCode: '121363',
  );

  /// value121370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121370 = ParticipationRoleType(
    fhirCode: '121370',
  );

  /// value121371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121371 = ParticipationRoleType(
    fhirCode: '121371',
  );

  /// value121372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121372 = ParticipationRoleType(
    fhirCode: '121372',
  );

  /// value121380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121380 = ParticipationRoleType(
    fhirCode: '121380',
  );

  /// value121381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121381 = ParticipationRoleType(
    fhirCode: '121381',
  );

  /// value121382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121382 = ParticipationRoleType(
    fhirCode: '121382',
  );

  /// value121383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121383 = ParticipationRoleType(
    fhirCode: '121383',
  );

  /// value121401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121401 = ParticipationRoleType(
    fhirCode: '121401',
  );

  /// value121402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121402 = ParticipationRoleType(
    fhirCode: '121402',
  );

  /// value121403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121403 = ParticipationRoleType(
    fhirCode: '121403',
  );

  /// value121404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121404 = ParticipationRoleType(
    fhirCode: '121404',
  );

  /// value121405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121405 = ParticipationRoleType(
    fhirCode: '121405',
  );

  /// value121406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121406 = ParticipationRoleType(
    fhirCode: '121406',
  );

  /// value121407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121407 = ParticipationRoleType(
    fhirCode: '121407',
  );

  /// value121408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121408 = ParticipationRoleType(
    fhirCode: '121408',
  );

  /// value121410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121410 = ParticipationRoleType(
    fhirCode: '121410',
  );

  /// value121411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121411 = ParticipationRoleType(
    fhirCode: '121411',
  );

  /// value121412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121412 = ParticipationRoleType(
    fhirCode: '121412',
  );

  /// value121414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121414 = ParticipationRoleType(
    fhirCode: '121414',
  );

  /// value121415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121415 = ParticipationRoleType(
    fhirCode: '121415',
  );

  /// value121416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121416 = ParticipationRoleType(
    fhirCode: '121416',
  );

  /// value121417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121417 = ParticipationRoleType(
    fhirCode: '121417',
  );

  /// value121420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121420 = ParticipationRoleType(
    fhirCode: '121420',
  );

  /// value121421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121421 = ParticipationRoleType(
    fhirCode: '121421',
  );

  /// value121422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121422 = ParticipationRoleType(
    fhirCode: '121422',
  );

  /// value121423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121423 = ParticipationRoleType(
    fhirCode: '121423',
  );

  /// value121424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121424 = ParticipationRoleType(
    fhirCode: '121424',
  );

  /// value121425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121425 = ParticipationRoleType(
    fhirCode: '121425',
  );

  /// value121427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121427 = ParticipationRoleType(
    fhirCode: '121427',
  );

  /// value121428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121428 = ParticipationRoleType(
    fhirCode: '121428',
  );

  /// value121430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121430 = ParticipationRoleType(
    fhirCode: '121430',
  );

  /// value121431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121431 = ParticipationRoleType(
    fhirCode: '121431',
  );

  /// value121432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121432 = ParticipationRoleType(
    fhirCode: '121432',
  );

  /// value121433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121433 = ParticipationRoleType(
    fhirCode: '121433',
  );

  /// value121434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121434 = ParticipationRoleType(
    fhirCode: '121434',
  );

  /// value121435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121435 = ParticipationRoleType(
    fhirCode: '121435',
  );

  /// value121436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121436 = ParticipationRoleType(
    fhirCode: '121436',
  );

  /// value121437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121437 = ParticipationRoleType(
    fhirCode: '121437',
  );

  /// value121438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121438 = ParticipationRoleType(
    fhirCode: '121438',
  );

  /// value121439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121439 = ParticipationRoleType(
    fhirCode: '121439',
  );

  /// value121701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121701 = ParticipationRoleType(
    fhirCode: '121701',
  );

  /// value121702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121702 = ParticipationRoleType(
    fhirCode: '121702',
  );

  /// value121703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121703 = ParticipationRoleType(
    fhirCode: '121703',
  );

  /// value121704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121704 = ParticipationRoleType(
    fhirCode: '121704',
  );

  /// value121705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121705 = ParticipationRoleType(
    fhirCode: '121705',
  );

  /// value121706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121706 = ParticipationRoleType(
    fhirCode: '121706',
  );

  /// value121707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121707 = ParticipationRoleType(
    fhirCode: '121707',
  );

  /// value121708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121708 = ParticipationRoleType(
    fhirCode: '121708',
  );

  /// value121709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121709 = ParticipationRoleType(
    fhirCode: '121709',
  );

  /// value121710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121710 = ParticipationRoleType(
    fhirCode: '121710',
  );

  /// value121711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121711 = ParticipationRoleType(
    fhirCode: '121711',
  );

  /// value121712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121712 = ParticipationRoleType(
    fhirCode: '121712',
  );

  /// value121713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121713 = ParticipationRoleType(
    fhirCode: '121713',
  );

  /// value121714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121714 = ParticipationRoleType(
    fhirCode: '121714',
  );

  /// value121715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121715 = ParticipationRoleType(
    fhirCode: '121715',
  );

  /// value121716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121716 = ParticipationRoleType(
    fhirCode: '121716',
  );

  /// value121717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121717 = ParticipationRoleType(
    fhirCode: '121717',
  );

  /// value121718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121718 = ParticipationRoleType(
    fhirCode: '121718',
  );

  /// value121719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121719 = ParticipationRoleType(
    fhirCode: '121719',
  );

  /// value121720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121720 = ParticipationRoleType(
    fhirCode: '121720',
  );

  /// value121721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121721 = ParticipationRoleType(
    fhirCode: '121721',
  );

  /// value121722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121722 = ParticipationRoleType(
    fhirCode: '121722',
  );

  /// value121723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121723 = ParticipationRoleType(
    fhirCode: '121723',
  );

  /// value121724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121724 = ParticipationRoleType(
    fhirCode: '121724',
  );

  /// value121725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121725 = ParticipationRoleType(
    fhirCode: '121725',
  );

  /// value121726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121726 = ParticipationRoleType(
    fhirCode: '121726',
  );

  /// value121727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121727 = ParticipationRoleType(
    fhirCode: '121727',
  );

  /// value121728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121728 = ParticipationRoleType(
    fhirCode: '121728',
  );

  /// value121729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121729 = ParticipationRoleType(
    fhirCode: '121729',
  );

  /// value121730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121730 = ParticipationRoleType(
    fhirCode: '121730',
  );

  /// value121731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121731 = ParticipationRoleType(
    fhirCode: '121731',
  );

  /// value121732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121732 = ParticipationRoleType(
    fhirCode: '121732',
  );

  /// value121733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121733 = ParticipationRoleType(
    fhirCode: '121733',
  );

  /// value121734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121734 = ParticipationRoleType(
    fhirCode: '121734',
  );

  /// value121740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value121740 = ParticipationRoleType(
    fhirCode: '121740',
  );

  /// value122001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122001 = ParticipationRoleType(
    fhirCode: '122001',
  );

  /// value122002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122002 = ParticipationRoleType(
    fhirCode: '122002',
  );

  /// value122003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122003 = ParticipationRoleType(
    fhirCode: '122003',
  );

  /// value122004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122004 = ParticipationRoleType(
    fhirCode: '122004',
  );

  /// value122005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122005 = ParticipationRoleType(
    fhirCode: '122005',
  );

  /// value122006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122006 = ParticipationRoleType(
    fhirCode: '122006',
  );

  /// value122007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122007 = ParticipationRoleType(
    fhirCode: '122007',
  );

  /// value122008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122008 = ParticipationRoleType(
    fhirCode: '122008',
  );

  /// value122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122009 = ParticipationRoleType(
    fhirCode: '122009',
  );

  /// value122010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122010 = ParticipationRoleType(
    fhirCode: '122010',
  );

  /// value122011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122011 = ParticipationRoleType(
    fhirCode: '122011',
  );

  /// value122012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122012 = ParticipationRoleType(
    fhirCode: '122012',
  );

  /// value122020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122020 = ParticipationRoleType(
    fhirCode: '122020',
  );

  /// value122021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122021 = ParticipationRoleType(
    fhirCode: '122021',
  );

  /// value122022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122022 = ParticipationRoleType(
    fhirCode: '122022',
  );

  /// value122023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122023 = ParticipationRoleType(
    fhirCode: '122023',
  );

  /// value122024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122024 = ParticipationRoleType(
    fhirCode: '122024',
  );

  /// value122025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122025 = ParticipationRoleType(
    fhirCode: '122025',
  );

  /// value122026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122026 = ParticipationRoleType(
    fhirCode: '122026',
  );

  /// value122027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122027 = ParticipationRoleType(
    fhirCode: '122027',
  );

  /// value122028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122028 = ParticipationRoleType(
    fhirCode: '122028',
  );

  /// value122029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122029 = ParticipationRoleType(
    fhirCode: '122029',
  );

  /// value122030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122030 = ParticipationRoleType(
    fhirCode: '122030',
  );

  /// value122031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122031 = ParticipationRoleType(
    fhirCode: '122031',
  );

  /// value122032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122032 = ParticipationRoleType(
    fhirCode: '122032',
  );

  /// value122033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122033 = ParticipationRoleType(
    fhirCode: '122033',
  );

  /// value122034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122034 = ParticipationRoleType(
    fhirCode: '122034',
  );

  /// value122035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122035 = ParticipationRoleType(
    fhirCode: '122035',
  );

  /// value122036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122036 = ParticipationRoleType(
    fhirCode: '122036',
  );

  /// value122037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122037 = ParticipationRoleType(
    fhirCode: '122037',
  );

  /// value122038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122038 = ParticipationRoleType(
    fhirCode: '122038',
  );

  /// value122039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122039 = ParticipationRoleType(
    fhirCode: '122039',
  );

  /// value122041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122041 = ParticipationRoleType(
    fhirCode: '122041',
  );

  /// value122042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122042 = ParticipationRoleType(
    fhirCode: '122042',
  );

  /// value122043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122043 = ParticipationRoleType(
    fhirCode: '122043',
  );

  /// value122044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122044 = ParticipationRoleType(
    fhirCode: '122044',
  );

  /// value122045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122045 = ParticipationRoleType(
    fhirCode: '122045',
  );

  /// value122046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122046 = ParticipationRoleType(
    fhirCode: '122046',
  );

  /// value122047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122047 = ParticipationRoleType(
    fhirCode: '122047',
  );

  /// value122048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122048 = ParticipationRoleType(
    fhirCode: '122048',
  );

  /// value122049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122049 = ParticipationRoleType(
    fhirCode: '122049',
  );

  /// value122052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122052 = ParticipationRoleType(
    fhirCode: '122052',
  );

  /// value122053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122053 = ParticipationRoleType(
    fhirCode: '122053',
  );

  /// value122054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122054 = ParticipationRoleType(
    fhirCode: '122054',
  );

  /// value122055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122055 = ParticipationRoleType(
    fhirCode: '122055',
  );

  /// value122056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122056 = ParticipationRoleType(
    fhirCode: '122056',
  );

  /// value122057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122057 = ParticipationRoleType(
    fhirCode: '122057',
  );

  /// value122058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122058 = ParticipationRoleType(
    fhirCode: '122058',
  );

  /// value122059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122059 = ParticipationRoleType(
    fhirCode: '122059',
  );

  /// value122060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122060 = ParticipationRoleType(
    fhirCode: '122060',
  );

  /// value122061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122061 = ParticipationRoleType(
    fhirCode: '122061',
  );

  /// value122062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122062 = ParticipationRoleType(
    fhirCode: '122062',
  );

  /// value122072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122072 = ParticipationRoleType(
    fhirCode: '122072',
  );

  /// value122073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122073 = ParticipationRoleType(
    fhirCode: '122073',
  );

  /// value122075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122075 = ParticipationRoleType(
    fhirCode: '122075',
  );

  /// value122076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122076 = ParticipationRoleType(
    fhirCode: '122076',
  );

  /// value122077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122077 = ParticipationRoleType(
    fhirCode: '122077',
  );

  /// value122078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122078 = ParticipationRoleType(
    fhirCode: '122078',
  );

  /// value122079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122079 = ParticipationRoleType(
    fhirCode: '122079',
  );

  /// value122081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122081 = ParticipationRoleType(
    fhirCode: '122081',
  );

  /// value122082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122082 = ParticipationRoleType(
    fhirCode: '122082',
  );

  /// value122083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122083 = ParticipationRoleType(
    fhirCode: '122083',
  );

  /// value122084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122084 = ParticipationRoleType(
    fhirCode: '122084',
  );

  /// value122085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122085 = ParticipationRoleType(
    fhirCode: '122085',
  );

  /// value122086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122086 = ParticipationRoleType(
    fhirCode: '122086',
  );

  /// value122087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122087 = ParticipationRoleType(
    fhirCode: '122087',
  );

  /// value122088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122088 = ParticipationRoleType(
    fhirCode: '122088',
  );

  /// value122089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122089 = ParticipationRoleType(
    fhirCode: '122089',
  );

  /// value122090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122090 = ParticipationRoleType(
    fhirCode: '122090',
  );

  /// value122091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122091 = ParticipationRoleType(
    fhirCode: '122091',
  );

  /// value122092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122092 = ParticipationRoleType(
    fhirCode: '122092',
  );

  /// value122093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122093 = ParticipationRoleType(
    fhirCode: '122093',
  );

  /// value122094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122094 = ParticipationRoleType(
    fhirCode: '122094',
  );

  /// value122095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122095 = ParticipationRoleType(
    fhirCode: '122095',
  );

  /// value122096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122096 = ParticipationRoleType(
    fhirCode: '122096',
  );

  /// value122097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122097 = ParticipationRoleType(
    fhirCode: '122097',
  );

  /// value122098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122098 = ParticipationRoleType(
    fhirCode: '122098',
  );

  /// value122099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122099 = ParticipationRoleType(
    fhirCode: '122099',
  );

  /// value122101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122101 = ParticipationRoleType(
    fhirCode: '122101',
  );

  /// value122102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122102 = ParticipationRoleType(
    fhirCode: '122102',
  );

  /// value122103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122103 = ParticipationRoleType(
    fhirCode: '122103',
  );

  /// value122104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122104 = ParticipationRoleType(
    fhirCode: '122104',
  );

  /// value122105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122105 = ParticipationRoleType(
    fhirCode: '122105',
  );

  /// value122106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122106 = ParticipationRoleType(
    fhirCode: '122106',
  );

  /// value122107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122107 = ParticipationRoleType(
    fhirCode: '122107',
  );

  /// value122108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122108 = ParticipationRoleType(
    fhirCode: '122108',
  );

  /// value122109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122109 = ParticipationRoleType(
    fhirCode: '122109',
  );

  /// value122110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122110 = ParticipationRoleType(
    fhirCode: '122110',
  );

  /// value122111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122111 = ParticipationRoleType(
    fhirCode: '122111',
  );

  /// value122112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122112 = ParticipationRoleType(
    fhirCode: '122112',
  );

  /// value122113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122113 = ParticipationRoleType(
    fhirCode: '122113',
  );

  /// value122114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122114 = ParticipationRoleType(
    fhirCode: '122114',
  );

  /// value122120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122120 = ParticipationRoleType(
    fhirCode: '122120',
  );

  /// value122121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122121 = ParticipationRoleType(
    fhirCode: '122121',
  );

  /// value122122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122122 = ParticipationRoleType(
    fhirCode: '122122',
  );

  /// value122123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122123 = ParticipationRoleType(
    fhirCode: '122123',
  );

  /// value122124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122124 = ParticipationRoleType(
    fhirCode: '122124',
  );

  /// value122125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122125 = ParticipationRoleType(
    fhirCode: '122125',
  );

  /// value122126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122126 = ParticipationRoleType(
    fhirCode: '122126',
  );

  /// value122127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122127 = ParticipationRoleType(
    fhirCode: '122127',
  );

  /// value122128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122128 = ParticipationRoleType(
    fhirCode: '122128',
  );

  /// value122129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122129 = ParticipationRoleType(
    fhirCode: '122129',
  );

  /// value122130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122130 = ParticipationRoleType(
    fhirCode: '122130',
  );

  /// value122131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122131 = ParticipationRoleType(
    fhirCode: '122131',
  );

  /// value122132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122132 = ParticipationRoleType(
    fhirCode: '122132',
  );

  /// value122133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122133 = ParticipationRoleType(
    fhirCode: '122133',
  );

  /// value122134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122134 = ParticipationRoleType(
    fhirCode: '122134',
  );

  /// value122138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122138 = ParticipationRoleType(
    fhirCode: '122138',
  );

  /// value122139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122139 = ParticipationRoleType(
    fhirCode: '122139',
  );

  /// value122140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122140 = ParticipationRoleType(
    fhirCode: '122140',
  );

  /// value122141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122141 = ParticipationRoleType(
    fhirCode: '122141',
  );

  /// value122142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122142 = ParticipationRoleType(
    fhirCode: '122142',
  );

  /// value122143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122143 = ParticipationRoleType(
    fhirCode: '122143',
  );

  /// value122144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122144 = ParticipationRoleType(
    fhirCode: '122144',
  );

  /// value122145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122145 = ParticipationRoleType(
    fhirCode: '122145',
  );

  /// value122146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122146 = ParticipationRoleType(
    fhirCode: '122146',
  );

  /// value122147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122147 = ParticipationRoleType(
    fhirCode: '122147',
  );

  /// value122148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122148 = ParticipationRoleType(
    fhirCode: '122148',
  );

  /// value122149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122149 = ParticipationRoleType(
    fhirCode: '122149',
  );

  /// value122150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122150 = ParticipationRoleType(
    fhirCode: '122150',
  );

  /// value122151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122151 = ParticipationRoleType(
    fhirCode: '122151',
  );

  /// value122152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122152 = ParticipationRoleType(
    fhirCode: '122152',
  );

  /// value122153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122153 = ParticipationRoleType(
    fhirCode: '122153',
  );

  /// value122154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122154 = ParticipationRoleType(
    fhirCode: '122154',
  );

  /// value122157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122157 = ParticipationRoleType(
    fhirCode: '122157',
  );

  /// value122158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122158 = ParticipationRoleType(
    fhirCode: '122158',
  );

  /// value122159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122159 = ParticipationRoleType(
    fhirCode: '122159',
  );

  /// value122160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122160 = ParticipationRoleType(
    fhirCode: '122160',
  );

  /// value122161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122161 = ParticipationRoleType(
    fhirCode: '122161',
  );

  /// value122162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122162 = ParticipationRoleType(
    fhirCode: '122162',
  );

  /// value122163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122163 = ParticipationRoleType(
    fhirCode: '122163',
  );

  /// value122164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122164 = ParticipationRoleType(
    fhirCode: '122164',
  );

  /// value122165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122165 = ParticipationRoleType(
    fhirCode: '122165',
  );

  /// value122166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122166 = ParticipationRoleType(
    fhirCode: '122166',
  );

  /// value122167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122167 = ParticipationRoleType(
    fhirCode: '122167',
  );

  /// value122170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122170 = ParticipationRoleType(
    fhirCode: '122170',
  );

  /// value122171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122171 = ParticipationRoleType(
    fhirCode: '122171',
  );

  /// value122172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122172 = ParticipationRoleType(
    fhirCode: '122172',
  );

  /// value122173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122173 = ParticipationRoleType(
    fhirCode: '122173',
  );

  /// value122175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122175 = ParticipationRoleType(
    fhirCode: '122175',
  );

  /// value122176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122176 = ParticipationRoleType(
    fhirCode: '122176',
  );

  /// value122177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122177 = ParticipationRoleType(
    fhirCode: '122177',
  );

  /// value122178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122178 = ParticipationRoleType(
    fhirCode: '122178',
  );

  /// value122179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122179 = ParticipationRoleType(
    fhirCode: '122179',
  );

  /// value122180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122180 = ParticipationRoleType(
    fhirCode: '122180',
  );

  /// value122181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122181 = ParticipationRoleType(
    fhirCode: '122181',
  );

  /// value122182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122182 = ParticipationRoleType(
    fhirCode: '122182',
  );

  /// value122183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122183 = ParticipationRoleType(
    fhirCode: '122183',
  );

  /// value122185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122185 = ParticipationRoleType(
    fhirCode: '122185',
  );

  /// value122187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122187 = ParticipationRoleType(
    fhirCode: '122187',
  );

  /// value122188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122188 = ParticipationRoleType(
    fhirCode: '122188',
  );

  /// value122189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122189 = ParticipationRoleType(
    fhirCode: '122189',
  );

  /// value122190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122190 = ParticipationRoleType(
    fhirCode: '122190',
  );

  /// value122191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122191 = ParticipationRoleType(
    fhirCode: '122191',
  );

  /// value122192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122192 = ParticipationRoleType(
    fhirCode: '122192',
  );

  /// value122193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122193 = ParticipationRoleType(
    fhirCode: '122193',
  );

  /// value122194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122194 = ParticipationRoleType(
    fhirCode: '122194',
  );

  /// value122195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122195 = ParticipationRoleType(
    fhirCode: '122195',
  );

  /// value122196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122196 = ParticipationRoleType(
    fhirCode: '122196',
  );

  /// value122197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122197 = ParticipationRoleType(
    fhirCode: '122197',
  );

  /// value122198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122198 = ParticipationRoleType(
    fhirCode: '122198',
  );

  /// value122199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122199 = ParticipationRoleType(
    fhirCode: '122199',
  );

  /// value122201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122201 = ParticipationRoleType(
    fhirCode: '122201',
  );

  /// value122202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122202 = ParticipationRoleType(
    fhirCode: '122202',
  );

  /// value122203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122203 = ParticipationRoleType(
    fhirCode: '122203',
  );

  /// value122204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122204 = ParticipationRoleType(
    fhirCode: '122204',
  );

  /// value122205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122205 = ParticipationRoleType(
    fhirCode: '122205',
  );

  /// value122206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122206 = ParticipationRoleType(
    fhirCode: '122206',
  );

  /// value122207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122207 = ParticipationRoleType(
    fhirCode: '122207',
  );

  /// value122208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122208 = ParticipationRoleType(
    fhirCode: '122208',
  );

  /// value122209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122209 = ParticipationRoleType(
    fhirCode: '122209',
  );

  /// value122210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122210 = ParticipationRoleType(
    fhirCode: '122210',
  );

  /// value122211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122211 = ParticipationRoleType(
    fhirCode: '122211',
  );

  /// value122212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122212 = ParticipationRoleType(
    fhirCode: '122212',
  );

  /// value122213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122213 = ParticipationRoleType(
    fhirCode: '122213',
  );

  /// value122214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122214 = ParticipationRoleType(
    fhirCode: '122214',
  );

  /// value122215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122215 = ParticipationRoleType(
    fhirCode: '122215',
  );

  /// value122216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122216 = ParticipationRoleType(
    fhirCode: '122216',
  );

  /// value122217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122217 = ParticipationRoleType(
    fhirCode: '122217',
  );

  /// value122218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122218 = ParticipationRoleType(
    fhirCode: '122218',
  );

  /// value122219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122219 = ParticipationRoleType(
    fhirCode: '122219',
  );

  /// value122220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122220 = ParticipationRoleType(
    fhirCode: '122220',
  );

  /// value122221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122221 = ParticipationRoleType(
    fhirCode: '122221',
  );

  /// value122222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122222 = ParticipationRoleType(
    fhirCode: '122222',
  );

  /// value122223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122223 = ParticipationRoleType(
    fhirCode: '122223',
  );

  /// value122224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122224 = ParticipationRoleType(
    fhirCode: '122224',
  );

  /// value122225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122225 = ParticipationRoleType(
    fhirCode: '122225',
  );

  /// value122227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122227 = ParticipationRoleType(
    fhirCode: '122227',
  );

  /// value122228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122228 = ParticipationRoleType(
    fhirCode: '122228',
  );

  /// value122229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122229 = ParticipationRoleType(
    fhirCode: '122229',
  );

  /// value122230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122230 = ParticipationRoleType(
    fhirCode: '122230',
  );

  /// value122231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122231 = ParticipationRoleType(
    fhirCode: '122231',
  );

  /// value122232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122232 = ParticipationRoleType(
    fhirCode: '122232',
  );

  /// value122233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122233 = ParticipationRoleType(
    fhirCode: '122233',
  );

  /// value122234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122234 = ParticipationRoleType(
    fhirCode: '122234',
  );

  /// value122235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122235 = ParticipationRoleType(
    fhirCode: '122235',
  );

  /// value122236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122236 = ParticipationRoleType(
    fhirCode: '122236',
  );

  /// value122237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122237 = ParticipationRoleType(
    fhirCode: '122237',
  );

  /// value122238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122238 = ParticipationRoleType(
    fhirCode: '122238',
  );

  /// value122239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122239 = ParticipationRoleType(
    fhirCode: '122239',
  );

  /// value122240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122240 = ParticipationRoleType(
    fhirCode: '122240',
  );

  /// value122241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122241 = ParticipationRoleType(
    fhirCode: '122241',
  );

  /// value122242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122242 = ParticipationRoleType(
    fhirCode: '122242',
  );

  /// value122243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122243 = ParticipationRoleType(
    fhirCode: '122243',
  );

  /// value122244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122244 = ParticipationRoleType(
    fhirCode: '122244',
  );

  /// value122245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122245 = ParticipationRoleType(
    fhirCode: '122245',
  );

  /// value122246
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122246 = ParticipationRoleType(
    fhirCode: '122246',
  );

  /// value122247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122247 = ParticipationRoleType(
    fhirCode: '122247',
  );

  /// value122248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122248 = ParticipationRoleType(
    fhirCode: '122248',
  );

  /// value122249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122249 = ParticipationRoleType(
    fhirCode: '122249',
  );

  /// value122250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122250 = ParticipationRoleType(
    fhirCode: '122250',
  );

  /// value122251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122251 = ParticipationRoleType(
    fhirCode: '122251',
  );

  /// value122252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122252 = ParticipationRoleType(
    fhirCode: '122252',
  );

  /// value122253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122253 = ParticipationRoleType(
    fhirCode: '122253',
  );

  /// value122254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122254 = ParticipationRoleType(
    fhirCode: '122254',
  );

  /// value122255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122255 = ParticipationRoleType(
    fhirCode: '122255',
  );

  /// value122256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122256 = ParticipationRoleType(
    fhirCode: '122256',
  );

  /// value122257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122257 = ParticipationRoleType(
    fhirCode: '122257',
  );

  /// value122258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122258 = ParticipationRoleType(
    fhirCode: '122258',
  );

  /// value122259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122259 = ParticipationRoleType(
    fhirCode: '122259',
  );

  /// value122260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122260 = ParticipationRoleType(
    fhirCode: '122260',
  );

  /// value122261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122261 = ParticipationRoleType(
    fhirCode: '122261',
  );

  /// value122262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122262 = ParticipationRoleType(
    fhirCode: '122262',
  );

  /// value122263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122263 = ParticipationRoleType(
    fhirCode: '122263',
  );

  /// value122265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122265 = ParticipationRoleType(
    fhirCode: '122265',
  );

  /// value122266
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122266 = ParticipationRoleType(
    fhirCode: '122266',
  );

  /// value122267
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122267 = ParticipationRoleType(
    fhirCode: '122267',
  );

  /// value122268
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122268 = ParticipationRoleType(
    fhirCode: '122268',
  );

  /// value122269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122269 = ParticipationRoleType(
    fhirCode: '122269',
  );

  /// value122270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122270 = ParticipationRoleType(
    fhirCode: '122270',
  );

  /// value122271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122271 = ParticipationRoleType(
    fhirCode: '122271',
  );

  /// value122272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122272 = ParticipationRoleType(
    fhirCode: '122272',
  );

  /// value122273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122273 = ParticipationRoleType(
    fhirCode: '122273',
  );

  /// value122274
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122274 = ParticipationRoleType(
    fhirCode: '122274',
  );

  /// value122275
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122275 = ParticipationRoleType(
    fhirCode: '122275',
  );

  /// value122276
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122276 = ParticipationRoleType(
    fhirCode: '122276',
  );

  /// value122277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122277 = ParticipationRoleType(
    fhirCode: '122277',
  );

  /// value122278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122278 = ParticipationRoleType(
    fhirCode: '122278',
  );

  /// value122279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122279 = ParticipationRoleType(
    fhirCode: '122279',
  );

  /// value122281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122281 = ParticipationRoleType(
    fhirCode: '122281',
  );

  /// value122282
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122282 = ParticipationRoleType(
    fhirCode: '122282',
  );

  /// value122283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122283 = ParticipationRoleType(
    fhirCode: '122283',
  );

  /// value122288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122288 = ParticipationRoleType(
    fhirCode: '122288',
  );

  /// value122291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122291 = ParticipationRoleType(
    fhirCode: '122291',
  );

  /// value122292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122292 = ParticipationRoleType(
    fhirCode: '122292',
  );

  /// value122301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122301 = ParticipationRoleType(
    fhirCode: '122301',
  );

  /// value122302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122302 = ParticipationRoleType(
    fhirCode: '122302',
  );

  /// value122303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122303 = ParticipationRoleType(
    fhirCode: '122303',
  );

  /// value122304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122304 = ParticipationRoleType(
    fhirCode: '122304',
  );

  /// value122305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122305 = ParticipationRoleType(
    fhirCode: '122305',
  );

  /// value122306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122306 = ParticipationRoleType(
    fhirCode: '122306',
  );

  /// value122307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122307 = ParticipationRoleType(
    fhirCode: '122307',
  );

  /// value122308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122308 = ParticipationRoleType(
    fhirCode: '122308',
  );

  /// value122309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122309 = ParticipationRoleType(
    fhirCode: '122309',
  );

  /// value122310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122310 = ParticipationRoleType(
    fhirCode: '122310',
  );

  /// value122311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122311 = ParticipationRoleType(
    fhirCode: '122311',
  );

  /// value122312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122312 = ParticipationRoleType(
    fhirCode: '122312',
  );

  /// value122313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122313 = ParticipationRoleType(
    fhirCode: '122313',
  );

  /// value122319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122319 = ParticipationRoleType(
    fhirCode: '122319',
  );

  /// value122320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122320 = ParticipationRoleType(
    fhirCode: '122320',
  );

  /// value122321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122321 = ParticipationRoleType(
    fhirCode: '122321',
  );

  /// value122322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122322 = ParticipationRoleType(
    fhirCode: '122322',
  );

  /// value122325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122325 = ParticipationRoleType(
    fhirCode: '122325',
  );

  /// value122330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122330 = ParticipationRoleType(
    fhirCode: '122330',
  );

  /// value122331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122331 = ParticipationRoleType(
    fhirCode: '122331',
  );

  /// value122332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122332 = ParticipationRoleType(
    fhirCode: '122332',
  );

  /// value122333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122333 = ParticipationRoleType(
    fhirCode: '122333',
  );

  /// value122334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122334 = ParticipationRoleType(
    fhirCode: '122334',
  );

  /// value122335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122335 = ParticipationRoleType(
    fhirCode: '122335',
  );

  /// value122336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122336 = ParticipationRoleType(
    fhirCode: '122336',
  );

  /// value122337
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122337 = ParticipationRoleType(
    fhirCode: '122337',
  );

  /// value122339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122339 = ParticipationRoleType(
    fhirCode: '122339',
  );

  /// value122340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122340 = ParticipationRoleType(
    fhirCode: '122340',
  );

  /// value122341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122341 = ParticipationRoleType(
    fhirCode: '122341',
  );

  /// value122343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122343 = ParticipationRoleType(
    fhirCode: '122343',
  );

  /// value122344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122344 = ParticipationRoleType(
    fhirCode: '122344',
  );

  /// value122345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122345 = ParticipationRoleType(
    fhirCode: '122345',
  );

  /// value122346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122346 = ParticipationRoleType(
    fhirCode: '122346',
  );

  /// value122347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122347 = ParticipationRoleType(
    fhirCode: '122347',
  );

  /// value122348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122348 = ParticipationRoleType(
    fhirCode: '122348',
  );

  /// value122350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122350 = ParticipationRoleType(
    fhirCode: '122350',
  );

  /// value122351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122351 = ParticipationRoleType(
    fhirCode: '122351',
  );

  /// value122352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122352 = ParticipationRoleType(
    fhirCode: '122352',
  );

  /// value122354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122354 = ParticipationRoleType(
    fhirCode: '122354',
  );

  /// value122355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122355 = ParticipationRoleType(
    fhirCode: '122355',
  );

  /// value122356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122356 = ParticipationRoleType(
    fhirCode: '122356',
  );

  /// value122357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122357 = ParticipationRoleType(
    fhirCode: '122357',
  );

  /// value122360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122360 = ParticipationRoleType(
    fhirCode: '122360',
  );

  /// value122361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122361 = ParticipationRoleType(
    fhirCode: '122361',
  );

  /// value122363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122363 = ParticipationRoleType(
    fhirCode: '122363',
  );

  /// value122364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122364 = ParticipationRoleType(
    fhirCode: '122364',
  );

  /// value122367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122367 = ParticipationRoleType(
    fhirCode: '122367',
  );

  /// value122368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122368 = ParticipationRoleType(
    fhirCode: '122368',
  );

  /// value122369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122369 = ParticipationRoleType(
    fhirCode: '122369',
  );

  /// value122370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122370 = ParticipationRoleType(
    fhirCode: '122370',
  );

  /// value122371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122371 = ParticipationRoleType(
    fhirCode: '122371',
  );

  /// value122372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122372 = ParticipationRoleType(
    fhirCode: '122372',
  );

  /// value122374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122374 = ParticipationRoleType(
    fhirCode: '122374',
  );

  /// value122375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122375 = ParticipationRoleType(
    fhirCode: '122375',
  );

  /// value122376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122376 = ParticipationRoleType(
    fhirCode: '122376',
  );

  /// value122380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122380 = ParticipationRoleType(
    fhirCode: '122380',
  );

  /// value122381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122381 = ParticipationRoleType(
    fhirCode: '122381',
  );

  /// value122382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122382 = ParticipationRoleType(
    fhirCode: '122382',
  );

  /// value122383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122383 = ParticipationRoleType(
    fhirCode: '122383',
  );

  /// value122384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122384 = ParticipationRoleType(
    fhirCode: '122384',
  );

  /// value122385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122385 = ParticipationRoleType(
    fhirCode: '122385',
  );

  /// value122386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122386 = ParticipationRoleType(
    fhirCode: '122386',
  );

  /// value122387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122387 = ParticipationRoleType(
    fhirCode: '122387',
  );

  /// value122388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122388 = ParticipationRoleType(
    fhirCode: '122388',
  );

  /// value122389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122389 = ParticipationRoleType(
    fhirCode: '122389',
  );

  /// value122390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122390 = ParticipationRoleType(
    fhirCode: '122390',
  );

  /// value122391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122391 = ParticipationRoleType(
    fhirCode: '122391',
  );

  /// value122393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122393 = ParticipationRoleType(
    fhirCode: '122393',
  );

  /// value122394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122394 = ParticipationRoleType(
    fhirCode: '122394',
  );

  /// value122395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122395 = ParticipationRoleType(
    fhirCode: '122395',
  );

  /// value122398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122398 = ParticipationRoleType(
    fhirCode: '122398',
  );

  /// value122399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122399 = ParticipationRoleType(
    fhirCode: '122399',
  );

  /// value122400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122400 = ParticipationRoleType(
    fhirCode: '122400',
  );

  /// value122401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122401 = ParticipationRoleType(
    fhirCode: '122401',
  );

  /// value122402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122402 = ParticipationRoleType(
    fhirCode: '122402',
  );

  /// value122403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122403 = ParticipationRoleType(
    fhirCode: '122403',
  );

  /// value122404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122404 = ParticipationRoleType(
    fhirCode: '122404',
  );

  /// value122405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122405 = ParticipationRoleType(
    fhirCode: '122405',
  );

  /// value122406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122406 = ParticipationRoleType(
    fhirCode: '122406',
  );

  /// value122407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122407 = ParticipationRoleType(
    fhirCode: '122407',
  );

  /// value122408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122408 = ParticipationRoleType(
    fhirCode: '122408',
  );

  /// value122410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122410 = ParticipationRoleType(
    fhirCode: '122410',
  );

  /// value122411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122411 = ParticipationRoleType(
    fhirCode: '122411',
  );

  /// value122417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122417 = ParticipationRoleType(
    fhirCode: '122417',
  );

  /// value122421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122421 = ParticipationRoleType(
    fhirCode: '122421',
  );

  /// value122422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122422 = ParticipationRoleType(
    fhirCode: '122422',
  );

  /// value122423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122423 = ParticipationRoleType(
    fhirCode: '122423',
  );

  /// value122428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122428 = ParticipationRoleType(
    fhirCode: '122428',
  );

  /// value122429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122429 = ParticipationRoleType(
    fhirCode: '122429',
  );

  /// value122430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122430 = ParticipationRoleType(
    fhirCode: '122430',
  );

  /// value122431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122431 = ParticipationRoleType(
    fhirCode: '122431',
  );

  /// value122432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122432 = ParticipationRoleType(
    fhirCode: '122432',
  );

  /// value122433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122433 = ParticipationRoleType(
    fhirCode: '122433',
  );

  /// value122434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122434 = ParticipationRoleType(
    fhirCode: '122434',
  );

  /// value122435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122435 = ParticipationRoleType(
    fhirCode: '122435',
  );

  /// value122438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122438 = ParticipationRoleType(
    fhirCode: '122438',
  );

  /// value122445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122445 = ParticipationRoleType(
    fhirCode: '122445',
  );

  /// value122446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122446 = ParticipationRoleType(
    fhirCode: '122446',
  );

  /// value122447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122447 = ParticipationRoleType(
    fhirCode: '122447',
  );

  /// value122448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122448 = ParticipationRoleType(
    fhirCode: '122448',
  );

  /// value122449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122449 = ParticipationRoleType(
    fhirCode: '122449',
  );

  /// value122450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122450 = ParticipationRoleType(
    fhirCode: '122450',
  );

  /// value122451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122451 = ParticipationRoleType(
    fhirCode: '122451',
  );

  /// value122452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122452 = ParticipationRoleType(
    fhirCode: '122452',
  );

  /// value122453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122453 = ParticipationRoleType(
    fhirCode: '122453',
  );

  /// value122459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122459 = ParticipationRoleType(
    fhirCode: '122459',
  );

  /// value122461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122461 = ParticipationRoleType(
    fhirCode: '122461',
  );

  /// value122464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122464 = ParticipationRoleType(
    fhirCode: '122464',
  );

  /// value122465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122465 = ParticipationRoleType(
    fhirCode: '122465',
  );

  /// value122466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122466 = ParticipationRoleType(
    fhirCode: '122466',
  );

  /// value122467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122467 = ParticipationRoleType(
    fhirCode: '122467',
  );

  /// value122468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122468 = ParticipationRoleType(
    fhirCode: '122468',
  );

  /// value122469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122469 = ParticipationRoleType(
    fhirCode: '122469',
  );

  /// value122470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122470 = ParticipationRoleType(
    fhirCode: '122470',
  );

  /// value122471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122471 = ParticipationRoleType(
    fhirCode: '122471',
  );

  /// value122472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122472 = ParticipationRoleType(
    fhirCode: '122472',
  );

  /// value122473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122473 = ParticipationRoleType(
    fhirCode: '122473',
  );

  /// value122474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122474 = ParticipationRoleType(
    fhirCode: '122474',
  );

  /// value122475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122475 = ParticipationRoleType(
    fhirCode: '122475',
  );

  /// value122476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122476 = ParticipationRoleType(
    fhirCode: '122476',
  );

  /// value122477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122477 = ParticipationRoleType(
    fhirCode: '122477',
  );

  /// value122480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122480 = ParticipationRoleType(
    fhirCode: '122480',
  );

  /// value122481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122481 = ParticipationRoleType(
    fhirCode: '122481',
  );

  /// value122482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122482 = ParticipationRoleType(
    fhirCode: '122482',
  );

  /// value122485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122485 = ParticipationRoleType(
    fhirCode: '122485',
  );

  /// value122486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122486 = ParticipationRoleType(
    fhirCode: '122486',
  );

  /// value122487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122487 = ParticipationRoleType(
    fhirCode: '122487',
  );

  /// value122488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122488 = ParticipationRoleType(
    fhirCode: '122488',
  );

  /// value122489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122489 = ParticipationRoleType(
    fhirCode: '122489',
  );

  /// value122490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122490 = ParticipationRoleType(
    fhirCode: '122490',
  );

  /// value122491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122491 = ParticipationRoleType(
    fhirCode: '122491',
  );

  /// value122493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122493 = ParticipationRoleType(
    fhirCode: '122493',
  );

  /// value122495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122495 = ParticipationRoleType(
    fhirCode: '122495',
  );

  /// value122496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122496 = ParticipationRoleType(
    fhirCode: '122496',
  );

  /// value122497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122497 = ParticipationRoleType(
    fhirCode: '122497',
  );

  /// value122498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122498 = ParticipationRoleType(
    fhirCode: '122498',
  );

  /// value122499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122499 = ParticipationRoleType(
    fhirCode: '122499',
  );

  /// value122501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122501 = ParticipationRoleType(
    fhirCode: '122501',
  );

  /// value122502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122502 = ParticipationRoleType(
    fhirCode: '122502',
  );

  /// value122503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122503 = ParticipationRoleType(
    fhirCode: '122503',
  );

  /// value122505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122505 = ParticipationRoleType(
    fhirCode: '122505',
  );

  /// value122507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122507 = ParticipationRoleType(
    fhirCode: '122507',
  );

  /// value122508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122508 = ParticipationRoleType(
    fhirCode: '122508',
  );

  /// value122509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122509 = ParticipationRoleType(
    fhirCode: '122509',
  );

  /// value122510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122510 = ParticipationRoleType(
    fhirCode: '122510',
  );

  /// value122511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122511 = ParticipationRoleType(
    fhirCode: '122511',
  );

  /// value122516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122516 = ParticipationRoleType(
    fhirCode: '122516',
  );

  /// value122517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122517 = ParticipationRoleType(
    fhirCode: '122517',
  );

  /// value122528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122528 = ParticipationRoleType(
    fhirCode: '122528',
  );

  /// value122529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122529 = ParticipationRoleType(
    fhirCode: '122529',
  );

  /// value122542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122542 = ParticipationRoleType(
    fhirCode: '122542',
  );

  /// value122544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122544 = ParticipationRoleType(
    fhirCode: '122544',
  );

  /// value122545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122545 = ParticipationRoleType(
    fhirCode: '122545',
  );

  /// value122546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122546 = ParticipationRoleType(
    fhirCode: '122546',
  );

  /// value122547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122547 = ParticipationRoleType(
    fhirCode: '122547',
  );

  /// value122548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122548 = ParticipationRoleType(
    fhirCode: '122548',
  );

  /// value122549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122549 = ParticipationRoleType(
    fhirCode: '122549',
  );

  /// value122550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122550 = ParticipationRoleType(
    fhirCode: '122550',
  );

  /// value122551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122551 = ParticipationRoleType(
    fhirCode: '122551',
  );

  /// value122554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122554 = ParticipationRoleType(
    fhirCode: '122554',
  );

  /// value122555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122555 = ParticipationRoleType(
    fhirCode: '122555',
  );

  /// value122558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122558 = ParticipationRoleType(
    fhirCode: '122558',
  );

  /// value122559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122559 = ParticipationRoleType(
    fhirCode: '122559',
  );

  /// value122560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122560 = ParticipationRoleType(
    fhirCode: '122560',
  );

  /// value122562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122562 = ParticipationRoleType(
    fhirCode: '122562',
  );

  /// value122563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122563 = ParticipationRoleType(
    fhirCode: '122563',
  );

  /// value122564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122564 = ParticipationRoleType(
    fhirCode: '122564',
  );

  /// value122565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122565 = ParticipationRoleType(
    fhirCode: '122565',
  );

  /// value122566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122566 = ParticipationRoleType(
    fhirCode: '122566',
  );

  /// value122572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122572 = ParticipationRoleType(
    fhirCode: '122572',
  );

  /// value122574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122574 = ParticipationRoleType(
    fhirCode: '122574',
  );

  /// value122575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122575 = ParticipationRoleType(
    fhirCode: '122575',
  );

  /// value122582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122582 = ParticipationRoleType(
    fhirCode: '122582',
  );

  /// value122600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122600 = ParticipationRoleType(
    fhirCode: '122600',
  );

  /// value122601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122601 = ParticipationRoleType(
    fhirCode: '122601',
  );

  /// value122602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122602 = ParticipationRoleType(
    fhirCode: '122602',
  );

  /// value122603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122603 = ParticipationRoleType(
    fhirCode: '122603',
  );

  /// value122604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122604 = ParticipationRoleType(
    fhirCode: '122604',
  );

  /// value122605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122605 = ParticipationRoleType(
    fhirCode: '122605',
  );

  /// value122606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122606 = ParticipationRoleType(
    fhirCode: '122606',
  );

  /// value122607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122607 = ParticipationRoleType(
    fhirCode: '122607',
  );

  /// value122608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122608 = ParticipationRoleType(
    fhirCode: '122608',
  );

  /// value122609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122609 = ParticipationRoleType(
    fhirCode: '122609',
  );

  /// value122611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122611 = ParticipationRoleType(
    fhirCode: '122611',
  );

  /// value122612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122612 = ParticipationRoleType(
    fhirCode: '122612',
  );

  /// value122616
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122616 = ParticipationRoleType(
    fhirCode: '122616',
  );

  /// value122617
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122617 = ParticipationRoleType(
    fhirCode: '122617',
  );

  /// value122618
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122618 = ParticipationRoleType(
    fhirCode: '122618',
  );

  /// value122619
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122619 = ParticipationRoleType(
    fhirCode: '122619',
  );

  /// value122620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122620 = ParticipationRoleType(
    fhirCode: '122620',
  );

  /// value122621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122621 = ParticipationRoleType(
    fhirCode: '122621',
  );

  /// value122624
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122624 = ParticipationRoleType(
    fhirCode: '122624',
  );

  /// value122627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122627 = ParticipationRoleType(
    fhirCode: '122627',
  );

  /// value122628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122628 = ParticipationRoleType(
    fhirCode: '122628',
  );

  /// value122631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122631 = ParticipationRoleType(
    fhirCode: '122631',
  );

  /// value122633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122633 = ParticipationRoleType(
    fhirCode: '122633',
  );

  /// value122634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122634 = ParticipationRoleType(
    fhirCode: '122634',
  );

  /// value122635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122635 = ParticipationRoleType(
    fhirCode: '122635',
  );

  /// value122636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122636 = ParticipationRoleType(
    fhirCode: '122636',
  );

  /// value122637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122637 = ParticipationRoleType(
    fhirCode: '122637',
  );

  /// value122638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122638 = ParticipationRoleType(
    fhirCode: '122638',
  );

  /// value122639
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122639 = ParticipationRoleType(
    fhirCode: '122639',
  );

  /// value122640
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122640 = ParticipationRoleType(
    fhirCode: '122640',
  );

  /// value122642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122642 = ParticipationRoleType(
    fhirCode: '122642',
  );

  /// value122643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122643 = ParticipationRoleType(
    fhirCode: '122643',
  );

  /// value122645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122645 = ParticipationRoleType(
    fhirCode: '122645',
  );

  /// value122650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122650 = ParticipationRoleType(
    fhirCode: '122650',
  );

  /// value122651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122651 = ParticipationRoleType(
    fhirCode: '122651',
  );

  /// value122652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122652 = ParticipationRoleType(
    fhirCode: '122652',
  );

  /// value122655
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122655 = ParticipationRoleType(
    fhirCode: '122655',
  );

  /// value122656
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122656 = ParticipationRoleType(
    fhirCode: '122656',
  );

  /// value122657
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122657 = ParticipationRoleType(
    fhirCode: '122657',
  );

  /// value122658
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122658 = ParticipationRoleType(
    fhirCode: '122658',
  );

  /// value122659
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122659 = ParticipationRoleType(
    fhirCode: '122659',
  );

  /// value122660
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122660 = ParticipationRoleType(
    fhirCode: '122660',
  );

  /// value122661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122661 = ParticipationRoleType(
    fhirCode: '122661',
  );

  /// value122664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122664 = ParticipationRoleType(
    fhirCode: '122664',
  );

  /// value122665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122665 = ParticipationRoleType(
    fhirCode: '122665',
  );

  /// value122666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122666 = ParticipationRoleType(
    fhirCode: '122666',
  );

  /// value122667
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122667 = ParticipationRoleType(
    fhirCode: '122667',
  );

  /// value122668
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122668 = ParticipationRoleType(
    fhirCode: '122668',
  );

  /// value122670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122670 = ParticipationRoleType(
    fhirCode: '122670',
  );

  /// value122675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122675 = ParticipationRoleType(
    fhirCode: '122675',
  );

  /// value122680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122680 = ParticipationRoleType(
    fhirCode: '122680',
  );

  /// value122683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122683 = ParticipationRoleType(
    fhirCode: '122683',
  );

  /// value122684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122684 = ParticipationRoleType(
    fhirCode: '122684',
  );

  /// value122685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122685 = ParticipationRoleType(
    fhirCode: '122685',
  );

  /// value122686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122686 = ParticipationRoleType(
    fhirCode: '122686',
  );

  /// value122687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122687 = ParticipationRoleType(
    fhirCode: '122687',
  );

  /// value122698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122698 = ParticipationRoleType(
    fhirCode: '122698',
  );

  /// value122699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122699 = ParticipationRoleType(
    fhirCode: '122699',
  );

  /// value122700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122700 = ParticipationRoleType(
    fhirCode: '122700',
  );

  /// value122701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122701 = ParticipationRoleType(
    fhirCode: '122701',
  );

  /// value122702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122702 = ParticipationRoleType(
    fhirCode: '122702',
  );

  /// value122703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122703 = ParticipationRoleType(
    fhirCode: '122703',
  );

  /// value122704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122704 = ParticipationRoleType(
    fhirCode: '122704',
  );

  /// value122705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122705 = ParticipationRoleType(
    fhirCode: '122705',
  );

  /// value122706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122706 = ParticipationRoleType(
    fhirCode: '122706',
  );

  /// value122707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122707 = ParticipationRoleType(
    fhirCode: '122707',
  );

  /// value122708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122708 = ParticipationRoleType(
    fhirCode: '122708',
  );

  /// value122709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122709 = ParticipationRoleType(
    fhirCode: '122709',
  );

  /// value122710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122710 = ParticipationRoleType(
    fhirCode: '122710',
  );

  /// value122711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122711 = ParticipationRoleType(
    fhirCode: '122711',
  );

  /// value122712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122712 = ParticipationRoleType(
    fhirCode: '122712',
  );

  /// value122713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122713 = ParticipationRoleType(
    fhirCode: '122713',
  );

  /// value122715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122715 = ParticipationRoleType(
    fhirCode: '122715',
  );

  /// value122716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122716 = ParticipationRoleType(
    fhirCode: '122716',
  );

  /// value122717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122717 = ParticipationRoleType(
    fhirCode: '122717',
  );

  /// value122718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122718 = ParticipationRoleType(
    fhirCode: '122718',
  );

  /// value122720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122720 = ParticipationRoleType(
    fhirCode: '122720',
  );

  /// value122721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122721 = ParticipationRoleType(
    fhirCode: '122721',
  );

  /// value122726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122726 = ParticipationRoleType(
    fhirCode: '122726',
  );

  /// value122727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122727 = ParticipationRoleType(
    fhirCode: '122727',
  );

  /// value122728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122728 = ParticipationRoleType(
    fhirCode: '122728',
  );

  /// value122729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122729 = ParticipationRoleType(
    fhirCode: '122729',
  );

  /// value122730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122730 = ParticipationRoleType(
    fhirCode: '122730',
  );

  /// value122731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122731 = ParticipationRoleType(
    fhirCode: '122731',
  );

  /// value122732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122732 = ParticipationRoleType(
    fhirCode: '122732',
  );

  /// value122733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122733 = ParticipationRoleType(
    fhirCode: '122733',
  );

  /// value122734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122734 = ParticipationRoleType(
    fhirCode: '122734',
  );

  /// value122735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122735 = ParticipationRoleType(
    fhirCode: '122735',
  );

  /// value122739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122739 = ParticipationRoleType(
    fhirCode: '122739',
  );

  /// value122740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122740 = ParticipationRoleType(
    fhirCode: '122740',
  );

  /// value122741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122741 = ParticipationRoleType(
    fhirCode: '122741',
  );

  /// value122742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122742 = ParticipationRoleType(
    fhirCode: '122742',
  );

  /// value122743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122743 = ParticipationRoleType(
    fhirCode: '122743',
  );

  /// value122744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122744 = ParticipationRoleType(
    fhirCode: '122744',
  );

  /// value122745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122745 = ParticipationRoleType(
    fhirCode: '122745',
  );

  /// value122748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122748 = ParticipationRoleType(
    fhirCode: '122748',
  );

  /// value122750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122750 = ParticipationRoleType(
    fhirCode: '122750',
  );

  /// value122751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122751 = ParticipationRoleType(
    fhirCode: '122751',
  );

  /// value122752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122752 = ParticipationRoleType(
    fhirCode: '122752',
  );

  /// value122753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122753 = ParticipationRoleType(
    fhirCode: '122753',
  );

  /// value122755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122755 = ParticipationRoleType(
    fhirCode: '122755',
  );

  /// value122756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122756 = ParticipationRoleType(
    fhirCode: '122756',
  );

  /// value122757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122757 = ParticipationRoleType(
    fhirCode: '122757',
  );

  /// value122758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122758 = ParticipationRoleType(
    fhirCode: '122758',
  );

  /// value122759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122759 = ParticipationRoleType(
    fhirCode: '122759',
  );

  /// value122760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122760 = ParticipationRoleType(
    fhirCode: '122760',
  );

  /// value122762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122762 = ParticipationRoleType(
    fhirCode: '122762',
  );

  /// value122764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122764 = ParticipationRoleType(
    fhirCode: '122764',
  );

  /// value122768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122768 = ParticipationRoleType(
    fhirCode: '122768',
  );

  /// value122769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122769 = ParticipationRoleType(
    fhirCode: '122769',
  );

  /// value122770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122770 = ParticipationRoleType(
    fhirCode: '122770',
  );

  /// value122771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122771 = ParticipationRoleType(
    fhirCode: '122771',
  );

  /// value122772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122772 = ParticipationRoleType(
    fhirCode: '122772',
  );

  /// value122773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122773 = ParticipationRoleType(
    fhirCode: '122773',
  );

  /// value122775
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122775 = ParticipationRoleType(
    fhirCode: '122775',
  );

  /// value122776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122776 = ParticipationRoleType(
    fhirCode: '122776',
  );

  /// value122781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122781 = ParticipationRoleType(
    fhirCode: '122781',
  );

  /// value122782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122782 = ParticipationRoleType(
    fhirCode: '122782',
  );

  /// value122783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122783 = ParticipationRoleType(
    fhirCode: '122783',
  );

  /// value122784
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122784 = ParticipationRoleType(
    fhirCode: '122784',
  );

  /// value122785
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122785 = ParticipationRoleType(
    fhirCode: '122785',
  );

  /// value122791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122791 = ParticipationRoleType(
    fhirCode: '122791',
  );

  /// value122792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122792 = ParticipationRoleType(
    fhirCode: '122792',
  );

  /// value122793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122793 = ParticipationRoleType(
    fhirCode: '122793',
  );

  /// value122795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122795 = ParticipationRoleType(
    fhirCode: '122795',
  );

  /// value122796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122796 = ParticipationRoleType(
    fhirCode: '122796',
  );

  /// value122797
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122797 = ParticipationRoleType(
    fhirCode: '122797',
  );

  /// value122799
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value122799 = ParticipationRoleType(
    fhirCode: '122799',
  );

  /// value123001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123001 = ParticipationRoleType(
    fhirCode: '123001',
  );

  /// value123003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123003 = ParticipationRoleType(
    fhirCode: '123003',
  );

  /// value123004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123004 = ParticipationRoleType(
    fhirCode: '123004',
  );

  /// value123005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123005 = ParticipationRoleType(
    fhirCode: '123005',
  );

  /// value123006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123006 = ParticipationRoleType(
    fhirCode: '123006',
  );

  /// value123007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123007 = ParticipationRoleType(
    fhirCode: '123007',
  );

  /// value123009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123009 = ParticipationRoleType(
    fhirCode: '123009',
  );

  /// value123010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123010 = ParticipationRoleType(
    fhirCode: '123010',
  );

  /// value123011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123011 = ParticipationRoleType(
    fhirCode: '123011',
  );

  /// value123012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123012 = ParticipationRoleType(
    fhirCode: '123012',
  );

  /// value123014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123014 = ParticipationRoleType(
    fhirCode: '123014',
  );

  /// value123015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123015 = ParticipationRoleType(
    fhirCode: '123015',
  );

  /// value123016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123016 = ParticipationRoleType(
    fhirCode: '123016',
  );

  /// value123019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123019 = ParticipationRoleType(
    fhirCode: '123019',
  );

  /// value123101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123101 = ParticipationRoleType(
    fhirCode: '123101',
  );

  /// value123102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123102 = ParticipationRoleType(
    fhirCode: '123102',
  );

  /// value123103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123103 = ParticipationRoleType(
    fhirCode: '123103',
  );

  /// value123104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123104 = ParticipationRoleType(
    fhirCode: '123104',
  );

  /// value123105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123105 = ParticipationRoleType(
    fhirCode: '123105',
  );

  /// value123106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123106 = ParticipationRoleType(
    fhirCode: '123106',
  );

  /// value123107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123107 = ParticipationRoleType(
    fhirCode: '123107',
  );

  /// value123108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123108 = ParticipationRoleType(
    fhirCode: '123108',
  );

  /// value123109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123109 = ParticipationRoleType(
    fhirCode: '123109',
  );

  /// value123110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123110 = ParticipationRoleType(
    fhirCode: '123110',
  );

  /// value123111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value123111 = ParticipationRoleType(
    fhirCode: '123111',
  );

  /// value125000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125000 = ParticipationRoleType(
    fhirCode: '125000',
  );

  /// value125001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125001 = ParticipationRoleType(
    fhirCode: '125001',
  );

  /// value125002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125002 = ParticipationRoleType(
    fhirCode: '125002',
  );

  /// value125003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125003 = ParticipationRoleType(
    fhirCode: '125003',
  );

  /// value125004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125004 = ParticipationRoleType(
    fhirCode: '125004',
  );

  /// value125005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125005 = ParticipationRoleType(
    fhirCode: '125005',
  );

  /// value125006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125006 = ParticipationRoleType(
    fhirCode: '125006',
  );

  /// value125007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125007 = ParticipationRoleType(
    fhirCode: '125007',
  );

  /// value125008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125008 = ParticipationRoleType(
    fhirCode: '125008',
  );

  /// value125009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125009 = ParticipationRoleType(
    fhirCode: '125009',
  );

  /// value125010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125010 = ParticipationRoleType(
    fhirCode: '125010',
  );

  /// value125011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125011 = ParticipationRoleType(
    fhirCode: '125011',
  );

  /// value125012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125012 = ParticipationRoleType(
    fhirCode: '125012',
  );

  /// value125013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125013 = ParticipationRoleType(
    fhirCode: '125013',
  );

  /// value125015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125015 = ParticipationRoleType(
    fhirCode: '125015',
  );

  /// value125016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125016 = ParticipationRoleType(
    fhirCode: '125016',
  );

  /// value125021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125021 = ParticipationRoleType(
    fhirCode: '125021',
  );

  /// value125022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125022 = ParticipationRoleType(
    fhirCode: '125022',
  );

  /// value125023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125023 = ParticipationRoleType(
    fhirCode: '125023',
  );

  /// value125024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125024 = ParticipationRoleType(
    fhirCode: '125024',
  );

  /// value125025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125025 = ParticipationRoleType(
    fhirCode: '125025',
  );

  /// value125030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125030 = ParticipationRoleType(
    fhirCode: '125030',
  );

  /// value125031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125031 = ParticipationRoleType(
    fhirCode: '125031',
  );

  /// value125032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125032 = ParticipationRoleType(
    fhirCode: '125032',
  );

  /// value125033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125033 = ParticipationRoleType(
    fhirCode: '125033',
  );

  /// value125034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125034 = ParticipationRoleType(
    fhirCode: '125034',
  );

  /// value125035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125035 = ParticipationRoleType(
    fhirCode: '125035',
  );

  /// value125036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125036 = ParticipationRoleType(
    fhirCode: '125036',
  );

  /// value125037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125037 = ParticipationRoleType(
    fhirCode: '125037',
  );

  /// value125038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125038 = ParticipationRoleType(
    fhirCode: '125038',
  );

  /// value125040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125040 = ParticipationRoleType(
    fhirCode: '125040',
  );

  /// value125041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125041 = ParticipationRoleType(
    fhirCode: '125041',
  );

  /// value125100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125100 = ParticipationRoleType(
    fhirCode: '125100',
  );

  /// value125101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125101 = ParticipationRoleType(
    fhirCode: '125101',
  );

  /// value125102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125102 = ParticipationRoleType(
    fhirCode: '125102',
  );

  /// value125105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125105 = ParticipationRoleType(
    fhirCode: '125105',
  );

  /// value125106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125106 = ParticipationRoleType(
    fhirCode: '125106',
  );

  /// value125107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125107 = ParticipationRoleType(
    fhirCode: '125107',
  );

  /// value125195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125195 = ParticipationRoleType(
    fhirCode: '125195',
  );

  /// value125196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125196 = ParticipationRoleType(
    fhirCode: '125196',
  );

  /// value125197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125197 = ParticipationRoleType(
    fhirCode: '125197',
  );

  /// value125200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125200 = ParticipationRoleType(
    fhirCode: '125200',
  );

  /// value125201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125201 = ParticipationRoleType(
    fhirCode: '125201',
  );

  /// value125202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125202 = ParticipationRoleType(
    fhirCode: '125202',
  );

  /// value125203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125203 = ParticipationRoleType(
    fhirCode: '125203',
  );

  /// value125204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125204 = ParticipationRoleType(
    fhirCode: '125204',
  );

  /// value125205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125205 = ParticipationRoleType(
    fhirCode: '125205',
  );

  /// value125206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125206 = ParticipationRoleType(
    fhirCode: '125206',
  );

  /// value125207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125207 = ParticipationRoleType(
    fhirCode: '125207',
  );

  /// value125208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125208 = ParticipationRoleType(
    fhirCode: '125208',
  );

  /// value125209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125209 = ParticipationRoleType(
    fhirCode: '125209',
  );

  /// value125210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125210 = ParticipationRoleType(
    fhirCode: '125210',
  );

  /// value125211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125211 = ParticipationRoleType(
    fhirCode: '125211',
  );

  /// value125212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125212 = ParticipationRoleType(
    fhirCode: '125212',
  );

  /// value125213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125213 = ParticipationRoleType(
    fhirCode: '125213',
  );

  /// value125214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125214 = ParticipationRoleType(
    fhirCode: '125214',
  );

  /// value125215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125215 = ParticipationRoleType(
    fhirCode: '125215',
  );

  /// value125216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125216 = ParticipationRoleType(
    fhirCode: '125216',
  );

  /// value125217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125217 = ParticipationRoleType(
    fhirCode: '125217',
  );

  /// value125218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125218 = ParticipationRoleType(
    fhirCode: '125218',
  );

  /// value125219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125219 = ParticipationRoleType(
    fhirCode: '125219',
  );

  /// value125220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125220 = ParticipationRoleType(
    fhirCode: '125220',
  );

  /// value125221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125221 = ParticipationRoleType(
    fhirCode: '125221',
  );

  /// value125222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125222 = ParticipationRoleType(
    fhirCode: '125222',
  );

  /// value125223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125223 = ParticipationRoleType(
    fhirCode: '125223',
  );

  /// value125224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125224 = ParticipationRoleType(
    fhirCode: '125224',
  );

  /// value125225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125225 = ParticipationRoleType(
    fhirCode: '125225',
  );

  /// value125226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125226 = ParticipationRoleType(
    fhirCode: '125226',
  );

  /// value125227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125227 = ParticipationRoleType(
    fhirCode: '125227',
  );

  /// value125228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125228 = ParticipationRoleType(
    fhirCode: '125228',
  );

  /// value125230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125230 = ParticipationRoleType(
    fhirCode: '125230',
  );

  /// value125231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125231 = ParticipationRoleType(
    fhirCode: '125231',
  );

  /// value125233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125233 = ParticipationRoleType(
    fhirCode: '125233',
  );

  /// value125234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125234 = ParticipationRoleType(
    fhirCode: '125234',
  );

  /// value125235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125235 = ParticipationRoleType(
    fhirCode: '125235',
  );

  /// value125236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125236 = ParticipationRoleType(
    fhirCode: '125236',
  );

  /// value125237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125237 = ParticipationRoleType(
    fhirCode: '125237',
  );

  /// value125238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125238 = ParticipationRoleType(
    fhirCode: '125238',
  );

  /// value125239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125239 = ParticipationRoleType(
    fhirCode: '125239',
  );

  /// value125240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125240 = ParticipationRoleType(
    fhirCode: '125240',
  );

  /// value125241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125241 = ParticipationRoleType(
    fhirCode: '125241',
  );

  /// value125242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125242 = ParticipationRoleType(
    fhirCode: '125242',
  );

  /// value125251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125251 = ParticipationRoleType(
    fhirCode: '125251',
  );

  /// value125252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125252 = ParticipationRoleType(
    fhirCode: '125252',
  );

  /// value125253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125253 = ParticipationRoleType(
    fhirCode: '125253',
  );

  /// value125254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125254 = ParticipationRoleType(
    fhirCode: '125254',
  );

  /// value125255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125255 = ParticipationRoleType(
    fhirCode: '125255',
  );

  /// value125256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125256 = ParticipationRoleType(
    fhirCode: '125256',
  );

  /// value125257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125257 = ParticipationRoleType(
    fhirCode: '125257',
  );

  /// value125258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125258 = ParticipationRoleType(
    fhirCode: '125258',
  );

  /// value125259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125259 = ParticipationRoleType(
    fhirCode: '125259',
  );

  /// value125261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125261 = ParticipationRoleType(
    fhirCode: '125261',
  );

  /// value125262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125262 = ParticipationRoleType(
    fhirCode: '125262',
  );

  /// value125263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125263 = ParticipationRoleType(
    fhirCode: '125263',
  );

  /// value125264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125264 = ParticipationRoleType(
    fhirCode: '125264',
  );

  /// value125265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125265 = ParticipationRoleType(
    fhirCode: '125265',
  );

  /// value125270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125270 = ParticipationRoleType(
    fhirCode: '125270',
  );

  /// value125271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125271 = ParticipationRoleType(
    fhirCode: '125271',
  );

  /// value125272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125272 = ParticipationRoleType(
    fhirCode: '125272',
  );

  /// value125273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125273 = ParticipationRoleType(
    fhirCode: '125273',
  );

  /// value125901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125901 = ParticipationRoleType(
    fhirCode: '125901',
  );

  /// value125902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125902 = ParticipationRoleType(
    fhirCode: '125902',
  );

  /// value125903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125903 = ParticipationRoleType(
    fhirCode: '125903',
  );

  /// value125904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125904 = ParticipationRoleType(
    fhirCode: '125904',
  );

  /// value125905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125905 = ParticipationRoleType(
    fhirCode: '125905',
  );

  /// value125906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125906 = ParticipationRoleType(
    fhirCode: '125906',
  );

  /// value125907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125907 = ParticipationRoleType(
    fhirCode: '125907',
  );

  /// value125908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value125908 = ParticipationRoleType(
    fhirCode: '125908',
  );

  /// value126000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126000 = ParticipationRoleType(
    fhirCode: '126000',
  );

  /// value126001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126001 = ParticipationRoleType(
    fhirCode: '126001',
  );

  /// value126002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126002 = ParticipationRoleType(
    fhirCode: '126002',
  );

  /// value126003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126003 = ParticipationRoleType(
    fhirCode: '126003',
  );

  /// value126010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126010 = ParticipationRoleType(
    fhirCode: '126010',
  );

  /// value126011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126011 = ParticipationRoleType(
    fhirCode: '126011',
  );

  /// value126020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126020 = ParticipationRoleType(
    fhirCode: '126020',
  );

  /// value126021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126021 = ParticipationRoleType(
    fhirCode: '126021',
  );

  /// value126022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126022 = ParticipationRoleType(
    fhirCode: '126022',
  );

  /// value126030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126030 = ParticipationRoleType(
    fhirCode: '126030',
  );

  /// value126031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126031 = ParticipationRoleType(
    fhirCode: '126031',
  );

  /// value126032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126032 = ParticipationRoleType(
    fhirCode: '126032',
  );

  /// value126033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126033 = ParticipationRoleType(
    fhirCode: '126033',
  );

  /// value126034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126034 = ParticipationRoleType(
    fhirCode: '126034',
  );

  /// value126035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126035 = ParticipationRoleType(
    fhirCode: '126035',
  );

  /// value126036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126036 = ParticipationRoleType(
    fhirCode: '126036',
  );

  /// value126037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126037 = ParticipationRoleType(
    fhirCode: '126037',
  );

  /// value126038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126038 = ParticipationRoleType(
    fhirCode: '126038',
  );

  /// value126039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126039 = ParticipationRoleType(
    fhirCode: '126039',
  );

  /// value126040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126040 = ParticipationRoleType(
    fhirCode: '126040',
  );

  /// value126050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126050 = ParticipationRoleType(
    fhirCode: '126050',
  );

  /// value126051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126051 = ParticipationRoleType(
    fhirCode: '126051',
  );

  /// value126052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126052 = ParticipationRoleType(
    fhirCode: '126052',
  );

  /// value126060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126060 = ParticipationRoleType(
    fhirCode: '126060',
  );

  /// value126061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126061 = ParticipationRoleType(
    fhirCode: '126061',
  );

  /// value126062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126062 = ParticipationRoleType(
    fhirCode: '126062',
  );

  /// value126063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126063 = ParticipationRoleType(
    fhirCode: '126063',
  );

  /// value126064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126064 = ParticipationRoleType(
    fhirCode: '126064',
  );

  /// value126065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126065 = ParticipationRoleType(
    fhirCode: '126065',
  );

  /// value126066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126066 = ParticipationRoleType(
    fhirCode: '126066',
  );

  /// value126067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126067 = ParticipationRoleType(
    fhirCode: '126067',
  );

  /// value126070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126070 = ParticipationRoleType(
    fhirCode: '126070',
  );

  /// value126071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126071 = ParticipationRoleType(
    fhirCode: '126071',
  );

  /// value126072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126072 = ParticipationRoleType(
    fhirCode: '126072',
  );

  /// value126073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126073 = ParticipationRoleType(
    fhirCode: '126073',
  );

  /// value126074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126074 = ParticipationRoleType(
    fhirCode: '126074',
  );

  /// value126075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126075 = ParticipationRoleType(
    fhirCode: '126075',
  );

  /// value126080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126080 = ParticipationRoleType(
    fhirCode: '126080',
  );

  /// value126081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126081 = ParticipationRoleType(
    fhirCode: '126081',
  );

  /// value126100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126100 = ParticipationRoleType(
    fhirCode: '126100',
  );

  /// value126200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126200 = ParticipationRoleType(
    fhirCode: '126200',
  );

  /// value126201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126201 = ParticipationRoleType(
    fhirCode: '126201',
  );

  /// value126202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126202 = ParticipationRoleType(
    fhirCode: '126202',
  );

  /// value126203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126203 = ParticipationRoleType(
    fhirCode: '126203',
  );

  /// value126220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126220 = ParticipationRoleType(
    fhirCode: '126220',
  );

  /// value126300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126300 = ParticipationRoleType(
    fhirCode: '126300',
  );

  /// value126301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126301 = ParticipationRoleType(
    fhirCode: '126301',
  );

  /// value126302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126302 = ParticipationRoleType(
    fhirCode: '126302',
  );

  /// value126303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126303 = ParticipationRoleType(
    fhirCode: '126303',
  );

  /// value126310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126310 = ParticipationRoleType(
    fhirCode: '126310',
  );

  /// value126311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126311 = ParticipationRoleType(
    fhirCode: '126311',
  );

  /// value126312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126312 = ParticipationRoleType(
    fhirCode: '126312',
  );

  /// value126313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126313 = ParticipationRoleType(
    fhirCode: '126313',
  );

  /// value126314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126314 = ParticipationRoleType(
    fhirCode: '126314',
  );

  /// value126320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126320 = ParticipationRoleType(
    fhirCode: '126320',
  );

  /// value126321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126321 = ParticipationRoleType(
    fhirCode: '126321',
  );

  /// value126322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126322 = ParticipationRoleType(
    fhirCode: '126322',
  );

  /// value126330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126330 = ParticipationRoleType(
    fhirCode: '126330',
  );

  /// value126331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126331 = ParticipationRoleType(
    fhirCode: '126331',
  );

  /// value126340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126340 = ParticipationRoleType(
    fhirCode: '126340',
  );

  /// value126341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126341 = ParticipationRoleType(
    fhirCode: '126341',
  );

  /// value126342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126342 = ParticipationRoleType(
    fhirCode: '126342',
  );

  /// value126343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126343 = ParticipationRoleType(
    fhirCode: '126343',
  );

  /// value126344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126344 = ParticipationRoleType(
    fhirCode: '126344',
  );

  /// value126350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126350 = ParticipationRoleType(
    fhirCode: '126350',
  );

  /// value126351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126351 = ParticipationRoleType(
    fhirCode: '126351',
  );

  /// value126352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126352 = ParticipationRoleType(
    fhirCode: '126352',
  );

  /// value126353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126353 = ParticipationRoleType(
    fhirCode: '126353',
  );

  /// value126360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126360 = ParticipationRoleType(
    fhirCode: '126360',
  );

  /// value126361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126361 = ParticipationRoleType(
    fhirCode: '126361',
  );

  /// value126362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126362 = ParticipationRoleType(
    fhirCode: '126362',
  );

  /// value126363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126363 = ParticipationRoleType(
    fhirCode: '126363',
  );

  /// value126364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126364 = ParticipationRoleType(
    fhirCode: '126364',
  );

  /// value126370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126370 = ParticipationRoleType(
    fhirCode: '126370',
  );

  /// value126371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126371 = ParticipationRoleType(
    fhirCode: '126371',
  );

  /// value126372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126372 = ParticipationRoleType(
    fhirCode: '126372',
  );

  /// value126373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126373 = ParticipationRoleType(
    fhirCode: '126373',
  );

  /// value126374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126374 = ParticipationRoleType(
    fhirCode: '126374',
  );

  /// value126375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126375 = ParticipationRoleType(
    fhirCode: '126375',
  );

  /// value126376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126376 = ParticipationRoleType(
    fhirCode: '126376',
  );

  /// value126377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126377 = ParticipationRoleType(
    fhirCode: '126377',
  );

  /// value126380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126380 = ParticipationRoleType(
    fhirCode: '126380',
  );

  /// value126390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126390 = ParticipationRoleType(
    fhirCode: '126390',
  );

  /// value126391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126391 = ParticipationRoleType(
    fhirCode: '126391',
  );

  /// value126392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126392 = ParticipationRoleType(
    fhirCode: '126392',
  );

  /// value126393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126393 = ParticipationRoleType(
    fhirCode: '126393',
  );

  /// value126394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126394 = ParticipationRoleType(
    fhirCode: '126394',
  );

  /// value126400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126400 = ParticipationRoleType(
    fhirCode: '126400',
  );

  /// value126401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126401 = ParticipationRoleType(
    fhirCode: '126401',
  );

  /// value126402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126402 = ParticipationRoleType(
    fhirCode: '126402',
  );

  /// value126403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126403 = ParticipationRoleType(
    fhirCode: '126403',
  );

  /// value126404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126404 = ParticipationRoleType(
    fhirCode: '126404',
  );

  /// value126410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126410 = ParticipationRoleType(
    fhirCode: '126410',
  );

  /// value126411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126411 = ParticipationRoleType(
    fhirCode: '126411',
  );

  /// value126412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126412 = ParticipationRoleType(
    fhirCode: '126412',
  );

  /// value126413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126413 = ParticipationRoleType(
    fhirCode: '126413',
  );

  /// value126500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126500 = ParticipationRoleType(
    fhirCode: '126500',
  );

  /// value126501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126501 = ParticipationRoleType(
    fhirCode: '126501',
  );

  /// value126502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126502 = ParticipationRoleType(
    fhirCode: '126502',
  );

  /// value126503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126503 = ParticipationRoleType(
    fhirCode: '126503',
  );

  /// value126510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126510 = ParticipationRoleType(
    fhirCode: '126510',
  );

  /// value126511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126511 = ParticipationRoleType(
    fhirCode: '126511',
  );

  /// value126512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126512 = ParticipationRoleType(
    fhirCode: '126512',
  );

  /// value126513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126513 = ParticipationRoleType(
    fhirCode: '126513',
  );

  /// value126514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126514 = ParticipationRoleType(
    fhirCode: '126514',
  );

  /// value126515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126515 = ParticipationRoleType(
    fhirCode: '126515',
  );

  /// value126516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126516 = ParticipationRoleType(
    fhirCode: '126516',
  );

  /// value126517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126517 = ParticipationRoleType(
    fhirCode: '126517',
  );

  /// value126518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126518 = ParticipationRoleType(
    fhirCode: '126518',
  );

  /// value126519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126519 = ParticipationRoleType(
    fhirCode: '126519',
  );

  /// value126520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126520 = ParticipationRoleType(
    fhirCode: '126520',
  );

  /// value126600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126600 = ParticipationRoleType(
    fhirCode: '126600',
  );

  /// value126601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126601 = ParticipationRoleType(
    fhirCode: '126601',
  );

  /// value126602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126602 = ParticipationRoleType(
    fhirCode: '126602',
  );

  /// value126603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126603 = ParticipationRoleType(
    fhirCode: '126603',
  );

  /// value126604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126604 = ParticipationRoleType(
    fhirCode: '126604',
  );

  /// value126605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126605 = ParticipationRoleType(
    fhirCode: '126605',
  );

  /// value126606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126606 = ParticipationRoleType(
    fhirCode: '126606',
  );

  /// value126700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126700 = ParticipationRoleType(
    fhirCode: '126700',
  );

  /// value126701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126701 = ParticipationRoleType(
    fhirCode: '126701',
  );

  /// value126702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126702 = ParticipationRoleType(
    fhirCode: '126702',
  );

  /// value126703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126703 = ParticipationRoleType(
    fhirCode: '126703',
  );

  /// value126704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126704 = ParticipationRoleType(
    fhirCode: '126704',
  );

  /// value126705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126705 = ParticipationRoleType(
    fhirCode: '126705',
  );

  /// value126706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126706 = ParticipationRoleType(
    fhirCode: '126706',
  );

  /// value126707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126707 = ParticipationRoleType(
    fhirCode: '126707',
  );

  /// value126708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126708 = ParticipationRoleType(
    fhirCode: '126708',
  );

  /// value126709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126709 = ParticipationRoleType(
    fhirCode: '126709',
  );

  /// value126710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126710 = ParticipationRoleType(
    fhirCode: '126710',
  );

  /// value126711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126711 = ParticipationRoleType(
    fhirCode: '126711',
  );

  /// value126712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126712 = ParticipationRoleType(
    fhirCode: '126712',
  );

  /// value126713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126713 = ParticipationRoleType(
    fhirCode: '126713',
  );

  /// value126714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126714 = ParticipationRoleType(
    fhirCode: '126714',
  );

  /// value126715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126715 = ParticipationRoleType(
    fhirCode: '126715',
  );

  /// value126716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126716 = ParticipationRoleType(
    fhirCode: '126716',
  );

  /// value126801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126801 = ParticipationRoleType(
    fhirCode: '126801',
  );

  /// value126802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126802 = ParticipationRoleType(
    fhirCode: '126802',
  );

  /// value126803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126803 = ParticipationRoleType(
    fhirCode: '126803',
  );

  /// value126804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126804 = ParticipationRoleType(
    fhirCode: '126804',
  );

  /// value126805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126805 = ParticipationRoleType(
    fhirCode: '126805',
  );

  /// value126806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126806 = ParticipationRoleType(
    fhirCode: '126806',
  );

  /// value126807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126807 = ParticipationRoleType(
    fhirCode: '126807',
  );

  /// value126808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126808 = ParticipationRoleType(
    fhirCode: '126808',
  );

  /// value126809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126809 = ParticipationRoleType(
    fhirCode: '126809',
  );

  /// value126810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126810 = ParticipationRoleType(
    fhirCode: '126810',
  );

  /// value126811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ParticipationRoleType value126811 = ParticipationRoleType(
    fhirCode: '126811',
  );

  /// For instances where an Element is present but not value

  static final ParticipationRoleType elementOnly = ParticipationRoleType();

  /// List of all enum-like values
  static final List<ParticipationRoleType> values = [
    AMENDER,
    COAUTH,
    CONT,
    EVTWIT,
    PRIMAUTH,
    REVIEWER,
    SOURCE,
    TRANS,
    VALID,
    VERF,
    AFFL,
    AGNT,
    ASSIGNED,
    CLAIM,
    COVPTY,
    DEPEN,
    ECON,
    EMP,
    GUARD,
    INVSBJ,
    NAMED,
    NOK,
    PAT,
    PROV,
    NOT,
    CLASSIFIER,
    CONSENTER,
    CONSWIT,
    COPART,
    DECLASSIFIER,
    DELEGATEE,
    DELEGATOR,
    DOWNGRDER,
    DPOWATT,
    EXCEST,
    GRANTEE,
    GRANTOR,
    GT,
    GUADLTM,
    HPOWATT,
    INTPRTER,
    POWATT,
    RESPRSN,
    SPOWATT,
    AUCG,
    AULR,
    AUTM,
    AUWA,
    PROMSK,
    AUT,
    CST,
    INF,
    IRCP,
    LA,
    TRC,
    WIT,
    authserver,
    datacollector,
    dataprocessor,
    datasubject,
    humanuser,
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
  ParticipationRoleType withElement(Element? newElement) {
    return ParticipationRoleType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ParticipationRoleType] from JSON.
  static ParticipationRoleType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationRoleType.elementOnly.withElement(element);
    }
    return ParticipationRoleType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ParticipationRoleType.$fhirCode';
}
