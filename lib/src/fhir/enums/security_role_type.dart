// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This example FHIR value set is comprised of example Actor Type codes, which can be used to value FHIR agents, actors, and other role elements such as those specified in financial transactions. The FHIR Actor value set is based on DICOM Audit Message, C402; ASTM Standard, E1762-95 [2013]; selected codes and derived actor roles from HL7 RoleClass OID 2.16.840.1.113883.5.110; HL7 Role Code 2.16.840.1.113883.5.111, including AgentRoleType; HL7 ParticipationType OID: 2.16.840.1.113883.5.90; and HL7 ParticipationFunction codes OID: 2.16.840.1.113883.5.88. This value set includes, by reference, role codes from external code systems: NUCC Health Care Provider Taxonomy OID: 2.16.840.1.113883.6.101; North American Industry Classification System [NAICS]OID: 2.16.840.1.113883.6.85; IndustryClassificationSystem 2.16.840.1.113883.1.11.16039; and US Census Occupation Code OID: 2.16.840.1.113883.6.243 for relevant recipient or custodian codes not included in this value set. If no source is indicated in the definition comments, then these are example FHIR codes. It can be extended with appropriate roles described by SNOMED as well as those described in the HL7 Role Based Access Control Catalog and the HL7 Healthcare (Security and Privacy) Access Control Catalog. In Role-Based Access Control (RBAC), permissions are operations on an object that a user wishes to access. Permissions are grouped into roles. A role characterizes the functions a user is allowed to perform. Roles are assigned to users. If the user's role has the appropriate permissions to access an object, then that user is granted access to the object. FHIR readily enables RBAC, as FHIR Resources are object types and the CRUDE events (the FHIR equivalent to permissions in the RBAC scheme) are operations on those objects. In Attribute-Based Access Control (ABAC), a user requests to perform operations on objects. That user's access request is granted or denied based on a set of access control policies that are specified in terms of attributes and conditions. FHIR readily enables ABAC, as instances of a Resource in FHIR (again, Resources are object types) can have attributes associated with them. These attributes include security tags, environment conditions, and a host of user and object characteristics, which are the same attributes as those used in ABAC. Attributes help define the access control policies that determine the operations a user may perform on a Resource (in FHIR) or object (in ABAC). For example, a tag (or attribute) may specify that the identified Resource (object) is not to be further disclosed without explicit consent from the patient.
@collection
class SecurityRoleType {
  /// Constructor for internal use (like enum)
  SecurityRoleType({this.fhirCode, this.element})
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

  /// SecurityRoleType values
  /// AMENDER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AMENDER = SecurityRoleType(
    fhirCode: 'AMENDER',
  );

  /// COAUTH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType COAUTH = SecurityRoleType(
    fhirCode: 'COAUTH',
  );

  /// CONT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CONT = SecurityRoleType(
    fhirCode: 'CONT',
  );

  /// EVTWIT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType EVTWIT = SecurityRoleType(
    fhirCode: 'EVTWIT',
  );

  /// PRIMAUTH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PRIMAUTH = SecurityRoleType(
    fhirCode: 'PRIMAUTH',
  );

  /// REVIEWER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType REVIEWER = SecurityRoleType(
    fhirCode: 'REVIEWER',
  );

  /// SOURCE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType SOURCE = SecurityRoleType(
    fhirCode: 'SOURCE',
  );

  /// TRANS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType TRANS = SecurityRoleType(
    fhirCode: 'TRANS',
  );

  /// VALID
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType VALID = SecurityRoleType(
    fhirCode: 'VALID',
  );

  /// VERF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType VERF = SecurityRoleType(
    fhirCode: 'VERF',
  );

  /// AFFL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AFFL = SecurityRoleType(
    fhirCode: 'AFFL',
  );

  /// AGNT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AGNT = SecurityRoleType(
    fhirCode: 'AGNT',
  );

  /// ASSIGNED
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType ASSIGNED = SecurityRoleType(
    fhirCode: 'ASSIGNED',
  );

  /// CLAIM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CLAIM = SecurityRoleType(
    fhirCode: 'CLAIM',
  );

  /// COVPTY
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType COVPTY = SecurityRoleType(
    fhirCode: 'COVPTY',
  );

  /// DEPEN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DEPEN = SecurityRoleType(
    fhirCode: 'DEPEN',
  );

  /// ECON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType ECON = SecurityRoleType(
    fhirCode: 'ECON',
  );

  /// EMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType EMP = SecurityRoleType(
    fhirCode: 'EMP',
  );

  /// GUARD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType GUARD = SecurityRoleType(
    fhirCode: 'GUARD',
  );

  /// INVSBJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType INVSBJ = SecurityRoleType(
    fhirCode: 'INVSBJ',
  );

  /// NAMED
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType NAMED = SecurityRoleType(
    fhirCode: 'NAMED',
  );

  /// NOK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType NOK = SecurityRoleType(
    fhirCode: 'NOK',
  );

  /// PAT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PAT = SecurityRoleType(
    fhirCode: 'PAT',
  );

  /// PROV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PROV = SecurityRoleType(
    fhirCode: 'PROV',
  );

  /// NOT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType NOT = SecurityRoleType(
    fhirCode: 'NOT',
  );

  /// CLASSIFIER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CLASSIFIER = SecurityRoleType(
    fhirCode: 'CLASSIFIER',
  );

  /// CONSENTER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CONSENTER = SecurityRoleType(
    fhirCode: 'CONSENTER',
  );

  /// CONSWIT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CONSWIT = SecurityRoleType(
    fhirCode: 'CONSWIT',
  );

  /// COPART
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType COPART = SecurityRoleType(
    fhirCode: 'COPART',
  );

  /// DECLASSIFIER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DECLASSIFIER = SecurityRoleType(
    fhirCode: 'DECLASSIFIER',
  );

  /// DELEGATEE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DELEGATEE = SecurityRoleType(
    fhirCode: 'DELEGATEE',
  );

  /// DELEGATOR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DELEGATOR = SecurityRoleType(
    fhirCode: 'DELEGATOR',
  );

  /// DOWNGRDER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DOWNGRDER = SecurityRoleType(
    fhirCode: 'DOWNGRDER',
  );

  /// DPOWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DPOWATT = SecurityRoleType(
    fhirCode: 'DPOWATT',
  );

  /// EXCEST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType EXCEST = SecurityRoleType(
    fhirCode: 'EXCEST',
  );

  /// GRANTEE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType GRANTEE = SecurityRoleType(
    fhirCode: 'GRANTEE',
  );

  /// GRANTOR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType GRANTOR = SecurityRoleType(
    fhirCode: 'GRANTOR',
  );

  /// GT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType GT = SecurityRoleType(
    fhirCode: 'GT',
  );

  /// GUADLTM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType GUADLTM = SecurityRoleType(
    fhirCode: 'GUADLTM',
  );

  /// HPOWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType HPOWATT = SecurityRoleType(
    fhirCode: 'HPOWATT',
  );

  /// INTPRTER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType INTPRTER = SecurityRoleType(
    fhirCode: 'INTPRTER',
  );

  /// POWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType POWATT = SecurityRoleType(
    fhirCode: 'POWATT',
  );

  /// RESPRSN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RESPRSN = SecurityRoleType(
    fhirCode: 'RESPRSN',
  );

  /// SPOWATT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType SPOWATT = SecurityRoleType(
    fhirCode: 'SPOWATT',
  );

  /// AUCG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AUCG = SecurityRoleType(
    fhirCode: 'AUCG',
  );

  /// AULR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AULR = SecurityRoleType(
    fhirCode: 'AULR',
  );

  /// AUTM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AUTM = SecurityRoleType(
    fhirCode: 'AUTM',
  );

  /// AUWA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AUWA = SecurityRoleType(
    fhirCode: 'AUWA',
  );

  /// PROMSK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PROMSK = SecurityRoleType(
    fhirCode: 'PROMSK',
  );

  /// AUT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AUT = SecurityRoleType(
    fhirCode: 'AUT',
  );

  /// CST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CST = SecurityRoleType(
    fhirCode: 'CST',
  );

  /// INF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType INF = SecurityRoleType(
    fhirCode: 'INF',
  );

  /// IRCP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType IRCP = SecurityRoleType(
    fhirCode: 'IRCP',
  );

  /// LA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType LA = SecurityRoleType(
    fhirCode: 'LA',
  );

  /// TRC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType TRC = SecurityRoleType(
    fhirCode: 'TRC',
  );

  /// WIT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType WIT = SecurityRoleType(
    fhirCode: 'WIT',
  );

  /// authserver
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType authserver = SecurityRoleType(
    fhirCode: 'authserver',
  );

  /// datacollector
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType datacollector = SecurityRoleType(
    fhirCode: 'datacollector',
  );

  /// dataprocessor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType dataprocessor = SecurityRoleType(
    fhirCode: 'dataprocessor',
  );

  /// datasubject
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType datasubject = SecurityRoleType(
    fhirCode: 'datasubject',
  );

  /// humanuser
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType humanuser = SecurityRoleType(
    fhirCode: 'humanuser',
  );

  /// ARCHIVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType ARCHIVE = SecurityRoleType(
    fhirCode: 'ARCHIVE',
  );

  /// AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AR = SecurityRoleType(
    fhirCode: 'AR',
  );

  /// AS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AS = SecurityRoleType(
    fhirCode: 'AS',
  );

  /// AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType AU = SecurityRoleType(
    fhirCode: 'AU',
  );

  /// BDUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType BDUS = SecurityRoleType(
    fhirCode: 'BDUS',
  );

  /// BI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType BI = SecurityRoleType(
    fhirCode: 'BI',
  );

  /// BMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType BMD = SecurityRoleType(
    fhirCode: 'BMD',
  );

  /// CAD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CAD = SecurityRoleType(
    fhirCode: 'CAD',
  );

  /// CAPTURE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CAPTURE = SecurityRoleType(
    fhirCode: 'CAPTURE',
  );

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CD = SecurityRoleType(
    fhirCode: 'CD',
  );

  /// CF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CF = SecurityRoleType(
    fhirCode: 'CF',
  );

  /// COMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType COMP = SecurityRoleType(
    fhirCode: 'COMP',
  );

  /// CP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CP = SecurityRoleType(
    fhirCode: 'CP',
  );

  /// CR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CR = SecurityRoleType(
    fhirCode: 'CR',
  );

  /// CS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CS = SecurityRoleType(
    fhirCode: 'CS',
  );

  /// CT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType CT = SecurityRoleType(
    fhirCode: 'CT',
  );

  /// DD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DD = SecurityRoleType(
    fhirCode: 'DD',
  );

  /// DF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DF = SecurityRoleType(
    fhirCode: 'DF',
  );

  /// DG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DG = SecurityRoleType(
    fhirCode: 'DG',
  );

  /// DM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DM = SecurityRoleType(
    fhirCode: 'DM',
  );

  /// DOCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DOCD = SecurityRoleType(
    fhirCode: 'DOCD',
  );

  /// DS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DS = SecurityRoleType(
    fhirCode: 'DS',
  );

  /// DSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DSS = SecurityRoleType(
    fhirCode: 'DSS',
  );

  /// DX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType DX = SecurityRoleType(
    fhirCode: 'DX',
  );

  /// EC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType EC = SecurityRoleType(
    fhirCode: 'EC',
  );

  /// ECG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType ECG = SecurityRoleType(
    fhirCode: 'ECG',
  );

  /// EPS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType EPS = SecurityRoleType(
    fhirCode: 'EPS',
  );

  /// ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType ES = SecurityRoleType(
    fhirCode: 'ES',
  );

  /// F
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType F = SecurityRoleType(
    fhirCode: 'F',
  );

  /// FA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType FA = SecurityRoleType(
    fhirCode: 'FA',
  );

  /// FC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType FC = SecurityRoleType(
    fhirCode: 'FC',
  );

  /// FILMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType FILMD = SecurityRoleType(
    fhirCode: 'FILMD',
  );

  /// FP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType FP = SecurityRoleType(
    fhirCode: 'FP',
  );

  /// FS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType FS = SecurityRoleType(
    fhirCode: 'FS',
  );

  /// GM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType GM = SecurityRoleType(
    fhirCode: 'GM',
  );

  /// H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType H = SecurityRoleType(
    fhirCode: 'H',
  );

  /// HC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType HC = SecurityRoleType(
    fhirCode: 'HC',
  );

  /// HD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType HD = SecurityRoleType(
    fhirCode: 'HD',
  );

  /// IO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType IO = SecurityRoleType(
    fhirCode: 'IO',
  );

  /// IVOCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType IVOCT = SecurityRoleType(
    fhirCode: 'IVOCT',
  );

  /// IVUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType IVUS = SecurityRoleType(
    fhirCode: 'IVUS',
  );

  /// KER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType KER = SecurityRoleType(
    fhirCode: 'KER',
  );

  /// KO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType KO = SecurityRoleType(
    fhirCode: 'KO',
  );

  /// LEN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType LEN = SecurityRoleType(
    fhirCode: 'LEN',
  );

  /// LOG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType LOG = SecurityRoleType(
    fhirCode: 'LOG',
  );

  /// LP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType LP = SecurityRoleType(
    fhirCode: 'LP',
  );

  /// LS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType LS = SecurityRoleType(
    fhirCode: 'LS',
  );

  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType M = SecurityRoleType(
    fhirCode: 'M',
  );

  /// MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MA = SecurityRoleType(
    fhirCode: 'MA',
  );

  /// MC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MC = SecurityRoleType(
    fhirCode: 'MC',
  );

  /// MCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MCD = SecurityRoleType(
    fhirCode: 'MCD',
  );

  /// MEDIM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MEDIM = SecurityRoleType(
    fhirCode: 'MEDIM',
  );

  /// MG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MG = SecurityRoleType(
    fhirCode: 'MG',
  );

  /// MP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MP = SecurityRoleType(
    fhirCode: 'MP',
  );

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MR = SecurityRoleType(
    fhirCode: 'MR',
  );

  /// MS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType MS = SecurityRoleType(
    fhirCode: 'MS',
  );

  /// NEARLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType NEARLINE = SecurityRoleType(
    fhirCode: 'NEARLINE',
  );

  /// NM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType NM = SecurityRoleType(
    fhirCode: 'NM',
  );

  /// OAM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OAM = SecurityRoleType(
    fhirCode: 'OAM',
  );

  /// OCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OCT = SecurityRoleType(
    fhirCode: 'OCT',
  );

  /// OFFLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OFFLINE = SecurityRoleType(
    fhirCode: 'OFFLINE',
  );

  /// ONLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType ONLINE = SecurityRoleType(
    fhirCode: 'ONLINE',
  );

  /// OP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OP = SecurityRoleType(
    fhirCode: 'OP',
  );

  /// OPM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OPM = SecurityRoleType(
    fhirCode: 'OPM',
  );

  /// OPR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OPR = SecurityRoleType(
    fhirCode: 'OPR',
  );

  /// OPT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OPT = SecurityRoleType(
    fhirCode: 'OPT',
  );

  /// OPV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OPV = SecurityRoleType(
    fhirCode: 'OPV',
  );

  /// OSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OSS = SecurityRoleType(
    fhirCode: 'OSS',
  );

  /// OT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType OT = SecurityRoleType(
    fhirCode: 'OT',
  );

  /// PR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PR = SecurityRoleType(
    fhirCode: 'PR',
  );

  /// PRINT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PRINT = SecurityRoleType(
    fhirCode: 'PRINT',
  );

  /// PT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PT = SecurityRoleType(
    fhirCode: 'PT',
  );

  /// PX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType PX = SecurityRoleType(
    fhirCode: 'PX',
  );

  /// REG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType REG = SecurityRoleType(
    fhirCode: 'REG',
  );

  /// RF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RF = SecurityRoleType(
    fhirCode: 'RF',
  );

  /// RG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RG = SecurityRoleType(
    fhirCode: 'RG',
  );

  /// RT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RT = SecurityRoleType(
    fhirCode: 'RT',
  );

  /// RTDOSE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RTDOSE = SecurityRoleType(
    fhirCode: 'RTDOSE',
  );

  /// RTIMAGE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RTIMAGE = SecurityRoleType(
    fhirCode: 'RTIMAGE',
  );

  /// RTPLAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RTPLAN = SecurityRoleType(
    fhirCode: 'RTPLAN',
  );

  /// RTRECORD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RTRECORD = SecurityRoleType(
    fhirCode: 'RTRECORD',
  );

  /// RTSTRUCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType RTSTRUCT = SecurityRoleType(
    fhirCode: 'RTSTRUCT',
  );

  /// SEG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType SEG = SecurityRoleType(
    fhirCode: 'SEG',
  );

  /// SM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType SM = SecurityRoleType(
    fhirCode: 'SM',
  );

  /// SMR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType SMR = SecurityRoleType(
    fhirCode: 'SMR',
  );

  /// SR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType SR = SecurityRoleType(
    fhirCode: 'SR',
  );

  /// SRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType SRF = SecurityRoleType(
    fhirCode: 'SRF',
  );

  /// ST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType ST = SecurityRoleType(
    fhirCode: 'ST',
  );

  /// TG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType TG = SecurityRoleType(
    fhirCode: 'TG',
  );

  /// U
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType U = SecurityRoleType(
    fhirCode: 'U',
  );

  /// UNAVAILABLE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType UNAVAILABLE = SecurityRoleType(
    fhirCode: 'UNAVAILABLE',
  );

  /// US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType US = SecurityRoleType(
    fhirCode: 'US',
  );

  /// VA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType VA = SecurityRoleType(
    fhirCode: 'VA',
  );

  /// VF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType VF = SecurityRoleType(
    fhirCode: 'VF',
  );

  /// VIDD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType VIDD = SecurityRoleType(
    fhirCode: 'VIDD',
  );

  /// WSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType WSD = SecurityRoleType(
    fhirCode: 'WSD',
  );

  /// XA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType XA = SecurityRoleType(
    fhirCode: 'XA',
  );

  /// XC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType XC = SecurityRoleType(
    fhirCode: 'XC',
  );

  /// value109001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109001 = SecurityRoleType(
    fhirCode: '109001',
  );

  /// value109002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109002 = SecurityRoleType(
    fhirCode: '109002',
  );

  /// value109003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109003 = SecurityRoleType(
    fhirCode: '109003',
  );

  /// value109004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109004 = SecurityRoleType(
    fhirCode: '109004',
  );

  /// value109005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109005 = SecurityRoleType(
    fhirCode: '109005',
  );

  /// value109006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109006 = SecurityRoleType(
    fhirCode: '109006',
  );

  /// value109007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109007 = SecurityRoleType(
    fhirCode: '109007',
  );

  /// value109008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109008 = SecurityRoleType(
    fhirCode: '109008',
  );

  /// value109009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109009 = SecurityRoleType(
    fhirCode: '109009',
  );

  /// value109010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109010 = SecurityRoleType(
    fhirCode: '109010',
  );

  /// value109011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109011 = SecurityRoleType(
    fhirCode: '109011',
  );

  /// value109012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109012 = SecurityRoleType(
    fhirCode: '109012',
  );

  /// value109013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109013 = SecurityRoleType(
    fhirCode: '109013',
  );

  /// value109014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109014 = SecurityRoleType(
    fhirCode: '109014',
  );

  /// value109015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109015 = SecurityRoleType(
    fhirCode: '109015',
  );

  /// value109016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109016 = SecurityRoleType(
    fhirCode: '109016',
  );

  /// value109017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109017 = SecurityRoleType(
    fhirCode: '109017',
  );

  /// value109018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109018 = SecurityRoleType(
    fhirCode: '109018',
  );

  /// value109019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109019 = SecurityRoleType(
    fhirCode: '109019',
  );

  /// value109020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109020 = SecurityRoleType(
    fhirCode: '109020',
  );

  /// value109021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109021 = SecurityRoleType(
    fhirCode: '109021',
  );

  /// value109022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109022 = SecurityRoleType(
    fhirCode: '109022',
  );

  /// value109023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109023 = SecurityRoleType(
    fhirCode: '109023',
  );

  /// value109024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109024 = SecurityRoleType(
    fhirCode: '109024',
  );

  /// value109025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109025 = SecurityRoleType(
    fhirCode: '109025',
  );

  /// value109026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109026 = SecurityRoleType(
    fhirCode: '109026',
  );

  /// value109027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109027 = SecurityRoleType(
    fhirCode: '109027',
  );

  /// value109028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109028 = SecurityRoleType(
    fhirCode: '109028',
  );

  /// value109029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109029 = SecurityRoleType(
    fhirCode: '109029',
  );

  /// value109030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109030 = SecurityRoleType(
    fhirCode: '109030',
  );

  /// value109031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109031 = SecurityRoleType(
    fhirCode: '109031',
  );

  /// value109032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109032 = SecurityRoleType(
    fhirCode: '109032',
  );

  /// value109033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109033 = SecurityRoleType(
    fhirCode: '109033',
  );

  /// value109034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109034 = SecurityRoleType(
    fhirCode: '109034',
  );

  /// value109035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109035 = SecurityRoleType(
    fhirCode: '109035',
  );

  /// value109036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109036 = SecurityRoleType(
    fhirCode: '109036',
  );

  /// value109037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109037 = SecurityRoleType(
    fhirCode: '109037',
  );

  /// value109038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109038 = SecurityRoleType(
    fhirCode: '109038',
  );

  /// value109039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109039 = SecurityRoleType(
    fhirCode: '109039',
  );

  /// value109040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109040 = SecurityRoleType(
    fhirCode: '109040',
  );

  /// value109041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109041 = SecurityRoleType(
    fhirCode: '109041',
  );

  /// value109042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109042 = SecurityRoleType(
    fhirCode: '109042',
  );

  /// value109043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109043 = SecurityRoleType(
    fhirCode: '109043',
  );

  /// value109044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109044 = SecurityRoleType(
    fhirCode: '109044',
  );

  /// value109045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109045 = SecurityRoleType(
    fhirCode: '109045',
  );

  /// value109046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109046 = SecurityRoleType(
    fhirCode: '109046',
  );

  /// value109047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109047 = SecurityRoleType(
    fhirCode: '109047',
  );

  /// value109048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109048 = SecurityRoleType(
    fhirCode: '109048',
  );

  /// value109049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109049 = SecurityRoleType(
    fhirCode: '109049',
  );

  /// value109050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109050 = SecurityRoleType(
    fhirCode: '109050',
  );

  /// value109051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109051 = SecurityRoleType(
    fhirCode: '109051',
  );

  /// value109052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109052 = SecurityRoleType(
    fhirCode: '109052',
  );

  /// value109053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109053 = SecurityRoleType(
    fhirCode: '109053',
  );

  /// value109054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109054 = SecurityRoleType(
    fhirCode: '109054',
  );

  /// value109055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109055 = SecurityRoleType(
    fhirCode: '109055',
  );

  /// value109056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109056 = SecurityRoleType(
    fhirCode: '109056',
  );

  /// value109057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109057 = SecurityRoleType(
    fhirCode: '109057',
  );

  /// value109058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109058 = SecurityRoleType(
    fhirCode: '109058',
  );

  /// value109059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109059 = SecurityRoleType(
    fhirCode: '109059',
  );

  /// value109060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109060 = SecurityRoleType(
    fhirCode: '109060',
  );

  /// value109061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109061 = SecurityRoleType(
    fhirCode: '109061',
  );

  /// value109063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109063 = SecurityRoleType(
    fhirCode: '109063',
  );

  /// value109070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109070 = SecurityRoleType(
    fhirCode: '109070',
  );

  /// value109071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109071 = SecurityRoleType(
    fhirCode: '109071',
  );

  /// value109072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109072 = SecurityRoleType(
    fhirCode: '109072',
  );

  /// value109073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109073 = SecurityRoleType(
    fhirCode: '109073',
  );

  /// value109080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109080 = SecurityRoleType(
    fhirCode: '109080',
  );

  /// value109081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109081 = SecurityRoleType(
    fhirCode: '109081',
  );

  /// value109082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109082 = SecurityRoleType(
    fhirCode: '109082',
  );

  /// value109083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109083 = SecurityRoleType(
    fhirCode: '109083',
  );

  /// value109091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109091 = SecurityRoleType(
    fhirCode: '109091',
  );

  /// value109092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109092 = SecurityRoleType(
    fhirCode: '109092',
  );

  /// value109093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109093 = SecurityRoleType(
    fhirCode: '109093',
  );

  /// value109094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109094 = SecurityRoleType(
    fhirCode: '109094',
  );

  /// value109095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109095 = SecurityRoleType(
    fhirCode: '109095',
  );

  /// value109096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109096 = SecurityRoleType(
    fhirCode: '109096',
  );

  /// value109101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109101 = SecurityRoleType(
    fhirCode: '109101',
  );

  /// value109102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109102 = SecurityRoleType(
    fhirCode: '109102',
  );

  /// value109103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109103 = SecurityRoleType(
    fhirCode: '109103',
  );

  /// value109104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109104 = SecurityRoleType(
    fhirCode: '109104',
  );

  /// value109105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109105 = SecurityRoleType(
    fhirCode: '109105',
  );

  /// value109106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109106 = SecurityRoleType(
    fhirCode: '109106',
  );

  /// value109110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109110 = SecurityRoleType(
    fhirCode: '109110',
  );

  /// value109111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109111 = SecurityRoleType(
    fhirCode: '109111',
  );

  /// value109112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109112 = SecurityRoleType(
    fhirCode: '109112',
  );

  /// value109113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109113 = SecurityRoleType(
    fhirCode: '109113',
  );

  /// value109114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109114 = SecurityRoleType(
    fhirCode: '109114',
  );

  /// value109115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109115 = SecurityRoleType(
    fhirCode: '109115',
  );

  /// value109116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109116 = SecurityRoleType(
    fhirCode: '109116',
  );

  /// value109117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109117 = SecurityRoleType(
    fhirCode: '109117',
  );

  /// value109120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109120 = SecurityRoleType(
    fhirCode: '109120',
  );

  /// value109121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109121 = SecurityRoleType(
    fhirCode: '109121',
  );

  /// value109122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109122 = SecurityRoleType(
    fhirCode: '109122',
  );

  /// value109123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109123 = SecurityRoleType(
    fhirCode: '109123',
  );

  /// value109124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109124 = SecurityRoleType(
    fhirCode: '109124',
  );

  /// value109125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109125 = SecurityRoleType(
    fhirCode: '109125',
  );

  /// value109132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109132 = SecurityRoleType(
    fhirCode: '109132',
  );

  /// value109133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109133 = SecurityRoleType(
    fhirCode: '109133',
  );

  /// value109134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109134 = SecurityRoleType(
    fhirCode: '109134',
  );

  /// value109135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109135 = SecurityRoleType(
    fhirCode: '109135',
  );

  /// value109136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109136 = SecurityRoleType(
    fhirCode: '109136',
  );

  /// value109200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109200 = SecurityRoleType(
    fhirCode: '109200',
  );

  /// value109201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109201 = SecurityRoleType(
    fhirCode: '109201',
  );

  /// value109202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109202 = SecurityRoleType(
    fhirCode: '109202',
  );

  /// value109203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109203 = SecurityRoleType(
    fhirCode: '109203',
  );

  /// value109204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109204 = SecurityRoleType(
    fhirCode: '109204',
  );

  /// value109205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109205 = SecurityRoleType(
    fhirCode: '109205',
  );

  /// value109206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109206 = SecurityRoleType(
    fhirCode: '109206',
  );

  /// value109207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109207 = SecurityRoleType(
    fhirCode: '109207',
  );

  /// value109208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109208 = SecurityRoleType(
    fhirCode: '109208',
  );

  /// value109209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109209 = SecurityRoleType(
    fhirCode: '109209',
  );

  /// value109210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109210 = SecurityRoleType(
    fhirCode: '109210',
  );

  /// value109211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109211 = SecurityRoleType(
    fhirCode: '109211',
  );

  /// value109212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109212 = SecurityRoleType(
    fhirCode: '109212',
  );

  /// value109213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109213 = SecurityRoleType(
    fhirCode: '109213',
  );

  /// value109214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109214 = SecurityRoleType(
    fhirCode: '109214',
  );

  /// value109215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109215 = SecurityRoleType(
    fhirCode: '109215',
  );

  /// value109216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109216 = SecurityRoleType(
    fhirCode: '109216',
  );

  /// value109217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109217 = SecurityRoleType(
    fhirCode: '109217',
  );

  /// value109218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109218 = SecurityRoleType(
    fhirCode: '109218',
  );

  /// value109219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109219 = SecurityRoleType(
    fhirCode: '109219',
  );

  /// value109220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109220 = SecurityRoleType(
    fhirCode: '109220',
  );

  /// value109221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109221 = SecurityRoleType(
    fhirCode: '109221',
  );

  /// value109222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109222 = SecurityRoleType(
    fhirCode: '109222',
  );

  /// value109701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109701 = SecurityRoleType(
    fhirCode: '109701',
  );

  /// value109702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109702 = SecurityRoleType(
    fhirCode: '109702',
  );

  /// value109703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109703 = SecurityRoleType(
    fhirCode: '109703',
  );

  /// value109704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109704 = SecurityRoleType(
    fhirCode: '109704',
  );

  /// value109705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109705 = SecurityRoleType(
    fhirCode: '109705',
  );

  /// value109706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109706 = SecurityRoleType(
    fhirCode: '109706',
  );

  /// value109707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109707 = SecurityRoleType(
    fhirCode: '109707',
  );

  /// value109708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109708 = SecurityRoleType(
    fhirCode: '109708',
  );

  /// value109709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109709 = SecurityRoleType(
    fhirCode: '109709',
  );

  /// value109710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109710 = SecurityRoleType(
    fhirCode: '109710',
  );

  /// value109801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109801 = SecurityRoleType(
    fhirCode: '109801',
  );

  /// value109802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109802 = SecurityRoleType(
    fhirCode: '109802',
  );

  /// value109803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109803 = SecurityRoleType(
    fhirCode: '109803',
  );

  /// value109804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109804 = SecurityRoleType(
    fhirCode: '109804',
  );

  /// value109805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109805 = SecurityRoleType(
    fhirCode: '109805',
  );

  /// value109806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109806 = SecurityRoleType(
    fhirCode: '109806',
  );

  /// value109807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109807 = SecurityRoleType(
    fhirCode: '109807',
  );

  /// value109808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109808 = SecurityRoleType(
    fhirCode: '109808',
  );

  /// value109809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109809 = SecurityRoleType(
    fhirCode: '109809',
  );

  /// value109810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109810 = SecurityRoleType(
    fhirCode: '109810',
  );

  /// value109811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109811 = SecurityRoleType(
    fhirCode: '109811',
  );

  /// value109812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109812 = SecurityRoleType(
    fhirCode: '109812',
  );

  /// value109813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109813 = SecurityRoleType(
    fhirCode: '109813',
  );

  /// value109814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109814 = SecurityRoleType(
    fhirCode: '109814',
  );

  /// value109815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109815 = SecurityRoleType(
    fhirCode: '109815',
  );

  /// value109816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109816 = SecurityRoleType(
    fhirCode: '109816',
  );

  /// value109817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109817 = SecurityRoleType(
    fhirCode: '109817',
  );

  /// value109818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109818 = SecurityRoleType(
    fhirCode: '109818',
  );

  /// value109819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109819 = SecurityRoleType(
    fhirCode: '109819',
  );

  /// value109820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109820 = SecurityRoleType(
    fhirCode: '109820',
  );

  /// value109821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109821 = SecurityRoleType(
    fhirCode: '109821',
  );

  /// value109822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109822 = SecurityRoleType(
    fhirCode: '109822',
  );

  /// value109823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109823 = SecurityRoleType(
    fhirCode: '109823',
  );

  /// value109824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109824 = SecurityRoleType(
    fhirCode: '109824',
  );

  /// value109825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109825 = SecurityRoleType(
    fhirCode: '109825',
  );

  /// value109826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109826 = SecurityRoleType(
    fhirCode: '109826',
  );

  /// value109827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109827 = SecurityRoleType(
    fhirCode: '109827',
  );

  /// value109828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109828 = SecurityRoleType(
    fhirCode: '109828',
  );

  /// value109829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109829 = SecurityRoleType(
    fhirCode: '109829',
  );

  /// value109830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109830 = SecurityRoleType(
    fhirCode: '109830',
  );

  /// value109831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109831 = SecurityRoleType(
    fhirCode: '109831',
  );

  /// value109832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109832 = SecurityRoleType(
    fhirCode: '109832',
  );

  /// value109833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109833 = SecurityRoleType(
    fhirCode: '109833',
  );

  /// value109834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109834 = SecurityRoleType(
    fhirCode: '109834',
  );

  /// value109835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109835 = SecurityRoleType(
    fhirCode: '109835',
  );

  /// value109836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109836 = SecurityRoleType(
    fhirCode: '109836',
  );

  /// value109837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109837 = SecurityRoleType(
    fhirCode: '109837',
  );

  /// value109838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109838 = SecurityRoleType(
    fhirCode: '109838',
  );

  /// value109839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109839 = SecurityRoleType(
    fhirCode: '109839',
  );

  /// value109840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109840 = SecurityRoleType(
    fhirCode: '109840',
  );

  /// value109841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109841 = SecurityRoleType(
    fhirCode: '109841',
  );

  /// value109842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109842 = SecurityRoleType(
    fhirCode: '109842',
  );

  /// value109843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109843 = SecurityRoleType(
    fhirCode: '109843',
  );

  /// value109844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109844 = SecurityRoleType(
    fhirCode: '109844',
  );

  /// value109845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109845 = SecurityRoleType(
    fhirCode: '109845',
  );

  /// value109846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109846 = SecurityRoleType(
    fhirCode: '109846',
  );

  /// value109847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109847 = SecurityRoleType(
    fhirCode: '109847',
  );

  /// value109848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109848 = SecurityRoleType(
    fhirCode: '109848',
  );

  /// value109849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109849 = SecurityRoleType(
    fhirCode: '109849',
  );

  /// value109850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109850 = SecurityRoleType(
    fhirCode: '109850',
  );

  /// value109851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109851 = SecurityRoleType(
    fhirCode: '109851',
  );

  /// value109852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109852 = SecurityRoleType(
    fhirCode: '109852',
  );

  /// value109853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109853 = SecurityRoleType(
    fhirCode: '109853',
  );

  /// value109854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109854 = SecurityRoleType(
    fhirCode: '109854',
  );

  /// value109855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109855 = SecurityRoleType(
    fhirCode: '109855',
  );

  /// value109856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109856 = SecurityRoleType(
    fhirCode: '109856',
  );

  /// value109857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109857 = SecurityRoleType(
    fhirCode: '109857',
  );

  /// value109858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109858 = SecurityRoleType(
    fhirCode: '109858',
  );

  /// value109859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109859 = SecurityRoleType(
    fhirCode: '109859',
  );

  /// value109860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109860 = SecurityRoleType(
    fhirCode: '109860',
  );

  /// value109861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109861 = SecurityRoleType(
    fhirCode: '109861',
  );

  /// value109862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109862 = SecurityRoleType(
    fhirCode: '109862',
  );

  /// value109863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109863 = SecurityRoleType(
    fhirCode: '109863',
  );

  /// value109864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109864 = SecurityRoleType(
    fhirCode: '109864',
  );

  /// value109865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109865 = SecurityRoleType(
    fhirCode: '109865',
  );

  /// value109866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109866 = SecurityRoleType(
    fhirCode: '109866',
  );

  /// value109867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109867 = SecurityRoleType(
    fhirCode: '109867',
  );

  /// value109868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109868 = SecurityRoleType(
    fhirCode: '109868',
  );

  /// value109869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109869 = SecurityRoleType(
    fhirCode: '109869',
  );

  /// value109870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109870 = SecurityRoleType(
    fhirCode: '109870',
  );

  /// value109871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109871 = SecurityRoleType(
    fhirCode: '109871',
  );

  /// value109872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109872 = SecurityRoleType(
    fhirCode: '109872',
  );

  /// value109873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109873 = SecurityRoleType(
    fhirCode: '109873',
  );

  /// value109874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109874 = SecurityRoleType(
    fhirCode: '109874',
  );

  /// value109875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109875 = SecurityRoleType(
    fhirCode: '109875',
  );

  /// value109876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109876 = SecurityRoleType(
    fhirCode: '109876',
  );

  /// value109877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109877 = SecurityRoleType(
    fhirCode: '109877',
  );

  /// value109878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109878 = SecurityRoleType(
    fhirCode: '109878',
  );

  /// value109879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109879 = SecurityRoleType(
    fhirCode: '109879',
  );

  /// value109880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109880 = SecurityRoleType(
    fhirCode: '109880',
  );

  /// value109881
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109881 = SecurityRoleType(
    fhirCode: '109881',
  );

  /// value109901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109901 = SecurityRoleType(
    fhirCode: '109901',
  );

  /// value109902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109902 = SecurityRoleType(
    fhirCode: '109902',
  );

  /// value109903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109903 = SecurityRoleType(
    fhirCode: '109903',
  );

  /// value109904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109904 = SecurityRoleType(
    fhirCode: '109904',
  );

  /// value109905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109905 = SecurityRoleType(
    fhirCode: '109905',
  );

  /// value109906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109906 = SecurityRoleType(
    fhirCode: '109906',
  );

  /// value109907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109907 = SecurityRoleType(
    fhirCode: '109907',
  );

  /// value109908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109908 = SecurityRoleType(
    fhirCode: '109908',
  );

  /// value109909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109909 = SecurityRoleType(
    fhirCode: '109909',
  );

  /// value109910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109910 = SecurityRoleType(
    fhirCode: '109910',
  );

  /// value109911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109911 = SecurityRoleType(
    fhirCode: '109911',
  );

  /// value109912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109912 = SecurityRoleType(
    fhirCode: '109912',
  );

  /// value109913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109913 = SecurityRoleType(
    fhirCode: '109913',
  );

  /// value109914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109914 = SecurityRoleType(
    fhirCode: '109914',
  );

  /// value109915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109915 = SecurityRoleType(
    fhirCode: '109915',
  );

  /// value109916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109916 = SecurityRoleType(
    fhirCode: '109916',
  );

  /// value109917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109917 = SecurityRoleType(
    fhirCode: '109917',
  );

  /// value109918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109918 = SecurityRoleType(
    fhirCode: '109918',
  );

  /// value109919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109919 = SecurityRoleType(
    fhirCode: '109919',
  );

  /// value109920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109920 = SecurityRoleType(
    fhirCode: '109920',
  );

  /// value109921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109921 = SecurityRoleType(
    fhirCode: '109921',
  );

  /// value109931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109931 = SecurityRoleType(
    fhirCode: '109931',
  );

  /// value109932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109932 = SecurityRoleType(
    fhirCode: '109932',
  );

  /// value109933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109933 = SecurityRoleType(
    fhirCode: '109933',
  );

  /// value109941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109941 = SecurityRoleType(
    fhirCode: '109941',
  );

  /// value109943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109943 = SecurityRoleType(
    fhirCode: '109943',
  );

  /// value109991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109991 = SecurityRoleType(
    fhirCode: '109991',
  );

  /// value109992
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109992 = SecurityRoleType(
    fhirCode: '109992',
  );

  /// value109993
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109993 = SecurityRoleType(
    fhirCode: '109993',
  );

  /// value109994
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109994 = SecurityRoleType(
    fhirCode: '109994',
  );

  /// value109995
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109995 = SecurityRoleType(
    fhirCode: '109995',
  );

  /// value109996
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109996 = SecurityRoleType(
    fhirCode: '109996',
  );

  /// value109997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109997 = SecurityRoleType(
    fhirCode: '109997',
  );

  /// value109998
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109998 = SecurityRoleType(
    fhirCode: '109998',
  );

  /// value109999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value109999 = SecurityRoleType(
    fhirCode: '109999',
  );

  /// value110001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110001 = SecurityRoleType(
    fhirCode: '110001',
  );

  /// value110002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110002 = SecurityRoleType(
    fhirCode: '110002',
  );

  /// value110003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110003 = SecurityRoleType(
    fhirCode: '110003',
  );

  /// value110004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110004 = SecurityRoleType(
    fhirCode: '110004',
  );

  /// value110005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110005 = SecurityRoleType(
    fhirCode: '110005',
  );

  /// value110006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110006 = SecurityRoleType(
    fhirCode: '110006',
  );

  /// value110007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110007 = SecurityRoleType(
    fhirCode: '110007',
  );

  /// value110008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110008 = SecurityRoleType(
    fhirCode: '110008',
  );

  /// value110009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110009 = SecurityRoleType(
    fhirCode: '110009',
  );

  /// value110010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110010 = SecurityRoleType(
    fhirCode: '110010',
  );

  /// value110011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110011 = SecurityRoleType(
    fhirCode: '110011',
  );

  /// value110012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110012 = SecurityRoleType(
    fhirCode: '110012',
  );

  /// value110013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110013 = SecurityRoleType(
    fhirCode: '110013',
  );

  /// value110020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110020 = SecurityRoleType(
    fhirCode: '110020',
  );

  /// value110021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110021 = SecurityRoleType(
    fhirCode: '110021',
  );

  /// value110022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110022 = SecurityRoleType(
    fhirCode: '110022',
  );

  /// value110023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110023 = SecurityRoleType(
    fhirCode: '110023',
  );

  /// value110024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110024 = SecurityRoleType(
    fhirCode: '110024',
  );

  /// value110025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110025 = SecurityRoleType(
    fhirCode: '110025',
  );

  /// value110026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110026 = SecurityRoleType(
    fhirCode: '110026',
  );

  /// value110027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110027 = SecurityRoleType(
    fhirCode: '110027',
  );

  /// value110028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110028 = SecurityRoleType(
    fhirCode: '110028',
  );

  /// value110030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110030 = SecurityRoleType(
    fhirCode: '110030',
  );

  /// value110031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110031 = SecurityRoleType(
    fhirCode: '110031',
  );

  /// value110032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110032 = SecurityRoleType(
    fhirCode: '110032',
  );

  /// value110033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110033 = SecurityRoleType(
    fhirCode: '110033',
  );

  /// value110034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110034 = SecurityRoleType(
    fhirCode: '110034',
  );

  /// value110035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110035 = SecurityRoleType(
    fhirCode: '110035',
  );

  /// value110036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110036 = SecurityRoleType(
    fhirCode: '110036',
  );

  /// value110037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110037 = SecurityRoleType(
    fhirCode: '110037',
  );

  /// value110038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110038 = SecurityRoleType(
    fhirCode: '110038',
  );

  /// value110100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110100 = SecurityRoleType(
    fhirCode: '110100',
  );

  /// value110101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110101 = SecurityRoleType(
    fhirCode: '110101',
  );

  /// value110102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110102 = SecurityRoleType(
    fhirCode: '110102',
  );

  /// value110103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110103 = SecurityRoleType(
    fhirCode: '110103',
  );

  /// value110104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110104 = SecurityRoleType(
    fhirCode: '110104',
  );

  /// value110105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110105 = SecurityRoleType(
    fhirCode: '110105',
  );

  /// value110106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110106 = SecurityRoleType(
    fhirCode: '110106',
  );

  /// value110107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110107 = SecurityRoleType(
    fhirCode: '110107',
  );

  /// value110108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110108 = SecurityRoleType(
    fhirCode: '110108',
  );

  /// value110109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110109 = SecurityRoleType(
    fhirCode: '110109',
  );

  /// value110110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110110 = SecurityRoleType(
    fhirCode: '110110',
  );

  /// value110111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110111 = SecurityRoleType(
    fhirCode: '110111',
  );

  /// value110112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110112 = SecurityRoleType(
    fhirCode: '110112',
  );

  /// value110113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110113 = SecurityRoleType(
    fhirCode: '110113',
  );

  /// value110114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110114 = SecurityRoleType(
    fhirCode: '110114',
  );

  /// value110120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110120 = SecurityRoleType(
    fhirCode: '110120',
  );

  /// value110121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110121 = SecurityRoleType(
    fhirCode: '110121',
  );

  /// value110122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110122 = SecurityRoleType(
    fhirCode: '110122',
  );

  /// value110123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110123 = SecurityRoleType(
    fhirCode: '110123',
  );

  /// value110124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110124 = SecurityRoleType(
    fhirCode: '110124',
  );

  /// value110125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110125 = SecurityRoleType(
    fhirCode: '110125',
  );

  /// value110126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110126 = SecurityRoleType(
    fhirCode: '110126',
  );

  /// value110127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110127 = SecurityRoleType(
    fhirCode: '110127',
  );

  /// value110128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110128 = SecurityRoleType(
    fhirCode: '110128',
  );

  /// value110129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110129 = SecurityRoleType(
    fhirCode: '110129',
  );

  /// value110130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110130 = SecurityRoleType(
    fhirCode: '110130',
  );

  /// value110131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110131 = SecurityRoleType(
    fhirCode: '110131',
  );

  /// value110132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110132 = SecurityRoleType(
    fhirCode: '110132',
  );

  /// value110133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110133 = SecurityRoleType(
    fhirCode: '110133',
  );

  /// value110134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110134 = SecurityRoleType(
    fhirCode: '110134',
  );

  /// value110135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110135 = SecurityRoleType(
    fhirCode: '110135',
  );

  /// value110136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110136 = SecurityRoleType(
    fhirCode: '110136',
  );

  /// value110137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110137 = SecurityRoleType(
    fhirCode: '110137',
  );

  /// value110138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110138 = SecurityRoleType(
    fhirCode: '110138',
  );

  /// value110139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110139 = SecurityRoleType(
    fhirCode: '110139',
  );

  /// value110140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110140 = SecurityRoleType(
    fhirCode: '110140',
  );

  /// value110141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110141 = SecurityRoleType(
    fhirCode: '110141',
  );

  /// value110142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110142 = SecurityRoleType(
    fhirCode: '110142',
  );

  /// value110150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110150 = SecurityRoleType(
    fhirCode: '110150',
  );

  /// value110151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110151 = SecurityRoleType(
    fhirCode: '110151',
  );

  /// value110152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110152 = SecurityRoleType(
    fhirCode: '110152',
  );

  /// value110153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110153 = SecurityRoleType(
    fhirCode: '110153',
  );

  /// value110154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110154 = SecurityRoleType(
    fhirCode: '110154',
  );

  /// value110155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110155 = SecurityRoleType(
    fhirCode: '110155',
  );

  /// value110180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110180 = SecurityRoleType(
    fhirCode: '110180',
  );

  /// value110181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110181 = SecurityRoleType(
    fhirCode: '110181',
  );

  /// value110182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110182 = SecurityRoleType(
    fhirCode: '110182',
  );

  /// value110190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110190 = SecurityRoleType(
    fhirCode: '110190',
  );

  /// value110500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110500 = SecurityRoleType(
    fhirCode: '110500',
  );

  /// value110501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110501 = SecurityRoleType(
    fhirCode: '110501',
  );

  /// value110502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110502 = SecurityRoleType(
    fhirCode: '110502',
  );

  /// value110503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110503 = SecurityRoleType(
    fhirCode: '110503',
  );

  /// value110504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110504 = SecurityRoleType(
    fhirCode: '110504',
  );

  /// value110505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110505 = SecurityRoleType(
    fhirCode: '110505',
  );

  /// value110506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110506 = SecurityRoleType(
    fhirCode: '110506',
  );

  /// value110507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110507 = SecurityRoleType(
    fhirCode: '110507',
  );

  /// value110508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110508 = SecurityRoleType(
    fhirCode: '110508',
  );

  /// value110509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110509 = SecurityRoleType(
    fhirCode: '110509',
  );

  /// value110510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110510 = SecurityRoleType(
    fhirCode: '110510',
  );

  /// value110511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110511 = SecurityRoleType(
    fhirCode: '110511',
  );

  /// value110512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110512 = SecurityRoleType(
    fhirCode: '110512',
  );

  /// value110513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110513 = SecurityRoleType(
    fhirCode: '110513',
  );

  /// value110514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110514 = SecurityRoleType(
    fhirCode: '110514',
  );

  /// value110515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110515 = SecurityRoleType(
    fhirCode: '110515',
  );

  /// value110516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110516 = SecurityRoleType(
    fhirCode: '110516',
  );

  /// value110518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110518 = SecurityRoleType(
    fhirCode: '110518',
  );

  /// value110519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110519 = SecurityRoleType(
    fhirCode: '110519',
  );

  /// value110521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110521 = SecurityRoleType(
    fhirCode: '110521',
  );

  /// value110522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110522 = SecurityRoleType(
    fhirCode: '110522',
  );

  /// value110523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110523 = SecurityRoleType(
    fhirCode: '110523',
  );

  /// value110524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110524 = SecurityRoleType(
    fhirCode: '110524',
  );

  /// value110526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110526 = SecurityRoleType(
    fhirCode: '110526',
  );

  /// value110527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110527 = SecurityRoleType(
    fhirCode: '110527',
  );

  /// value110528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110528 = SecurityRoleType(
    fhirCode: '110528',
  );

  /// value110529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110529 = SecurityRoleType(
    fhirCode: '110529',
  );

  /// value110700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110700 = SecurityRoleType(
    fhirCode: '110700',
  );

  /// value110701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110701 = SecurityRoleType(
    fhirCode: '110701',
  );

  /// value110702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110702 = SecurityRoleType(
    fhirCode: '110702',
  );

  /// value110703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110703 = SecurityRoleType(
    fhirCode: '110703',
  );

  /// value110704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110704 = SecurityRoleType(
    fhirCode: '110704',
  );

  /// value110705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110705 = SecurityRoleType(
    fhirCode: '110705',
  );

  /// value110706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110706 = SecurityRoleType(
    fhirCode: '110706',
  );

  /// value110800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110800 = SecurityRoleType(
    fhirCode: '110800',
  );

  /// value110801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110801 = SecurityRoleType(
    fhirCode: '110801',
  );

  /// value110802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110802 = SecurityRoleType(
    fhirCode: '110802',
  );

  /// value110803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110803 = SecurityRoleType(
    fhirCode: '110803',
  );

  /// value110804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110804 = SecurityRoleType(
    fhirCode: '110804',
  );

  /// value110805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110805 = SecurityRoleType(
    fhirCode: '110805',
  );

  /// value110806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110806 = SecurityRoleType(
    fhirCode: '110806',
  );

  /// value110807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110807 = SecurityRoleType(
    fhirCode: '110807',
  );

  /// value110808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110808 = SecurityRoleType(
    fhirCode: '110808',
  );

  /// value110809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110809 = SecurityRoleType(
    fhirCode: '110809',
  );

  /// value110810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110810 = SecurityRoleType(
    fhirCode: '110810',
  );

  /// value110811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110811 = SecurityRoleType(
    fhirCode: '110811',
  );

  /// value110812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110812 = SecurityRoleType(
    fhirCode: '110812',
  );

  /// value110813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110813 = SecurityRoleType(
    fhirCode: '110813',
  );

  /// value110814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110814 = SecurityRoleType(
    fhirCode: '110814',
  );

  /// value110815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110815 = SecurityRoleType(
    fhirCode: '110815',
  );

  /// value110816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110816 = SecurityRoleType(
    fhirCode: '110816',
  );

  /// value110817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110817 = SecurityRoleType(
    fhirCode: '110817',
  );

  /// value110818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110818 = SecurityRoleType(
    fhirCode: '110818',
  );

  /// value110819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110819 = SecurityRoleType(
    fhirCode: '110819',
  );

  /// value110820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110820 = SecurityRoleType(
    fhirCode: '110820',
  );

  /// value110821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110821 = SecurityRoleType(
    fhirCode: '110821',
  );

  /// value110822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110822 = SecurityRoleType(
    fhirCode: '110822',
  );

  /// value110823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110823 = SecurityRoleType(
    fhirCode: '110823',
  );

  /// value110824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110824 = SecurityRoleType(
    fhirCode: '110824',
  );

  /// value110825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110825 = SecurityRoleType(
    fhirCode: '110825',
  );

  /// value110826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110826 = SecurityRoleType(
    fhirCode: '110826',
  );

  /// value110827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110827 = SecurityRoleType(
    fhirCode: '110827',
  );

  /// value110828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110828 = SecurityRoleType(
    fhirCode: '110828',
  );

  /// value110829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110829 = SecurityRoleType(
    fhirCode: '110829',
  );

  /// value110830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110830 = SecurityRoleType(
    fhirCode: '110830',
  );

  /// value110831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110831 = SecurityRoleType(
    fhirCode: '110831',
  );

  /// value110832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110832 = SecurityRoleType(
    fhirCode: '110832',
  );

  /// value110833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110833 = SecurityRoleType(
    fhirCode: '110833',
  );

  /// value110834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110834 = SecurityRoleType(
    fhirCode: '110834',
  );

  /// value110835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110835 = SecurityRoleType(
    fhirCode: '110835',
  );

  /// value110836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110836 = SecurityRoleType(
    fhirCode: '110836',
  );

  /// value110837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110837 = SecurityRoleType(
    fhirCode: '110837',
  );

  /// value110838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110838 = SecurityRoleType(
    fhirCode: '110838',
  );

  /// value110839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110839 = SecurityRoleType(
    fhirCode: '110839',
  );

  /// value110840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110840 = SecurityRoleType(
    fhirCode: '110840',
  );

  /// value110841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110841 = SecurityRoleType(
    fhirCode: '110841',
  );

  /// value110842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110842 = SecurityRoleType(
    fhirCode: '110842',
  );

  /// value110843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110843 = SecurityRoleType(
    fhirCode: '110843',
  );

  /// value110844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110844 = SecurityRoleType(
    fhirCode: '110844',
  );

  /// value110845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110845 = SecurityRoleType(
    fhirCode: '110845',
  );

  /// value110846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110846 = SecurityRoleType(
    fhirCode: '110846',
  );

  /// value110847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110847 = SecurityRoleType(
    fhirCode: '110847',
  );

  /// value110848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110848 = SecurityRoleType(
    fhirCode: '110848',
  );

  /// value110849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110849 = SecurityRoleType(
    fhirCode: '110849',
  );

  /// value110850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110850 = SecurityRoleType(
    fhirCode: '110850',
  );

  /// value110851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110851 = SecurityRoleType(
    fhirCode: '110851',
  );

  /// value110852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110852 = SecurityRoleType(
    fhirCode: '110852',
  );

  /// value110853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110853 = SecurityRoleType(
    fhirCode: '110853',
  );

  /// value110854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110854 = SecurityRoleType(
    fhirCode: '110854',
  );

  /// value110855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110855 = SecurityRoleType(
    fhirCode: '110855',
  );

  /// value110856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110856 = SecurityRoleType(
    fhirCode: '110856',
  );

  /// value110857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110857 = SecurityRoleType(
    fhirCode: '110857',
  );

  /// value110858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110858 = SecurityRoleType(
    fhirCode: '110858',
  );

  /// value110859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110859 = SecurityRoleType(
    fhirCode: '110859',
  );

  /// value110860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110860 = SecurityRoleType(
    fhirCode: '110860',
  );

  /// value110861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110861 = SecurityRoleType(
    fhirCode: '110861',
  );

  /// value110862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110862 = SecurityRoleType(
    fhirCode: '110862',
  );

  /// value110863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110863 = SecurityRoleType(
    fhirCode: '110863',
  );

  /// value110864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110864 = SecurityRoleType(
    fhirCode: '110864',
  );

  /// value110865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110865 = SecurityRoleType(
    fhirCode: '110865',
  );

  /// value110866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110866 = SecurityRoleType(
    fhirCode: '110866',
  );

  /// value110867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110867 = SecurityRoleType(
    fhirCode: '110867',
  );

  /// value110868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110868 = SecurityRoleType(
    fhirCode: '110868',
  );

  /// value110869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110869 = SecurityRoleType(
    fhirCode: '110869',
  );

  /// value110870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110870 = SecurityRoleType(
    fhirCode: '110870',
  );

  /// value110871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110871 = SecurityRoleType(
    fhirCode: '110871',
  );

  /// value110872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110872 = SecurityRoleType(
    fhirCode: '110872',
  );

  /// value110873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110873 = SecurityRoleType(
    fhirCode: '110873',
  );

  /// value110874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110874 = SecurityRoleType(
    fhirCode: '110874',
  );

  /// value110875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110875 = SecurityRoleType(
    fhirCode: '110875',
  );

  /// value110876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110876 = SecurityRoleType(
    fhirCode: '110876',
  );

  /// value110877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110877 = SecurityRoleType(
    fhirCode: '110877',
  );

  /// value110901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110901 = SecurityRoleType(
    fhirCode: '110901',
  );

  /// value110902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110902 = SecurityRoleType(
    fhirCode: '110902',
  );

  /// value110903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110903 = SecurityRoleType(
    fhirCode: '110903',
  );

  /// value110904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110904 = SecurityRoleType(
    fhirCode: '110904',
  );

  /// value110905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110905 = SecurityRoleType(
    fhirCode: '110905',
  );

  /// value110906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110906 = SecurityRoleType(
    fhirCode: '110906',
  );

  /// value110907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110907 = SecurityRoleType(
    fhirCode: '110907',
  );

  /// value110908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110908 = SecurityRoleType(
    fhirCode: '110908',
  );

  /// value110909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110909 = SecurityRoleType(
    fhirCode: '110909',
  );

  /// value110910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110910 = SecurityRoleType(
    fhirCode: '110910',
  );

  /// value110911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value110911 = SecurityRoleType(
    fhirCode: '110911',
  );

  /// value111001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111001 = SecurityRoleType(
    fhirCode: '111001',
  );

  /// value111002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111002 = SecurityRoleType(
    fhirCode: '111002',
  );

  /// value111003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111003 = SecurityRoleType(
    fhirCode: '111003',
  );

  /// value111004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111004 = SecurityRoleType(
    fhirCode: '111004',
  );

  /// value111005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111005 = SecurityRoleType(
    fhirCode: '111005',
  );

  /// value111006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111006 = SecurityRoleType(
    fhirCode: '111006',
  );

  /// value111007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111007 = SecurityRoleType(
    fhirCode: '111007',
  );

  /// value111008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111008 = SecurityRoleType(
    fhirCode: '111008',
  );

  /// value111009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111009 = SecurityRoleType(
    fhirCode: '111009',
  );

  /// value111010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111010 = SecurityRoleType(
    fhirCode: '111010',
  );

  /// value111011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111011 = SecurityRoleType(
    fhirCode: '111011',
  );

  /// value111012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111012 = SecurityRoleType(
    fhirCode: '111012',
  );

  /// value111013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111013 = SecurityRoleType(
    fhirCode: '111013',
  );

  /// value111014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111014 = SecurityRoleType(
    fhirCode: '111014',
  );

  /// value111015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111015 = SecurityRoleType(
    fhirCode: '111015',
  );

  /// value111016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111016 = SecurityRoleType(
    fhirCode: '111016',
  );

  /// value111017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111017 = SecurityRoleType(
    fhirCode: '111017',
  );

  /// value111018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111018 = SecurityRoleType(
    fhirCode: '111018',
  );

  /// value111019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111019 = SecurityRoleType(
    fhirCode: '111019',
  );

  /// value111020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111020 = SecurityRoleType(
    fhirCode: '111020',
  );

  /// value111021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111021 = SecurityRoleType(
    fhirCode: '111021',
  );

  /// value111022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111022 = SecurityRoleType(
    fhirCode: '111022',
  );

  /// value111023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111023 = SecurityRoleType(
    fhirCode: '111023',
  );

  /// value111024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111024 = SecurityRoleType(
    fhirCode: '111024',
  );

  /// value111025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111025 = SecurityRoleType(
    fhirCode: '111025',
  );

  /// value111026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111026 = SecurityRoleType(
    fhirCode: '111026',
  );

  /// value111027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111027 = SecurityRoleType(
    fhirCode: '111027',
  );

  /// value111028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111028 = SecurityRoleType(
    fhirCode: '111028',
  );

  /// value111029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111029 = SecurityRoleType(
    fhirCode: '111029',
  );

  /// value111030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111030 = SecurityRoleType(
    fhirCode: '111030',
  );

  /// value111031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111031 = SecurityRoleType(
    fhirCode: '111031',
  );

  /// value111032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111032 = SecurityRoleType(
    fhirCode: '111032',
  );

  /// value111033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111033 = SecurityRoleType(
    fhirCode: '111033',
  );

  /// value111034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111034 = SecurityRoleType(
    fhirCode: '111034',
  );

  /// value111035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111035 = SecurityRoleType(
    fhirCode: '111035',
  );

  /// value111036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111036 = SecurityRoleType(
    fhirCode: '111036',
  );

  /// value111037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111037 = SecurityRoleType(
    fhirCode: '111037',
  );

  /// value111038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111038 = SecurityRoleType(
    fhirCode: '111038',
  );

  /// value111039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111039 = SecurityRoleType(
    fhirCode: '111039',
  );

  /// value111040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111040 = SecurityRoleType(
    fhirCode: '111040',
  );

  /// value111041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111041 = SecurityRoleType(
    fhirCode: '111041',
  );

  /// value111042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111042 = SecurityRoleType(
    fhirCode: '111042',
  );

  /// value111043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111043 = SecurityRoleType(
    fhirCode: '111043',
  );

  /// value111044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111044 = SecurityRoleType(
    fhirCode: '111044',
  );

  /// value111045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111045 = SecurityRoleType(
    fhirCode: '111045',
  );

  /// value111046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111046 = SecurityRoleType(
    fhirCode: '111046',
  );

  /// value111047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111047 = SecurityRoleType(
    fhirCode: '111047',
  );

  /// value111048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111048 = SecurityRoleType(
    fhirCode: '111048',
  );

  /// value111049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111049 = SecurityRoleType(
    fhirCode: '111049',
  );

  /// value111050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111050 = SecurityRoleType(
    fhirCode: '111050',
  );

  /// value111051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111051 = SecurityRoleType(
    fhirCode: '111051',
  );

  /// value111052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111052 = SecurityRoleType(
    fhirCode: '111052',
  );

  /// value111053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111053 = SecurityRoleType(
    fhirCode: '111053',
  );

  /// value111054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111054 = SecurityRoleType(
    fhirCode: '111054',
  );

  /// value111055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111055 = SecurityRoleType(
    fhirCode: '111055',
  );

  /// value111056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111056 = SecurityRoleType(
    fhirCode: '111056',
  );

  /// value111057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111057 = SecurityRoleType(
    fhirCode: '111057',
  );

  /// value111058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111058 = SecurityRoleType(
    fhirCode: '111058',
  );

  /// value111059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111059 = SecurityRoleType(
    fhirCode: '111059',
  );

  /// value111060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111060 = SecurityRoleType(
    fhirCode: '111060',
  );

  /// value111061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111061 = SecurityRoleType(
    fhirCode: '111061',
  );

  /// value111062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111062 = SecurityRoleType(
    fhirCode: '111062',
  );

  /// value111063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111063 = SecurityRoleType(
    fhirCode: '111063',
  );

  /// value111064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111064 = SecurityRoleType(
    fhirCode: '111064',
  );

  /// value111065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111065 = SecurityRoleType(
    fhirCode: '111065',
  );

  /// value111066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111066 = SecurityRoleType(
    fhirCode: '111066',
  );

  /// value111069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111069 = SecurityRoleType(
    fhirCode: '111069',
  );

  /// value111071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111071 = SecurityRoleType(
    fhirCode: '111071',
  );

  /// value111072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111072 = SecurityRoleType(
    fhirCode: '111072',
  );

  /// value111081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111081 = SecurityRoleType(
    fhirCode: '111081',
  );

  /// value111086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111086 = SecurityRoleType(
    fhirCode: '111086',
  );

  /// value111087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111087 = SecurityRoleType(
    fhirCode: '111087',
  );

  /// value111088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111088 = SecurityRoleType(
    fhirCode: '111088',
  );

  /// value111089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111089 = SecurityRoleType(
    fhirCode: '111089',
  );

  /// value111090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111090 = SecurityRoleType(
    fhirCode: '111090',
  );

  /// value111091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111091 = SecurityRoleType(
    fhirCode: '111091',
  );

  /// value111092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111092 = SecurityRoleType(
    fhirCode: '111092',
  );

  /// value111093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111093 = SecurityRoleType(
    fhirCode: '111093',
  );

  /// value111099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111099 = SecurityRoleType(
    fhirCode: '111099',
  );

  /// value111100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111100 = SecurityRoleType(
    fhirCode: '111100',
  );

  /// value111101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111101 = SecurityRoleType(
    fhirCode: '111101',
  );

  /// value111102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111102 = SecurityRoleType(
    fhirCode: '111102',
  );

  /// value111103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111103 = SecurityRoleType(
    fhirCode: '111103',
  );

  /// value111104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111104 = SecurityRoleType(
    fhirCode: '111104',
  );

  /// value111105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111105 = SecurityRoleType(
    fhirCode: '111105',
  );

  /// value111111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111111 = SecurityRoleType(
    fhirCode: '111111',
  );

  /// value111112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111112 = SecurityRoleType(
    fhirCode: '111112',
  );

  /// value111113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111113 = SecurityRoleType(
    fhirCode: '111113',
  );

  /// value111120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111120 = SecurityRoleType(
    fhirCode: '111120',
  );

  /// value111121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111121 = SecurityRoleType(
    fhirCode: '111121',
  );

  /// value111122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111122 = SecurityRoleType(
    fhirCode: '111122',
  );

  /// value111123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111123 = SecurityRoleType(
    fhirCode: '111123',
  );

  /// value111124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111124 = SecurityRoleType(
    fhirCode: '111124',
  );

  /// value111125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111125 = SecurityRoleType(
    fhirCode: '111125',
  );

  /// value111126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111126 = SecurityRoleType(
    fhirCode: '111126',
  );

  /// value111127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111127 = SecurityRoleType(
    fhirCode: '111127',
  );

  /// value111128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111128 = SecurityRoleType(
    fhirCode: '111128',
  );

  /// value111129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111129 = SecurityRoleType(
    fhirCode: '111129',
  );

  /// value111130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111130 = SecurityRoleType(
    fhirCode: '111130',
  );

  /// value111135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111135 = SecurityRoleType(
    fhirCode: '111135',
  );

  /// value111136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111136 = SecurityRoleType(
    fhirCode: '111136',
  );

  /// value111137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111137 = SecurityRoleType(
    fhirCode: '111137',
  );

  /// value111138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111138 = SecurityRoleType(
    fhirCode: '111138',
  );

  /// value111139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111139 = SecurityRoleType(
    fhirCode: '111139',
  );

  /// value111140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111140 = SecurityRoleType(
    fhirCode: '111140',
  );

  /// value111141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111141 = SecurityRoleType(
    fhirCode: '111141',
  );

  /// value111142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111142 = SecurityRoleType(
    fhirCode: '111142',
  );

  /// value111143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111143 = SecurityRoleType(
    fhirCode: '111143',
  );

  /// value111144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111144 = SecurityRoleType(
    fhirCode: '111144',
  );

  /// value111145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111145 = SecurityRoleType(
    fhirCode: '111145',
  );

  /// value111146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111146 = SecurityRoleType(
    fhirCode: '111146',
  );

  /// value111147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111147 = SecurityRoleType(
    fhirCode: '111147',
  );

  /// value111148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111148 = SecurityRoleType(
    fhirCode: '111148',
  );

  /// value111149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111149 = SecurityRoleType(
    fhirCode: '111149',
  );

  /// value111150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111150 = SecurityRoleType(
    fhirCode: '111150',
  );

  /// value111151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111151 = SecurityRoleType(
    fhirCode: '111151',
  );

  /// value111152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111152 = SecurityRoleType(
    fhirCode: '111152',
  );

  /// value111153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111153 = SecurityRoleType(
    fhirCode: '111153',
  );

  /// value111154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111154 = SecurityRoleType(
    fhirCode: '111154',
  );

  /// value111155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111155 = SecurityRoleType(
    fhirCode: '111155',
  );

  /// value111156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111156 = SecurityRoleType(
    fhirCode: '111156',
  );

  /// value111157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111157 = SecurityRoleType(
    fhirCode: '111157',
  );

  /// value111158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111158 = SecurityRoleType(
    fhirCode: '111158',
  );

  /// value111159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111159 = SecurityRoleType(
    fhirCode: '111159',
  );

  /// value111168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111168 = SecurityRoleType(
    fhirCode: '111168',
  );

  /// value111170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111170 = SecurityRoleType(
    fhirCode: '111170',
  );

  /// value111171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111171 = SecurityRoleType(
    fhirCode: '111171',
  );

  /// value111172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111172 = SecurityRoleType(
    fhirCode: '111172',
  );

  /// value111173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111173 = SecurityRoleType(
    fhirCode: '111173',
  );

  /// value111174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111174 = SecurityRoleType(
    fhirCode: '111174',
  );

  /// value111175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111175 = SecurityRoleType(
    fhirCode: '111175',
  );

  /// value111176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111176 = SecurityRoleType(
    fhirCode: '111176',
  );

  /// value111177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111177 = SecurityRoleType(
    fhirCode: '111177',
  );

  /// value111178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111178 = SecurityRoleType(
    fhirCode: '111178',
  );

  /// value111179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111179 = SecurityRoleType(
    fhirCode: '111179',
  );

  /// value111180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111180 = SecurityRoleType(
    fhirCode: '111180',
  );

  /// value111181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111181 = SecurityRoleType(
    fhirCode: '111181',
  );

  /// value111182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111182 = SecurityRoleType(
    fhirCode: '111182',
  );

  /// value111183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111183 = SecurityRoleType(
    fhirCode: '111183',
  );

  /// value111184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111184 = SecurityRoleType(
    fhirCode: '111184',
  );

  /// value111185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111185 = SecurityRoleType(
    fhirCode: '111185',
  );

  /// value111186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111186 = SecurityRoleType(
    fhirCode: '111186',
  );

  /// value111187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111187 = SecurityRoleType(
    fhirCode: '111187',
  );

  /// value111188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111188 = SecurityRoleType(
    fhirCode: '111188',
  );

  /// value111189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111189 = SecurityRoleType(
    fhirCode: '111189',
  );

  /// value111190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111190 = SecurityRoleType(
    fhirCode: '111190',
  );

  /// value111191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111191 = SecurityRoleType(
    fhirCode: '111191',
  );

  /// value111192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111192 = SecurityRoleType(
    fhirCode: '111192',
  );

  /// value111193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111193 = SecurityRoleType(
    fhirCode: '111193',
  );

  /// value111194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111194 = SecurityRoleType(
    fhirCode: '111194',
  );

  /// value111195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111195 = SecurityRoleType(
    fhirCode: '111195',
  );

  /// value111196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111196 = SecurityRoleType(
    fhirCode: '111196',
  );

  /// value111197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111197 = SecurityRoleType(
    fhirCode: '111197',
  );

  /// value111198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111198 = SecurityRoleType(
    fhirCode: '111198',
  );

  /// value111199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111199 = SecurityRoleType(
    fhirCode: '111199',
  );

  /// value111200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111200 = SecurityRoleType(
    fhirCode: '111200',
  );

  /// value111201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111201 = SecurityRoleType(
    fhirCode: '111201',
  );

  /// value111202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111202 = SecurityRoleType(
    fhirCode: '111202',
  );

  /// value111203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111203 = SecurityRoleType(
    fhirCode: '111203',
  );

  /// value111204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111204 = SecurityRoleType(
    fhirCode: '111204',
  );

  /// value111205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111205 = SecurityRoleType(
    fhirCode: '111205',
  );

  /// value111206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111206 = SecurityRoleType(
    fhirCode: '111206',
  );

  /// value111207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111207 = SecurityRoleType(
    fhirCode: '111207',
  );

  /// value111208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111208 = SecurityRoleType(
    fhirCode: '111208',
  );

  /// value111209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111209 = SecurityRoleType(
    fhirCode: '111209',
  );

  /// value111210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111210 = SecurityRoleType(
    fhirCode: '111210',
  );

  /// value111211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111211 = SecurityRoleType(
    fhirCode: '111211',
  );

  /// value111212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111212 = SecurityRoleType(
    fhirCode: '111212',
  );

  /// value111213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111213 = SecurityRoleType(
    fhirCode: '111213',
  );

  /// value111214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111214 = SecurityRoleType(
    fhirCode: '111214',
  );

  /// value111215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111215 = SecurityRoleType(
    fhirCode: '111215',
  );

  /// value111216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111216 = SecurityRoleType(
    fhirCode: '111216',
  );

  /// value111217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111217 = SecurityRoleType(
    fhirCode: '111217',
  );

  /// value111218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111218 = SecurityRoleType(
    fhirCode: '111218',
  );

  /// value111219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111219 = SecurityRoleType(
    fhirCode: '111219',
  );

  /// value111220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111220 = SecurityRoleType(
    fhirCode: '111220',
  );

  /// value111221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111221 = SecurityRoleType(
    fhirCode: '111221',
  );

  /// value111222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111222 = SecurityRoleType(
    fhirCode: '111222',
  );

  /// value111223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111223 = SecurityRoleType(
    fhirCode: '111223',
  );

  /// value111224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111224 = SecurityRoleType(
    fhirCode: '111224',
  );

  /// value111225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111225 = SecurityRoleType(
    fhirCode: '111225',
  );

  /// value111233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111233 = SecurityRoleType(
    fhirCode: '111233',
  );

  /// value111234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111234 = SecurityRoleType(
    fhirCode: '111234',
  );

  /// value111235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111235 = SecurityRoleType(
    fhirCode: '111235',
  );

  /// value111236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111236 = SecurityRoleType(
    fhirCode: '111236',
  );

  /// value111237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111237 = SecurityRoleType(
    fhirCode: '111237',
  );

  /// value111238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111238 = SecurityRoleType(
    fhirCode: '111238',
  );

  /// value111239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111239 = SecurityRoleType(
    fhirCode: '111239',
  );

  /// value111240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111240 = SecurityRoleType(
    fhirCode: '111240',
  );

  /// value111241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111241 = SecurityRoleType(
    fhirCode: '111241',
  );

  /// value111242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111242 = SecurityRoleType(
    fhirCode: '111242',
  );

  /// value111243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111243 = SecurityRoleType(
    fhirCode: '111243',
  );

  /// value111244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111244 = SecurityRoleType(
    fhirCode: '111244',
  );

  /// value111245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111245 = SecurityRoleType(
    fhirCode: '111245',
  );

  /// value111248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111248 = SecurityRoleType(
    fhirCode: '111248',
  );

  /// value111249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111249 = SecurityRoleType(
    fhirCode: '111249',
  );

  /// value111250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111250 = SecurityRoleType(
    fhirCode: '111250',
  );

  /// value111251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111251 = SecurityRoleType(
    fhirCode: '111251',
  );

  /// value111252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111252 = SecurityRoleType(
    fhirCode: '111252',
  );

  /// value111253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111253 = SecurityRoleType(
    fhirCode: '111253',
  );

  /// value111254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111254 = SecurityRoleType(
    fhirCode: '111254',
  );

  /// value111255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111255 = SecurityRoleType(
    fhirCode: '111255',
  );

  /// value111256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111256 = SecurityRoleType(
    fhirCode: '111256',
  );

  /// value111257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111257 = SecurityRoleType(
    fhirCode: '111257',
  );

  /// value111258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111258 = SecurityRoleType(
    fhirCode: '111258',
  );

  /// value111259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111259 = SecurityRoleType(
    fhirCode: '111259',
  );

  /// value111260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111260 = SecurityRoleType(
    fhirCode: '111260',
  );

  /// value111262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111262 = SecurityRoleType(
    fhirCode: '111262',
  );

  /// value111263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111263 = SecurityRoleType(
    fhirCode: '111263',
  );

  /// value111264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111264 = SecurityRoleType(
    fhirCode: '111264',
  );

  /// value111265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111265 = SecurityRoleType(
    fhirCode: '111265',
  );

  /// value111269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111269 = SecurityRoleType(
    fhirCode: '111269',
  );

  /// value111271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111271 = SecurityRoleType(
    fhirCode: '111271',
  );

  /// value111273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111273 = SecurityRoleType(
    fhirCode: '111273',
  );

  /// value111277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111277 = SecurityRoleType(
    fhirCode: '111277',
  );

  /// value111278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111278 = SecurityRoleType(
    fhirCode: '111278',
  );

  /// value111279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111279 = SecurityRoleType(
    fhirCode: '111279',
  );

  /// value111281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111281 = SecurityRoleType(
    fhirCode: '111281',
  );

  /// value111283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111283 = SecurityRoleType(
    fhirCode: '111283',
  );

  /// value111284
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111284 = SecurityRoleType(
    fhirCode: '111284',
  );

  /// value111285
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111285 = SecurityRoleType(
    fhirCode: '111285',
  );

  /// value111286
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111286 = SecurityRoleType(
    fhirCode: '111286',
  );

  /// value111287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111287 = SecurityRoleType(
    fhirCode: '111287',
  );

  /// value111288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111288 = SecurityRoleType(
    fhirCode: '111288',
  );

  /// value111290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111290 = SecurityRoleType(
    fhirCode: '111290',
  );

  /// value111291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111291 = SecurityRoleType(
    fhirCode: '111291',
  );

  /// value111292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111292 = SecurityRoleType(
    fhirCode: '111292',
  );

  /// value111293
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111293 = SecurityRoleType(
    fhirCode: '111293',
  );

  /// value111294
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111294 = SecurityRoleType(
    fhirCode: '111294',
  );

  /// value111296
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111296 = SecurityRoleType(
    fhirCode: '111296',
  );

  /// value111297
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111297 = SecurityRoleType(
    fhirCode: '111297',
  );

  /// value111298
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111298 = SecurityRoleType(
    fhirCode: '111298',
  );

  /// value111299
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111299 = SecurityRoleType(
    fhirCode: '111299',
  );

  /// value111300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111300 = SecurityRoleType(
    fhirCode: '111300',
  );

  /// value111301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111301 = SecurityRoleType(
    fhirCode: '111301',
  );

  /// value111302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111302 = SecurityRoleType(
    fhirCode: '111302',
  );

  /// value111303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111303 = SecurityRoleType(
    fhirCode: '111303',
  );

  /// value111304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111304 = SecurityRoleType(
    fhirCode: '111304',
  );

  /// value111305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111305 = SecurityRoleType(
    fhirCode: '111305',
  );

  /// value111306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111306 = SecurityRoleType(
    fhirCode: '111306',
  );

  /// value111307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111307 = SecurityRoleType(
    fhirCode: '111307',
  );

  /// value111308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111308 = SecurityRoleType(
    fhirCode: '111308',
  );

  /// value111309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111309 = SecurityRoleType(
    fhirCode: '111309',
  );

  /// value111310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111310 = SecurityRoleType(
    fhirCode: '111310',
  );

  /// value111311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111311 = SecurityRoleType(
    fhirCode: '111311',
  );

  /// value111312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111312 = SecurityRoleType(
    fhirCode: '111312',
  );

  /// value111313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111313 = SecurityRoleType(
    fhirCode: '111313',
  );

  /// value111314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111314 = SecurityRoleType(
    fhirCode: '111314',
  );

  /// value111315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111315 = SecurityRoleType(
    fhirCode: '111315',
  );

  /// value111316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111316 = SecurityRoleType(
    fhirCode: '111316',
  );

  /// value111317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111317 = SecurityRoleType(
    fhirCode: '111317',
  );

  /// value111318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111318 = SecurityRoleType(
    fhirCode: '111318',
  );

  /// value111320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111320 = SecurityRoleType(
    fhirCode: '111320',
  );

  /// value111321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111321 = SecurityRoleType(
    fhirCode: '111321',
  );

  /// value111322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111322 = SecurityRoleType(
    fhirCode: '111322',
  );

  /// value111323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111323 = SecurityRoleType(
    fhirCode: '111323',
  );

  /// value111324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111324 = SecurityRoleType(
    fhirCode: '111324',
  );

  /// value111325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111325 = SecurityRoleType(
    fhirCode: '111325',
  );

  /// value111326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111326 = SecurityRoleType(
    fhirCode: '111326',
  );

  /// value111327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111327 = SecurityRoleType(
    fhirCode: '111327',
  );

  /// value111328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111328 = SecurityRoleType(
    fhirCode: '111328',
  );

  /// value111329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111329 = SecurityRoleType(
    fhirCode: '111329',
  );

  /// value111330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111330 = SecurityRoleType(
    fhirCode: '111330',
  );

  /// value111331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111331 = SecurityRoleType(
    fhirCode: '111331',
  );

  /// value111332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111332 = SecurityRoleType(
    fhirCode: '111332',
  );

  /// value111333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111333 = SecurityRoleType(
    fhirCode: '111333',
  );

  /// value111334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111334 = SecurityRoleType(
    fhirCode: '111334',
  );

  /// value111335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111335 = SecurityRoleType(
    fhirCode: '111335',
  );

  /// value111336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111336 = SecurityRoleType(
    fhirCode: '111336',
  );

  /// value111338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111338 = SecurityRoleType(
    fhirCode: '111338',
  );

  /// value111340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111340 = SecurityRoleType(
    fhirCode: '111340',
  );

  /// value111341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111341 = SecurityRoleType(
    fhirCode: '111341',
  );

  /// value111342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111342 = SecurityRoleType(
    fhirCode: '111342',
  );

  /// value111343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111343 = SecurityRoleType(
    fhirCode: '111343',
  );

  /// value111344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111344 = SecurityRoleType(
    fhirCode: '111344',
  );

  /// value111345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111345 = SecurityRoleType(
    fhirCode: '111345',
  );

  /// value111346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111346 = SecurityRoleType(
    fhirCode: '111346',
  );

  /// value111347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111347 = SecurityRoleType(
    fhirCode: '111347',
  );

  /// value111350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111350 = SecurityRoleType(
    fhirCode: '111350',
  );

  /// value111351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111351 = SecurityRoleType(
    fhirCode: '111351',
  );

  /// value111352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111352 = SecurityRoleType(
    fhirCode: '111352',
  );

  /// value111353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111353 = SecurityRoleType(
    fhirCode: '111353',
  );

  /// value111354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111354 = SecurityRoleType(
    fhirCode: '111354',
  );

  /// value111355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111355 = SecurityRoleType(
    fhirCode: '111355',
  );

  /// value111356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111356 = SecurityRoleType(
    fhirCode: '111356',
  );

  /// value111357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111357 = SecurityRoleType(
    fhirCode: '111357',
  );

  /// value111358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111358 = SecurityRoleType(
    fhirCode: '111358',
  );

  /// value111359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111359 = SecurityRoleType(
    fhirCode: '111359',
  );

  /// value111360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111360 = SecurityRoleType(
    fhirCode: '111360',
  );

  /// value111361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111361 = SecurityRoleType(
    fhirCode: '111361',
  );

  /// value111362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111362 = SecurityRoleType(
    fhirCode: '111362',
  );

  /// value111363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111363 = SecurityRoleType(
    fhirCode: '111363',
  );

  /// value111364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111364 = SecurityRoleType(
    fhirCode: '111364',
  );

  /// value111365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111365 = SecurityRoleType(
    fhirCode: '111365',
  );

  /// value111366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111366 = SecurityRoleType(
    fhirCode: '111366',
  );

  /// value111367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111367 = SecurityRoleType(
    fhirCode: '111367',
  );

  /// value111368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111368 = SecurityRoleType(
    fhirCode: '111368',
  );

  /// value111369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111369 = SecurityRoleType(
    fhirCode: '111369',
  );

  /// value111370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111370 = SecurityRoleType(
    fhirCode: '111370',
  );

  /// value111371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111371 = SecurityRoleType(
    fhirCode: '111371',
  );

  /// value111372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111372 = SecurityRoleType(
    fhirCode: '111372',
  );

  /// value111373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111373 = SecurityRoleType(
    fhirCode: '111373',
  );

  /// value111374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111374 = SecurityRoleType(
    fhirCode: '111374',
  );

  /// value111375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111375 = SecurityRoleType(
    fhirCode: '111375',
  );

  /// value111376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111376 = SecurityRoleType(
    fhirCode: '111376',
  );

  /// value111377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111377 = SecurityRoleType(
    fhirCode: '111377',
  );

  /// value111380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111380 = SecurityRoleType(
    fhirCode: '111380',
  );

  /// value111381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111381 = SecurityRoleType(
    fhirCode: '111381',
  );

  /// value111382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111382 = SecurityRoleType(
    fhirCode: '111382',
  );

  /// value111383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111383 = SecurityRoleType(
    fhirCode: '111383',
  );

  /// value111384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111384 = SecurityRoleType(
    fhirCode: '111384',
  );

  /// value111385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111385 = SecurityRoleType(
    fhirCode: '111385',
  );

  /// value111386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111386 = SecurityRoleType(
    fhirCode: '111386',
  );

  /// value111387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111387 = SecurityRoleType(
    fhirCode: '111387',
  );

  /// value111388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111388 = SecurityRoleType(
    fhirCode: '111388',
  );

  /// value111389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111389 = SecurityRoleType(
    fhirCode: '111389',
  );

  /// value111390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111390 = SecurityRoleType(
    fhirCode: '111390',
  );

  /// value111391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111391 = SecurityRoleType(
    fhirCode: '111391',
  );

  /// value111392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111392 = SecurityRoleType(
    fhirCode: '111392',
  );

  /// value111393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111393 = SecurityRoleType(
    fhirCode: '111393',
  );

  /// value111394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111394 = SecurityRoleType(
    fhirCode: '111394',
  );

  /// value111395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111395 = SecurityRoleType(
    fhirCode: '111395',
  );

  /// value111396
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111396 = SecurityRoleType(
    fhirCode: '111396',
  );

  /// value111397
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111397 = SecurityRoleType(
    fhirCode: '111397',
  );

  /// value111398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111398 = SecurityRoleType(
    fhirCode: '111398',
  );

  /// value111399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111399 = SecurityRoleType(
    fhirCode: '111399',
  );

  /// value111400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111400 = SecurityRoleType(
    fhirCode: '111400',
  );

  /// value111401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111401 = SecurityRoleType(
    fhirCode: '111401',
  );

  /// value111402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111402 = SecurityRoleType(
    fhirCode: '111402',
  );

  /// value111403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111403 = SecurityRoleType(
    fhirCode: '111403',
  );

  /// value111404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111404 = SecurityRoleType(
    fhirCode: '111404',
  );

  /// value111405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111405 = SecurityRoleType(
    fhirCode: '111405',
  );

  /// value111406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111406 = SecurityRoleType(
    fhirCode: '111406',
  );

  /// value111407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111407 = SecurityRoleType(
    fhirCode: '111407',
  );

  /// value111408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111408 = SecurityRoleType(
    fhirCode: '111408',
  );

  /// value111409
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111409 = SecurityRoleType(
    fhirCode: '111409',
  );

  /// value111410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111410 = SecurityRoleType(
    fhirCode: '111410',
  );

  /// value111411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111411 = SecurityRoleType(
    fhirCode: '111411',
  );

  /// value111412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111412 = SecurityRoleType(
    fhirCode: '111412',
  );

  /// value111413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111413 = SecurityRoleType(
    fhirCode: '111413',
  );

  /// value111414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111414 = SecurityRoleType(
    fhirCode: '111414',
  );

  /// value111415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111415 = SecurityRoleType(
    fhirCode: '111415',
  );

  /// value111416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111416 = SecurityRoleType(
    fhirCode: '111416',
  );

  /// value111417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111417 = SecurityRoleType(
    fhirCode: '111417',
  );

  /// value111418
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111418 = SecurityRoleType(
    fhirCode: '111418',
  );

  /// value111419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111419 = SecurityRoleType(
    fhirCode: '111419',
  );

  /// value111420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111420 = SecurityRoleType(
    fhirCode: '111420',
  );

  /// value111421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111421 = SecurityRoleType(
    fhirCode: '111421',
  );

  /// value111423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111423 = SecurityRoleType(
    fhirCode: '111423',
  );

  /// value111424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111424 = SecurityRoleType(
    fhirCode: '111424',
  );

  /// value111425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111425 = SecurityRoleType(
    fhirCode: '111425',
  );

  /// value111426
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111426 = SecurityRoleType(
    fhirCode: '111426',
  );

  /// value111427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111427 = SecurityRoleType(
    fhirCode: '111427',
  );

  /// value111428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111428 = SecurityRoleType(
    fhirCode: '111428',
  );

  /// value111429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111429 = SecurityRoleType(
    fhirCode: '111429',
  );

  /// value111430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111430 = SecurityRoleType(
    fhirCode: '111430',
  );

  /// value111431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111431 = SecurityRoleType(
    fhirCode: '111431',
  );

  /// value111432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111432 = SecurityRoleType(
    fhirCode: '111432',
  );

  /// value111433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111433 = SecurityRoleType(
    fhirCode: '111433',
  );

  /// value111434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111434 = SecurityRoleType(
    fhirCode: '111434',
  );

  /// value111435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111435 = SecurityRoleType(
    fhirCode: '111435',
  );

  /// value111436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111436 = SecurityRoleType(
    fhirCode: '111436',
  );

  /// value111437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111437 = SecurityRoleType(
    fhirCode: '111437',
  );

  /// value111438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111438 = SecurityRoleType(
    fhirCode: '111438',
  );

  /// value111439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111439 = SecurityRoleType(
    fhirCode: '111439',
  );

  /// value111440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111440 = SecurityRoleType(
    fhirCode: '111440',
  );

  /// value111441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111441 = SecurityRoleType(
    fhirCode: '111441',
  );

  /// value111442
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111442 = SecurityRoleType(
    fhirCode: '111442',
  );

  /// value111443
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111443 = SecurityRoleType(
    fhirCode: '111443',
  );

  /// value111444
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111444 = SecurityRoleType(
    fhirCode: '111444',
  );

  /// value111445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111445 = SecurityRoleType(
    fhirCode: '111445',
  );

  /// value111446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111446 = SecurityRoleType(
    fhirCode: '111446',
  );

  /// value111447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111447 = SecurityRoleType(
    fhirCode: '111447',
  );

  /// value111448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111448 = SecurityRoleType(
    fhirCode: '111448',
  );

  /// value111449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111449 = SecurityRoleType(
    fhirCode: '111449',
  );

  /// value111450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111450 = SecurityRoleType(
    fhirCode: '111450',
  );

  /// value111451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111451 = SecurityRoleType(
    fhirCode: '111451',
  );

  /// value111452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111452 = SecurityRoleType(
    fhirCode: '111452',
  );

  /// value111453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111453 = SecurityRoleType(
    fhirCode: '111453',
  );

  /// value111454
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111454 = SecurityRoleType(
    fhirCode: '111454',
  );

  /// value111455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111455 = SecurityRoleType(
    fhirCode: '111455',
  );

  /// value111456
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111456 = SecurityRoleType(
    fhirCode: '111456',
  );

  /// value111457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111457 = SecurityRoleType(
    fhirCode: '111457',
  );

  /// value111458
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111458 = SecurityRoleType(
    fhirCode: '111458',
  );

  /// value111459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111459 = SecurityRoleType(
    fhirCode: '111459',
  );

  /// value111460
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111460 = SecurityRoleType(
    fhirCode: '111460',
  );

  /// value111461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111461 = SecurityRoleType(
    fhirCode: '111461',
  );

  /// value111462
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111462 = SecurityRoleType(
    fhirCode: '111462',
  );

  /// value111463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111463 = SecurityRoleType(
    fhirCode: '111463',
  );

  /// value111464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111464 = SecurityRoleType(
    fhirCode: '111464',
  );

  /// value111465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111465 = SecurityRoleType(
    fhirCode: '111465',
  );

  /// value111466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111466 = SecurityRoleType(
    fhirCode: '111466',
  );

  /// value111467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111467 = SecurityRoleType(
    fhirCode: '111467',
  );

  /// value111468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111468 = SecurityRoleType(
    fhirCode: '111468',
  );

  /// value111469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111469 = SecurityRoleType(
    fhirCode: '111469',
  );

  /// value111470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111470 = SecurityRoleType(
    fhirCode: '111470',
  );

  /// value111471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111471 = SecurityRoleType(
    fhirCode: '111471',
  );

  /// value111472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111472 = SecurityRoleType(
    fhirCode: '111472',
  );

  /// value111473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111473 = SecurityRoleType(
    fhirCode: '111473',
  );

  /// value111474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111474 = SecurityRoleType(
    fhirCode: '111474',
  );

  /// value111475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111475 = SecurityRoleType(
    fhirCode: '111475',
  );

  /// value111476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111476 = SecurityRoleType(
    fhirCode: '111476',
  );

  /// value111477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111477 = SecurityRoleType(
    fhirCode: '111477',
  );

  /// value111478
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111478 = SecurityRoleType(
    fhirCode: '111478',
  );

  /// value111479
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111479 = SecurityRoleType(
    fhirCode: '111479',
  );

  /// value111480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111480 = SecurityRoleType(
    fhirCode: '111480',
  );

  /// value111481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111481 = SecurityRoleType(
    fhirCode: '111481',
  );

  /// value111482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111482 = SecurityRoleType(
    fhirCode: '111482',
  );

  /// value111483
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111483 = SecurityRoleType(
    fhirCode: '111483',
  );

  /// value111484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111484 = SecurityRoleType(
    fhirCode: '111484',
  );

  /// value111485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111485 = SecurityRoleType(
    fhirCode: '111485',
  );

  /// value111486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111486 = SecurityRoleType(
    fhirCode: '111486',
  );

  /// value111487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111487 = SecurityRoleType(
    fhirCode: '111487',
  );

  /// value111488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111488 = SecurityRoleType(
    fhirCode: '111488',
  );

  /// value111489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111489 = SecurityRoleType(
    fhirCode: '111489',
  );

  /// value111490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111490 = SecurityRoleType(
    fhirCode: '111490',
  );

  /// value111491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111491 = SecurityRoleType(
    fhirCode: '111491',
  );

  /// value111492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111492 = SecurityRoleType(
    fhirCode: '111492',
  );

  /// value111494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111494 = SecurityRoleType(
    fhirCode: '111494',
  );

  /// value111495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111495 = SecurityRoleType(
    fhirCode: '111495',
  );

  /// value111496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111496 = SecurityRoleType(
    fhirCode: '111496',
  );

  /// value111497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111497 = SecurityRoleType(
    fhirCode: '111497',
  );

  /// value111498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111498 = SecurityRoleType(
    fhirCode: '111498',
  );

  /// value111499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111499 = SecurityRoleType(
    fhirCode: '111499',
  );

  /// value111500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111500 = SecurityRoleType(
    fhirCode: '111500',
  );

  /// value111501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111501 = SecurityRoleType(
    fhirCode: '111501',
  );

  /// value111502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111502 = SecurityRoleType(
    fhirCode: '111502',
  );

  /// value111503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111503 = SecurityRoleType(
    fhirCode: '111503',
  );

  /// value111504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111504 = SecurityRoleType(
    fhirCode: '111504',
  );

  /// value111505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111505 = SecurityRoleType(
    fhirCode: '111505',
  );

  /// value111506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111506 = SecurityRoleType(
    fhirCode: '111506',
  );

  /// value111507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111507 = SecurityRoleType(
    fhirCode: '111507',
  );

  /// value111508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111508 = SecurityRoleType(
    fhirCode: '111508',
  );

  /// value111509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111509 = SecurityRoleType(
    fhirCode: '111509',
  );

  /// value111510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111510 = SecurityRoleType(
    fhirCode: '111510',
  );

  /// value111511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111511 = SecurityRoleType(
    fhirCode: '111511',
  );

  /// value111512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111512 = SecurityRoleType(
    fhirCode: '111512',
  );

  /// value111513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111513 = SecurityRoleType(
    fhirCode: '111513',
  );

  /// value111514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111514 = SecurityRoleType(
    fhirCode: '111514',
  );

  /// value111515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111515 = SecurityRoleType(
    fhirCode: '111515',
  );

  /// value111516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111516 = SecurityRoleType(
    fhirCode: '111516',
  );

  /// value111517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111517 = SecurityRoleType(
    fhirCode: '111517',
  );

  /// value111518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111518 = SecurityRoleType(
    fhirCode: '111518',
  );

  /// value111519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111519 = SecurityRoleType(
    fhirCode: '111519',
  );

  /// value111520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111520 = SecurityRoleType(
    fhirCode: '111520',
  );

  /// value111521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111521 = SecurityRoleType(
    fhirCode: '111521',
  );

  /// value111522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111522 = SecurityRoleType(
    fhirCode: '111522',
  );

  /// value111523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111523 = SecurityRoleType(
    fhirCode: '111523',
  );

  /// value111524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111524 = SecurityRoleType(
    fhirCode: '111524',
  );

  /// value111525
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111525 = SecurityRoleType(
    fhirCode: '111525',
  );

  /// value111526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111526 = SecurityRoleType(
    fhirCode: '111526',
  );

  /// value111527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111527 = SecurityRoleType(
    fhirCode: '111527',
  );

  /// value111528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111528 = SecurityRoleType(
    fhirCode: '111528',
  );

  /// value111529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111529 = SecurityRoleType(
    fhirCode: '111529',
  );

  /// value111530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111530 = SecurityRoleType(
    fhirCode: '111530',
  );

  /// value111531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111531 = SecurityRoleType(
    fhirCode: '111531',
  );

  /// value111532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111532 = SecurityRoleType(
    fhirCode: '111532',
  );

  /// value111533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111533 = SecurityRoleType(
    fhirCode: '111533',
  );

  /// value111534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111534 = SecurityRoleType(
    fhirCode: '111534',
  );

  /// value111535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111535 = SecurityRoleType(
    fhirCode: '111535',
  );

  /// value111536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111536 = SecurityRoleType(
    fhirCode: '111536',
  );

  /// value111537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111537 = SecurityRoleType(
    fhirCode: '111537',
  );

  /// value111538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111538 = SecurityRoleType(
    fhirCode: '111538',
  );

  /// value111539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111539 = SecurityRoleType(
    fhirCode: '111539',
  );

  /// value111540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111540 = SecurityRoleType(
    fhirCode: '111540',
  );

  /// value111541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111541 = SecurityRoleType(
    fhirCode: '111541',
  );

  /// value111542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111542 = SecurityRoleType(
    fhirCode: '111542',
  );

  /// value111543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111543 = SecurityRoleType(
    fhirCode: '111543',
  );

  /// value111544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111544 = SecurityRoleType(
    fhirCode: '111544',
  );

  /// value111545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111545 = SecurityRoleType(
    fhirCode: '111545',
  );

  /// value111546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111546 = SecurityRoleType(
    fhirCode: '111546',
  );

  /// value111547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111547 = SecurityRoleType(
    fhirCode: '111547',
  );

  /// value111548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111548 = SecurityRoleType(
    fhirCode: '111548',
  );

  /// value111549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111549 = SecurityRoleType(
    fhirCode: '111549',
  );

  /// value111550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111550 = SecurityRoleType(
    fhirCode: '111550',
  );

  /// value111551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111551 = SecurityRoleType(
    fhirCode: '111551',
  );

  /// value111552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111552 = SecurityRoleType(
    fhirCode: '111552',
  );

  /// value111553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111553 = SecurityRoleType(
    fhirCode: '111553',
  );

  /// value111554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111554 = SecurityRoleType(
    fhirCode: '111554',
  );

  /// value111555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111555 = SecurityRoleType(
    fhirCode: '111555',
  );

  /// value111556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111556 = SecurityRoleType(
    fhirCode: '111556',
  );

  /// value111557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111557 = SecurityRoleType(
    fhirCode: '111557',
  );

  /// value111558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111558 = SecurityRoleType(
    fhirCode: '111558',
  );

  /// value111559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111559 = SecurityRoleType(
    fhirCode: '111559',
  );

  /// value111560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111560 = SecurityRoleType(
    fhirCode: '111560',
  );

  /// value111561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111561 = SecurityRoleType(
    fhirCode: '111561',
  );

  /// value111562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111562 = SecurityRoleType(
    fhirCode: '111562',
  );

  /// value111563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111563 = SecurityRoleType(
    fhirCode: '111563',
  );

  /// value111564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111564 = SecurityRoleType(
    fhirCode: '111564',
  );

  /// value111565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111565 = SecurityRoleType(
    fhirCode: '111565',
  );

  /// value111566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111566 = SecurityRoleType(
    fhirCode: '111566',
  );

  /// value111567
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111567 = SecurityRoleType(
    fhirCode: '111567',
  );

  /// value111568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111568 = SecurityRoleType(
    fhirCode: '111568',
  );

  /// value111569
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111569 = SecurityRoleType(
    fhirCode: '111569',
  );

  /// value111570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111570 = SecurityRoleType(
    fhirCode: '111570',
  );

  /// value111571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111571 = SecurityRoleType(
    fhirCode: '111571',
  );

  /// value111572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111572 = SecurityRoleType(
    fhirCode: '111572',
  );

  /// value111573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111573 = SecurityRoleType(
    fhirCode: '111573',
  );

  /// value111574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111574 = SecurityRoleType(
    fhirCode: '111574',
  );

  /// value111575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111575 = SecurityRoleType(
    fhirCode: '111575',
  );

  /// value111576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111576 = SecurityRoleType(
    fhirCode: '111576',
  );

  /// value111577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111577 = SecurityRoleType(
    fhirCode: '111577',
  );

  /// value111578
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111578 = SecurityRoleType(
    fhirCode: '111578',
  );

  /// value111579
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111579 = SecurityRoleType(
    fhirCode: '111579',
  );

  /// value111580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111580 = SecurityRoleType(
    fhirCode: '111580',
  );

  /// value111581
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111581 = SecurityRoleType(
    fhirCode: '111581',
  );

  /// value111582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111582 = SecurityRoleType(
    fhirCode: '111582',
  );

  /// value111583
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111583 = SecurityRoleType(
    fhirCode: '111583',
  );

  /// value111584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111584 = SecurityRoleType(
    fhirCode: '111584',
  );

  /// value111585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111585 = SecurityRoleType(
    fhirCode: '111585',
  );

  /// value111586
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111586 = SecurityRoleType(
    fhirCode: '111586',
  );

  /// value111587
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111587 = SecurityRoleType(
    fhirCode: '111587',
  );

  /// value111590
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111590 = SecurityRoleType(
    fhirCode: '111590',
  );

  /// value111591
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111591 = SecurityRoleType(
    fhirCode: '111591',
  );

  /// value111592
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111592 = SecurityRoleType(
    fhirCode: '111592',
  );

  /// value111593
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111593 = SecurityRoleType(
    fhirCode: '111593',
  );

  /// value111601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111601 = SecurityRoleType(
    fhirCode: '111601',
  );

  /// value111602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111602 = SecurityRoleType(
    fhirCode: '111602',
  );

  /// value111603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111603 = SecurityRoleType(
    fhirCode: '111603',
  );

  /// value111604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111604 = SecurityRoleType(
    fhirCode: '111604',
  );

  /// value111605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111605 = SecurityRoleType(
    fhirCode: '111605',
  );

  /// value111606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111606 = SecurityRoleType(
    fhirCode: '111606',
  );

  /// value111607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111607 = SecurityRoleType(
    fhirCode: '111607',
  );

  /// value111609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111609 = SecurityRoleType(
    fhirCode: '111609',
  );

  /// value111621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111621 = SecurityRoleType(
    fhirCode: '111621',
  );

  /// value111622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111622 = SecurityRoleType(
    fhirCode: '111622',
  );

  /// value111623
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111623 = SecurityRoleType(
    fhirCode: '111623',
  );

  /// value111625
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111625 = SecurityRoleType(
    fhirCode: '111625',
  );

  /// value111626
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111626 = SecurityRoleType(
    fhirCode: '111626',
  );

  /// value111627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111627 = SecurityRoleType(
    fhirCode: '111627',
  );

  /// value111628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111628 = SecurityRoleType(
    fhirCode: '111628',
  );

  /// value111629
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111629 = SecurityRoleType(
    fhirCode: '111629',
  );

  /// value111630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111630 = SecurityRoleType(
    fhirCode: '111630',
  );

  /// value111631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111631 = SecurityRoleType(
    fhirCode: '111631',
  );

  /// value111632
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111632 = SecurityRoleType(
    fhirCode: '111632',
  );

  /// value111633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111633 = SecurityRoleType(
    fhirCode: '111633',
  );

  /// value111634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111634 = SecurityRoleType(
    fhirCode: '111634',
  );

  /// value111635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111635 = SecurityRoleType(
    fhirCode: '111635',
  );

  /// value111636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111636 = SecurityRoleType(
    fhirCode: '111636',
  );

  /// value111637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111637 = SecurityRoleType(
    fhirCode: '111637',
  );

  /// value111638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111638 = SecurityRoleType(
    fhirCode: '111638',
  );

  /// value111641
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111641 = SecurityRoleType(
    fhirCode: '111641',
  );

  /// value111642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111642 = SecurityRoleType(
    fhirCode: '111642',
  );

  /// value111643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111643 = SecurityRoleType(
    fhirCode: '111643',
  );

  /// value111644
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111644 = SecurityRoleType(
    fhirCode: '111644',
  );

  /// value111645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111645 = SecurityRoleType(
    fhirCode: '111645',
  );

  /// value111646
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111646 = SecurityRoleType(
    fhirCode: '111646',
  );

  /// value111671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111671 = SecurityRoleType(
    fhirCode: '111671',
  );

  /// value111672
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111672 = SecurityRoleType(
    fhirCode: '111672',
  );

  /// value111673
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111673 = SecurityRoleType(
    fhirCode: '111673',
  );

  /// value111674
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111674 = SecurityRoleType(
    fhirCode: '111674',
  );

  /// value111675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111675 = SecurityRoleType(
    fhirCode: '111675',
  );

  /// value111676
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111676 = SecurityRoleType(
    fhirCode: '111676',
  );

  /// value111677
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111677 = SecurityRoleType(
    fhirCode: '111677',
  );

  /// value111678
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111678 = SecurityRoleType(
    fhirCode: '111678',
  );

  /// value111679
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111679 = SecurityRoleType(
    fhirCode: '111679',
  );

  /// value111680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111680 = SecurityRoleType(
    fhirCode: '111680',
  );

  /// value111685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111685 = SecurityRoleType(
    fhirCode: '111685',
  );

  /// value111686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111686 = SecurityRoleType(
    fhirCode: '111686',
  );

  /// value111687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111687 = SecurityRoleType(
    fhirCode: '111687',
  );

  /// value111688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111688 = SecurityRoleType(
    fhirCode: '111688',
  );

  /// value111689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111689 = SecurityRoleType(
    fhirCode: '111689',
  );

  /// value111690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111690 = SecurityRoleType(
    fhirCode: '111690',
  );

  /// value111691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111691 = SecurityRoleType(
    fhirCode: '111691',
  );

  /// value111692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111692 = SecurityRoleType(
    fhirCode: '111692',
  );

  /// value111693
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111693 = SecurityRoleType(
    fhirCode: '111693',
  );

  /// value111694
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111694 = SecurityRoleType(
    fhirCode: '111694',
  );

  /// value111695
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111695 = SecurityRoleType(
    fhirCode: '111695',
  );

  /// value111696
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111696 = SecurityRoleType(
    fhirCode: '111696',
  );

  /// value111697
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111697 = SecurityRoleType(
    fhirCode: '111697',
  );

  /// value111698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111698 = SecurityRoleType(
    fhirCode: '111698',
  );

  /// value111700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111700 = SecurityRoleType(
    fhirCode: '111700',
  );

  /// value111701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111701 = SecurityRoleType(
    fhirCode: '111701',
  );

  /// value111702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111702 = SecurityRoleType(
    fhirCode: '111702',
  );

  /// value111703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111703 = SecurityRoleType(
    fhirCode: '111703',
  );

  /// value111704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111704 = SecurityRoleType(
    fhirCode: '111704',
  );

  /// value111705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111705 = SecurityRoleType(
    fhirCode: '111705',
  );

  /// value111706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111706 = SecurityRoleType(
    fhirCode: '111706',
  );

  /// value111707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111707 = SecurityRoleType(
    fhirCode: '111707',
  );

  /// value111708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111708 = SecurityRoleType(
    fhirCode: '111708',
  );

  /// value111709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111709 = SecurityRoleType(
    fhirCode: '111709',
  );

  /// value111710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111710 = SecurityRoleType(
    fhirCode: '111710',
  );

  /// value111711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111711 = SecurityRoleType(
    fhirCode: '111711',
  );

  /// value111712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111712 = SecurityRoleType(
    fhirCode: '111712',
  );

  /// value111718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111718 = SecurityRoleType(
    fhirCode: '111718',
  );

  /// value111719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111719 = SecurityRoleType(
    fhirCode: '111719',
  );

  /// value111720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111720 = SecurityRoleType(
    fhirCode: '111720',
  );

  /// value111721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111721 = SecurityRoleType(
    fhirCode: '111721',
  );

  /// value111723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111723 = SecurityRoleType(
    fhirCode: '111723',
  );

  /// value111724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111724 = SecurityRoleType(
    fhirCode: '111724',
  );

  /// value111726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111726 = SecurityRoleType(
    fhirCode: '111726',
  );

  /// value111727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111727 = SecurityRoleType(
    fhirCode: '111727',
  );

  /// value111729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111729 = SecurityRoleType(
    fhirCode: '111729',
  );

  /// value111741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111741 = SecurityRoleType(
    fhirCode: '111741',
  );

  /// value111742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111742 = SecurityRoleType(
    fhirCode: '111742',
  );

  /// value111743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111743 = SecurityRoleType(
    fhirCode: '111743',
  );

  /// value111744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111744 = SecurityRoleType(
    fhirCode: '111744',
  );

  /// value111745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111745 = SecurityRoleType(
    fhirCode: '111745',
  );

  /// value111746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111746 = SecurityRoleType(
    fhirCode: '111746',
  );

  /// value111747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111747 = SecurityRoleType(
    fhirCode: '111747',
  );

  /// value111748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111748 = SecurityRoleType(
    fhirCode: '111748',
  );

  /// value111749
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111749 = SecurityRoleType(
    fhirCode: '111749',
  );

  /// value111750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111750 = SecurityRoleType(
    fhirCode: '111750',
  );

  /// value111751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111751 = SecurityRoleType(
    fhirCode: '111751',
  );

  /// value111752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111752 = SecurityRoleType(
    fhirCode: '111752',
  );

  /// value111753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111753 = SecurityRoleType(
    fhirCode: '111753',
  );

  /// value111754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111754 = SecurityRoleType(
    fhirCode: '111754',
  );

  /// value111755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111755 = SecurityRoleType(
    fhirCode: '111755',
  );

  /// value111756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111756 = SecurityRoleType(
    fhirCode: '111756',
  );

  /// value111760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111760 = SecurityRoleType(
    fhirCode: '111760',
  );

  /// value111761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111761 = SecurityRoleType(
    fhirCode: '111761',
  );

  /// value111762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111762 = SecurityRoleType(
    fhirCode: '111762',
  );

  /// value111763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111763 = SecurityRoleType(
    fhirCode: '111763',
  );

  /// value111764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111764 = SecurityRoleType(
    fhirCode: '111764',
  );

  /// value111765
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111765 = SecurityRoleType(
    fhirCode: '111765',
  );

  /// value111766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111766 = SecurityRoleType(
    fhirCode: '111766',
  );

  /// value111767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111767 = SecurityRoleType(
    fhirCode: '111767',
  );

  /// value111768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111768 = SecurityRoleType(
    fhirCode: '111768',
  );

  /// value111769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111769 = SecurityRoleType(
    fhirCode: '111769',
  );

  /// value111770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111770 = SecurityRoleType(
    fhirCode: '111770',
  );

  /// value111771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111771 = SecurityRoleType(
    fhirCode: '111771',
  );

  /// value111772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111772 = SecurityRoleType(
    fhirCode: '111772',
  );

  /// value111773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111773 = SecurityRoleType(
    fhirCode: '111773',
  );

  /// value111776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111776 = SecurityRoleType(
    fhirCode: '111776',
  );

  /// value111777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111777 = SecurityRoleType(
    fhirCode: '111777',
  );

  /// value111778
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111778 = SecurityRoleType(
    fhirCode: '111778',
  );

  /// value111779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111779 = SecurityRoleType(
    fhirCode: '111779',
  );

  /// value111780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111780 = SecurityRoleType(
    fhirCode: '111780',
  );

  /// value111781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111781 = SecurityRoleType(
    fhirCode: '111781',
  );

  /// value111782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111782 = SecurityRoleType(
    fhirCode: '111782',
  );

  /// value111783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111783 = SecurityRoleType(
    fhirCode: '111783',
  );

  /// value111786
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111786 = SecurityRoleType(
    fhirCode: '111786',
  );

  /// value111787
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111787 = SecurityRoleType(
    fhirCode: '111787',
  );

  /// value111791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111791 = SecurityRoleType(
    fhirCode: '111791',
  );

  /// value111792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111792 = SecurityRoleType(
    fhirCode: '111792',
  );

  /// value111800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111800 = SecurityRoleType(
    fhirCode: '111800',
  );

  /// value111801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111801 = SecurityRoleType(
    fhirCode: '111801',
  );

  /// value111802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111802 = SecurityRoleType(
    fhirCode: '111802',
  );

  /// value111803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111803 = SecurityRoleType(
    fhirCode: '111803',
  );

  /// value111804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111804 = SecurityRoleType(
    fhirCode: '111804',
  );

  /// value111805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111805 = SecurityRoleType(
    fhirCode: '111805',
  );

  /// value111806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111806 = SecurityRoleType(
    fhirCode: '111806',
  );

  /// value111807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111807 = SecurityRoleType(
    fhirCode: '111807',
  );

  /// value111808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111808 = SecurityRoleType(
    fhirCode: '111808',
  );

  /// value111809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111809 = SecurityRoleType(
    fhirCode: '111809',
  );

  /// value111810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111810 = SecurityRoleType(
    fhirCode: '111810',
  );

  /// value111811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111811 = SecurityRoleType(
    fhirCode: '111811',
  );

  /// value111812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111812 = SecurityRoleType(
    fhirCode: '111812',
  );

  /// value111813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111813 = SecurityRoleType(
    fhirCode: '111813',
  );

  /// value111814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111814 = SecurityRoleType(
    fhirCode: '111814',
  );

  /// value111815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111815 = SecurityRoleType(
    fhirCode: '111815',
  );

  /// value111816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111816 = SecurityRoleType(
    fhirCode: '111816',
  );

  /// value111817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111817 = SecurityRoleType(
    fhirCode: '111817',
  );

  /// value111818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111818 = SecurityRoleType(
    fhirCode: '111818',
  );

  /// value111819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111819 = SecurityRoleType(
    fhirCode: '111819',
  );

  /// value111820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111820 = SecurityRoleType(
    fhirCode: '111820',
  );

  /// value111821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111821 = SecurityRoleType(
    fhirCode: '111821',
  );

  /// value111822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111822 = SecurityRoleType(
    fhirCode: '111822',
  );

  /// value111823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111823 = SecurityRoleType(
    fhirCode: '111823',
  );

  /// value111824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111824 = SecurityRoleType(
    fhirCode: '111824',
  );

  /// value111825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111825 = SecurityRoleType(
    fhirCode: '111825',
  );

  /// value111826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111826 = SecurityRoleType(
    fhirCode: '111826',
  );

  /// value111827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111827 = SecurityRoleType(
    fhirCode: '111827',
  );

  /// value111828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111828 = SecurityRoleType(
    fhirCode: '111828',
  );

  /// value111829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111829 = SecurityRoleType(
    fhirCode: '111829',
  );

  /// value111830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111830 = SecurityRoleType(
    fhirCode: '111830',
  );

  /// value111831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111831 = SecurityRoleType(
    fhirCode: '111831',
  );

  /// value111832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111832 = SecurityRoleType(
    fhirCode: '111832',
  );

  /// value111833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111833 = SecurityRoleType(
    fhirCode: '111833',
  );

  /// value111834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111834 = SecurityRoleType(
    fhirCode: '111834',
  );

  /// value111835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111835 = SecurityRoleType(
    fhirCode: '111835',
  );

  /// value111836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111836 = SecurityRoleType(
    fhirCode: '111836',
  );

  /// value111837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111837 = SecurityRoleType(
    fhirCode: '111837',
  );

  /// value111838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111838 = SecurityRoleType(
    fhirCode: '111838',
  );

  /// value111839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111839 = SecurityRoleType(
    fhirCode: '111839',
  );

  /// value111840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111840 = SecurityRoleType(
    fhirCode: '111840',
  );

  /// value111841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111841 = SecurityRoleType(
    fhirCode: '111841',
  );

  /// value111842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111842 = SecurityRoleType(
    fhirCode: '111842',
  );

  /// value111843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111843 = SecurityRoleType(
    fhirCode: '111843',
  );

  /// value111844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111844 = SecurityRoleType(
    fhirCode: '111844',
  );

  /// value111845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111845 = SecurityRoleType(
    fhirCode: '111845',
  );

  /// value111846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111846 = SecurityRoleType(
    fhirCode: '111846',
  );

  /// value111847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111847 = SecurityRoleType(
    fhirCode: '111847',
  );

  /// value111848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111848 = SecurityRoleType(
    fhirCode: '111848',
  );

  /// value111849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111849 = SecurityRoleType(
    fhirCode: '111849',
  );

  /// value111850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111850 = SecurityRoleType(
    fhirCode: '111850',
  );

  /// value111851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111851 = SecurityRoleType(
    fhirCode: '111851',
  );

  /// value111852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111852 = SecurityRoleType(
    fhirCode: '111852',
  );

  /// value111853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111853 = SecurityRoleType(
    fhirCode: '111853',
  );

  /// value111854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111854 = SecurityRoleType(
    fhirCode: '111854',
  );

  /// value111855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111855 = SecurityRoleType(
    fhirCode: '111855',
  );

  /// value111856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111856 = SecurityRoleType(
    fhirCode: '111856',
  );

  /// value111900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111900 = SecurityRoleType(
    fhirCode: '111900',
  );

  /// value111901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111901 = SecurityRoleType(
    fhirCode: '111901',
  );

  /// value111902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111902 = SecurityRoleType(
    fhirCode: '111902',
  );

  /// value111903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111903 = SecurityRoleType(
    fhirCode: '111903',
  );

  /// value111904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111904 = SecurityRoleType(
    fhirCode: '111904',
  );

  /// value111905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111905 = SecurityRoleType(
    fhirCode: '111905',
  );

  /// value111906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111906 = SecurityRoleType(
    fhirCode: '111906',
  );

  /// value111907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111907 = SecurityRoleType(
    fhirCode: '111907',
  );

  /// value111908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111908 = SecurityRoleType(
    fhirCode: '111908',
  );

  /// value111909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111909 = SecurityRoleType(
    fhirCode: '111909',
  );

  /// value111910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111910 = SecurityRoleType(
    fhirCode: '111910',
  );

  /// value111911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111911 = SecurityRoleType(
    fhirCode: '111911',
  );

  /// value111912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111912 = SecurityRoleType(
    fhirCode: '111912',
  );

  /// value111913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111913 = SecurityRoleType(
    fhirCode: '111913',
  );

  /// value111914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111914 = SecurityRoleType(
    fhirCode: '111914',
  );

  /// value111915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111915 = SecurityRoleType(
    fhirCode: '111915',
  );

  /// value111916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111916 = SecurityRoleType(
    fhirCode: '111916',
  );

  /// value111917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111917 = SecurityRoleType(
    fhirCode: '111917',
  );

  /// value111918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111918 = SecurityRoleType(
    fhirCode: '111918',
  );

  /// value111919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111919 = SecurityRoleType(
    fhirCode: '111919',
  );

  /// value111920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111920 = SecurityRoleType(
    fhirCode: '111920',
  );

  /// value111921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111921 = SecurityRoleType(
    fhirCode: '111921',
  );

  /// value111922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111922 = SecurityRoleType(
    fhirCode: '111922',
  );

  /// value111923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111923 = SecurityRoleType(
    fhirCode: '111923',
  );

  /// value111924
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111924 = SecurityRoleType(
    fhirCode: '111924',
  );

  /// value111925
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111925 = SecurityRoleType(
    fhirCode: '111925',
  );

  /// value111926
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111926 = SecurityRoleType(
    fhirCode: '111926',
  );

  /// value111927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111927 = SecurityRoleType(
    fhirCode: '111927',
  );

  /// value111928
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111928 = SecurityRoleType(
    fhirCode: '111928',
  );

  /// value111929
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111929 = SecurityRoleType(
    fhirCode: '111929',
  );

  /// value111930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111930 = SecurityRoleType(
    fhirCode: '111930',
  );

  /// value111931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111931 = SecurityRoleType(
    fhirCode: '111931',
  );

  /// value111932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111932 = SecurityRoleType(
    fhirCode: '111932',
  );

  /// value111933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111933 = SecurityRoleType(
    fhirCode: '111933',
  );

  /// value111934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111934 = SecurityRoleType(
    fhirCode: '111934',
  );

  /// value111935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111935 = SecurityRoleType(
    fhirCode: '111935',
  );

  /// value111936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111936 = SecurityRoleType(
    fhirCode: '111936',
  );

  /// value111937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111937 = SecurityRoleType(
    fhirCode: '111937',
  );

  /// value111938
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111938 = SecurityRoleType(
    fhirCode: '111938',
  );

  /// value111939
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111939 = SecurityRoleType(
    fhirCode: '111939',
  );

  /// value111940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111940 = SecurityRoleType(
    fhirCode: '111940',
  );

  /// value111941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111941 = SecurityRoleType(
    fhirCode: '111941',
  );

  /// value111942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111942 = SecurityRoleType(
    fhirCode: '111942',
  );

  /// value111943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111943 = SecurityRoleType(
    fhirCode: '111943',
  );

  /// value111944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111944 = SecurityRoleType(
    fhirCode: '111944',
  );

  /// value111945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111945 = SecurityRoleType(
    fhirCode: '111945',
  );

  /// value111946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111946 = SecurityRoleType(
    fhirCode: '111946',
  );

  /// value111947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value111947 = SecurityRoleType(
    fhirCode: '111947',
  );

  /// value112000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112000 = SecurityRoleType(
    fhirCode: '112000',
  );

  /// value112001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112001 = SecurityRoleType(
    fhirCode: '112001',
  );

  /// value112002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112002 = SecurityRoleType(
    fhirCode: '112002',
  );

  /// value112003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112003 = SecurityRoleType(
    fhirCode: '112003',
  );

  /// value112004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112004 = SecurityRoleType(
    fhirCode: '112004',
  );

  /// value112005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112005 = SecurityRoleType(
    fhirCode: '112005',
  );

  /// value112006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112006 = SecurityRoleType(
    fhirCode: '112006',
  );

  /// value112007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112007 = SecurityRoleType(
    fhirCode: '112007',
  );

  /// value112008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112008 = SecurityRoleType(
    fhirCode: '112008',
  );

  /// value112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112009 = SecurityRoleType(
    fhirCode: '112009',
  );

  /// value112010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112010 = SecurityRoleType(
    fhirCode: '112010',
  );

  /// value112011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112011 = SecurityRoleType(
    fhirCode: '112011',
  );

  /// value112012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112012 = SecurityRoleType(
    fhirCode: '112012',
  );

  /// value112013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112013 = SecurityRoleType(
    fhirCode: '112013',
  );

  /// value112014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112014 = SecurityRoleType(
    fhirCode: '112014',
  );

  /// value112015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112015 = SecurityRoleType(
    fhirCode: '112015',
  );

  /// value112016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112016 = SecurityRoleType(
    fhirCode: '112016',
  );

  /// value112017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112017 = SecurityRoleType(
    fhirCode: '112017',
  );

  /// value112018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112018 = SecurityRoleType(
    fhirCode: '112018',
  );

  /// value112019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112019 = SecurityRoleType(
    fhirCode: '112019',
  );

  /// value112020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112020 = SecurityRoleType(
    fhirCode: '112020',
  );

  /// value112021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112021 = SecurityRoleType(
    fhirCode: '112021',
  );

  /// value112022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112022 = SecurityRoleType(
    fhirCode: '112022',
  );

  /// value112023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112023 = SecurityRoleType(
    fhirCode: '112023',
  );

  /// value112024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112024 = SecurityRoleType(
    fhirCode: '112024',
  );

  /// value112025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112025 = SecurityRoleType(
    fhirCode: '112025',
  );

  /// value112026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112026 = SecurityRoleType(
    fhirCode: '112026',
  );

  /// value112027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112027 = SecurityRoleType(
    fhirCode: '112027',
  );

  /// value112028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112028 = SecurityRoleType(
    fhirCode: '112028',
  );

  /// value112029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112029 = SecurityRoleType(
    fhirCode: '112029',
  );

  /// value112030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112030 = SecurityRoleType(
    fhirCode: '112030',
  );

  /// value112031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112031 = SecurityRoleType(
    fhirCode: '112031',
  );

  /// value112032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112032 = SecurityRoleType(
    fhirCode: '112032',
  );

  /// value112033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112033 = SecurityRoleType(
    fhirCode: '112033',
  );

  /// value112034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112034 = SecurityRoleType(
    fhirCode: '112034',
  );

  /// value112035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112035 = SecurityRoleType(
    fhirCode: '112035',
  );

  /// value112036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112036 = SecurityRoleType(
    fhirCode: '112036',
  );

  /// value112037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112037 = SecurityRoleType(
    fhirCode: '112037',
  );

  /// value112038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112038 = SecurityRoleType(
    fhirCode: '112038',
  );

  /// value112039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112039 = SecurityRoleType(
    fhirCode: '112039',
  );

  /// value112040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112040 = SecurityRoleType(
    fhirCode: '112040',
  );

  /// value112041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112041 = SecurityRoleType(
    fhirCode: '112041',
  );

  /// value112042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112042 = SecurityRoleType(
    fhirCode: '112042',
  );

  /// value112043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112043 = SecurityRoleType(
    fhirCode: '112043',
  );

  /// value112044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112044 = SecurityRoleType(
    fhirCode: '112044',
  );

  /// value112045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112045 = SecurityRoleType(
    fhirCode: '112045',
  );

  /// value112046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112046 = SecurityRoleType(
    fhirCode: '112046',
  );

  /// value112047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112047 = SecurityRoleType(
    fhirCode: '112047',
  );

  /// value112048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112048 = SecurityRoleType(
    fhirCode: '112048',
  );

  /// value112049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112049 = SecurityRoleType(
    fhirCode: '112049',
  );

  /// value112050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112050 = SecurityRoleType(
    fhirCode: '112050',
  );

  /// value112051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112051 = SecurityRoleType(
    fhirCode: '112051',
  );

  /// value112052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112052 = SecurityRoleType(
    fhirCode: '112052',
  );

  /// value112053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112053 = SecurityRoleType(
    fhirCode: '112053',
  );

  /// value112054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112054 = SecurityRoleType(
    fhirCode: '112054',
  );

  /// value112055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112055 = SecurityRoleType(
    fhirCode: '112055',
  );

  /// value112056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112056 = SecurityRoleType(
    fhirCode: '112056',
  );

  /// value112057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112057 = SecurityRoleType(
    fhirCode: '112057',
  );

  /// value112058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112058 = SecurityRoleType(
    fhirCode: '112058',
  );

  /// value112059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112059 = SecurityRoleType(
    fhirCode: '112059',
  );

  /// value112060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112060 = SecurityRoleType(
    fhirCode: '112060',
  );

  /// value112061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112061 = SecurityRoleType(
    fhirCode: '112061',
  );

  /// value112062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112062 = SecurityRoleType(
    fhirCode: '112062',
  );

  /// value112063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112063 = SecurityRoleType(
    fhirCode: '112063',
  );

  /// value112064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112064 = SecurityRoleType(
    fhirCode: '112064',
  );

  /// value112065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112065 = SecurityRoleType(
    fhirCode: '112065',
  );

  /// value112066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112066 = SecurityRoleType(
    fhirCode: '112066',
  );

  /// value112067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112067 = SecurityRoleType(
    fhirCode: '112067',
  );

  /// value112068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112068 = SecurityRoleType(
    fhirCode: '112068',
  );

  /// value112069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112069 = SecurityRoleType(
    fhirCode: '112069',
  );

  /// value112070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112070 = SecurityRoleType(
    fhirCode: '112070',
  );

  /// value112071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112071 = SecurityRoleType(
    fhirCode: '112071',
  );

  /// value112072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112072 = SecurityRoleType(
    fhirCode: '112072',
  );

  /// value112073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112073 = SecurityRoleType(
    fhirCode: '112073',
  );

  /// value112074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112074 = SecurityRoleType(
    fhirCode: '112074',
  );

  /// value112075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112075 = SecurityRoleType(
    fhirCode: '112075',
  );

  /// value112076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112076 = SecurityRoleType(
    fhirCode: '112076',
  );

  /// value112077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112077 = SecurityRoleType(
    fhirCode: '112077',
  );

  /// value112078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112078 = SecurityRoleType(
    fhirCode: '112078',
  );

  /// value112079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112079 = SecurityRoleType(
    fhirCode: '112079',
  );

  /// value112080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112080 = SecurityRoleType(
    fhirCode: '112080',
  );

  /// value112081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112081 = SecurityRoleType(
    fhirCode: '112081',
  );

  /// value112082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112082 = SecurityRoleType(
    fhirCode: '112082',
  );

  /// value112083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112083 = SecurityRoleType(
    fhirCode: '112083',
  );

  /// value112084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112084 = SecurityRoleType(
    fhirCode: '112084',
  );

  /// value112085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112085 = SecurityRoleType(
    fhirCode: '112085',
  );

  /// value112086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112086 = SecurityRoleType(
    fhirCode: '112086',
  );

  /// value112087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112087 = SecurityRoleType(
    fhirCode: '112087',
  );

  /// value112088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112088 = SecurityRoleType(
    fhirCode: '112088',
  );

  /// value112089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112089 = SecurityRoleType(
    fhirCode: '112089',
  );

  /// value112090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112090 = SecurityRoleType(
    fhirCode: '112090',
  );

  /// value112091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112091 = SecurityRoleType(
    fhirCode: '112091',
  );

  /// value112092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112092 = SecurityRoleType(
    fhirCode: '112092',
  );

  /// value112093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112093 = SecurityRoleType(
    fhirCode: '112093',
  );

  /// value112094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112094 = SecurityRoleType(
    fhirCode: '112094',
  );

  /// value112095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112095 = SecurityRoleType(
    fhirCode: '112095',
  );

  /// value112096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112096 = SecurityRoleType(
    fhirCode: '112096',
  );

  /// value112097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112097 = SecurityRoleType(
    fhirCode: '112097',
  );

  /// value112098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112098 = SecurityRoleType(
    fhirCode: '112098',
  );

  /// value112099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112099 = SecurityRoleType(
    fhirCode: '112099',
  );

  /// value112100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112100 = SecurityRoleType(
    fhirCode: '112100',
  );

  /// value112101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112101 = SecurityRoleType(
    fhirCode: '112101',
  );

  /// value112102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112102 = SecurityRoleType(
    fhirCode: '112102',
  );

  /// value112103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112103 = SecurityRoleType(
    fhirCode: '112103',
  );

  /// value112104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112104 = SecurityRoleType(
    fhirCode: '112104',
  );

  /// value112105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112105 = SecurityRoleType(
    fhirCode: '112105',
  );

  /// value112106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112106 = SecurityRoleType(
    fhirCode: '112106',
  );

  /// value112107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112107 = SecurityRoleType(
    fhirCode: '112107',
  );

  /// value112108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112108 = SecurityRoleType(
    fhirCode: '112108',
  );

  /// value112109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112109 = SecurityRoleType(
    fhirCode: '112109',
  );

  /// value112110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112110 = SecurityRoleType(
    fhirCode: '112110',
  );

  /// value112111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112111 = SecurityRoleType(
    fhirCode: '112111',
  );

  /// value112112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112112 = SecurityRoleType(
    fhirCode: '112112',
  );

  /// value112113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112113 = SecurityRoleType(
    fhirCode: '112113',
  );

  /// value112114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112114 = SecurityRoleType(
    fhirCode: '112114',
  );

  /// value112115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112115 = SecurityRoleType(
    fhirCode: '112115',
  );

  /// value112116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112116 = SecurityRoleType(
    fhirCode: '112116',
  );

  /// value112117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112117 = SecurityRoleType(
    fhirCode: '112117',
  );

  /// value112118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112118 = SecurityRoleType(
    fhirCode: '112118',
  );

  /// value112119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112119 = SecurityRoleType(
    fhirCode: '112119',
  );

  /// value112120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112120 = SecurityRoleType(
    fhirCode: '112120',
  );

  /// value112121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112121 = SecurityRoleType(
    fhirCode: '112121',
  );

  /// value112122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112122 = SecurityRoleType(
    fhirCode: '112122',
  );

  /// value112123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112123 = SecurityRoleType(
    fhirCode: '112123',
  );

  /// value112124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112124 = SecurityRoleType(
    fhirCode: '112124',
  );

  /// value112125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112125 = SecurityRoleType(
    fhirCode: '112125',
  );

  /// value112126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112126 = SecurityRoleType(
    fhirCode: '112126',
  );

  /// value112127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112127 = SecurityRoleType(
    fhirCode: '112127',
  );

  /// value112128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112128 = SecurityRoleType(
    fhirCode: '112128',
  );

  /// value112129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112129 = SecurityRoleType(
    fhirCode: '112129',
  );

  /// value112130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112130 = SecurityRoleType(
    fhirCode: '112130',
  );

  /// value112131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112131 = SecurityRoleType(
    fhirCode: '112131',
  );

  /// value112132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112132 = SecurityRoleType(
    fhirCode: '112132',
  );

  /// value112133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112133 = SecurityRoleType(
    fhirCode: '112133',
  );

  /// value112134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112134 = SecurityRoleType(
    fhirCode: '112134',
  );

  /// value112135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112135 = SecurityRoleType(
    fhirCode: '112135',
  );

  /// value112136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112136 = SecurityRoleType(
    fhirCode: '112136',
  );

  /// value112137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112137 = SecurityRoleType(
    fhirCode: '112137',
  );

  /// value112138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112138 = SecurityRoleType(
    fhirCode: '112138',
  );

  /// value112139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112139 = SecurityRoleType(
    fhirCode: '112139',
  );

  /// value112140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112140 = SecurityRoleType(
    fhirCode: '112140',
  );

  /// value112141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112141 = SecurityRoleType(
    fhirCode: '112141',
  );

  /// value112142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112142 = SecurityRoleType(
    fhirCode: '112142',
  );

  /// value112143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112143 = SecurityRoleType(
    fhirCode: '112143',
  );

  /// value112144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112144 = SecurityRoleType(
    fhirCode: '112144',
  );

  /// value112145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112145 = SecurityRoleType(
    fhirCode: '112145',
  );

  /// value112146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112146 = SecurityRoleType(
    fhirCode: '112146',
  );

  /// value112147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112147 = SecurityRoleType(
    fhirCode: '112147',
  );

  /// value112148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112148 = SecurityRoleType(
    fhirCode: '112148',
  );

  /// value112149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112149 = SecurityRoleType(
    fhirCode: '112149',
  );

  /// value112150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112150 = SecurityRoleType(
    fhirCode: '112150',
  );

  /// value112151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112151 = SecurityRoleType(
    fhirCode: '112151',
  );

  /// value112152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112152 = SecurityRoleType(
    fhirCode: '112152',
  );

  /// value112153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112153 = SecurityRoleType(
    fhirCode: '112153',
  );

  /// value112154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112154 = SecurityRoleType(
    fhirCode: '112154',
  );

  /// value112155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112155 = SecurityRoleType(
    fhirCode: '112155',
  );

  /// value112156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112156 = SecurityRoleType(
    fhirCode: '112156',
  );

  /// value112157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112157 = SecurityRoleType(
    fhirCode: '112157',
  );

  /// value112158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112158 = SecurityRoleType(
    fhirCode: '112158',
  );

  /// value112159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112159 = SecurityRoleType(
    fhirCode: '112159',
  );

  /// value112160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112160 = SecurityRoleType(
    fhirCode: '112160',
  );

  /// value112161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112161 = SecurityRoleType(
    fhirCode: '112161',
  );

  /// value112162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112162 = SecurityRoleType(
    fhirCode: '112162',
  );

  /// value112163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112163 = SecurityRoleType(
    fhirCode: '112163',
  );

  /// value112164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112164 = SecurityRoleType(
    fhirCode: '112164',
  );

  /// value112165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112165 = SecurityRoleType(
    fhirCode: '112165',
  );

  /// value112166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112166 = SecurityRoleType(
    fhirCode: '112166',
  );

  /// value112167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112167 = SecurityRoleType(
    fhirCode: '112167',
  );

  /// value112168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112168 = SecurityRoleType(
    fhirCode: '112168',
  );

  /// value112169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112169 = SecurityRoleType(
    fhirCode: '112169',
  );

  /// value112170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112170 = SecurityRoleType(
    fhirCode: '112170',
  );

  /// value112171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112171 = SecurityRoleType(
    fhirCode: '112171',
  );

  /// value112172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112172 = SecurityRoleType(
    fhirCode: '112172',
  );

  /// value112173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112173 = SecurityRoleType(
    fhirCode: '112173',
  );

  /// value112174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112174 = SecurityRoleType(
    fhirCode: '112174',
  );

  /// value112175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112175 = SecurityRoleType(
    fhirCode: '112175',
  );

  /// value112176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112176 = SecurityRoleType(
    fhirCode: '112176',
  );

  /// value112177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112177 = SecurityRoleType(
    fhirCode: '112177',
  );

  /// value112178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112178 = SecurityRoleType(
    fhirCode: '112178',
  );

  /// value112179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112179 = SecurityRoleType(
    fhirCode: '112179',
  );

  /// value112180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112180 = SecurityRoleType(
    fhirCode: '112180',
  );

  /// value112181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112181 = SecurityRoleType(
    fhirCode: '112181',
  );

  /// value112182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112182 = SecurityRoleType(
    fhirCode: '112182',
  );

  /// value112183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112183 = SecurityRoleType(
    fhirCode: '112183',
  );

  /// value112184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112184 = SecurityRoleType(
    fhirCode: '112184',
  );

  /// value112185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112185 = SecurityRoleType(
    fhirCode: '112185',
  );

  /// value112186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112186 = SecurityRoleType(
    fhirCode: '112186',
  );

  /// value112187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112187 = SecurityRoleType(
    fhirCode: '112187',
  );

  /// value112188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112188 = SecurityRoleType(
    fhirCode: '112188',
  );

  /// value112189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112189 = SecurityRoleType(
    fhirCode: '112189',
  );

  /// value112191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112191 = SecurityRoleType(
    fhirCode: '112191',
  );

  /// value112192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112192 = SecurityRoleType(
    fhirCode: '112192',
  );

  /// value112193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112193 = SecurityRoleType(
    fhirCode: '112193',
  );

  /// value112194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112194 = SecurityRoleType(
    fhirCode: '112194',
  );

  /// value112195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112195 = SecurityRoleType(
    fhirCode: '112195',
  );

  /// value112196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112196 = SecurityRoleType(
    fhirCode: '112196',
  );

  /// value112197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112197 = SecurityRoleType(
    fhirCode: '112197',
  );

  /// value112198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112198 = SecurityRoleType(
    fhirCode: '112198',
  );

  /// value112199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112199 = SecurityRoleType(
    fhirCode: '112199',
  );

  /// value112200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112200 = SecurityRoleType(
    fhirCode: '112200',
  );

  /// value112201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112201 = SecurityRoleType(
    fhirCode: '112201',
  );

  /// value112220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112220 = SecurityRoleType(
    fhirCode: '112220',
  );

  /// value112222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112222 = SecurityRoleType(
    fhirCode: '112222',
  );

  /// value112224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112224 = SecurityRoleType(
    fhirCode: '112224',
  );

  /// value112225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112225 = SecurityRoleType(
    fhirCode: '112225',
  );

  /// value112226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112226 = SecurityRoleType(
    fhirCode: '112226',
  );

  /// value112227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112227 = SecurityRoleType(
    fhirCode: '112227',
  );

  /// value112228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112228 = SecurityRoleType(
    fhirCode: '112228',
  );

  /// value112229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112229 = SecurityRoleType(
    fhirCode: '112229',
  );

  /// value112232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112232 = SecurityRoleType(
    fhirCode: '112232',
  );

  /// value112233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112233 = SecurityRoleType(
    fhirCode: '112233',
  );

  /// value112238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112238 = SecurityRoleType(
    fhirCode: '112238',
  );

  /// value112240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112240 = SecurityRoleType(
    fhirCode: '112240',
  );

  /// value112241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112241 = SecurityRoleType(
    fhirCode: '112241',
  );

  /// value112242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112242 = SecurityRoleType(
    fhirCode: '112242',
  );

  /// value112243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112243 = SecurityRoleType(
    fhirCode: '112243',
  );

  /// value112244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112244 = SecurityRoleType(
    fhirCode: '112244',
  );

  /// value112248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112248 = SecurityRoleType(
    fhirCode: '112248',
  );

  /// value112249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112249 = SecurityRoleType(
    fhirCode: '112249',
  );

  /// value112300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112300 = SecurityRoleType(
    fhirCode: '112300',
  );

  /// value112301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112301 = SecurityRoleType(
    fhirCode: '112301',
  );

  /// value112302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112302 = SecurityRoleType(
    fhirCode: '112302',
  );

  /// value112303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112303 = SecurityRoleType(
    fhirCode: '112303',
  );

  /// value112304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112304 = SecurityRoleType(
    fhirCode: '112304',
  );

  /// value112305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112305 = SecurityRoleType(
    fhirCode: '112305',
  );

  /// value112306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112306 = SecurityRoleType(
    fhirCode: '112306',
  );

  /// value112307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112307 = SecurityRoleType(
    fhirCode: '112307',
  );

  /// value112308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112308 = SecurityRoleType(
    fhirCode: '112308',
  );

  /// value112309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112309 = SecurityRoleType(
    fhirCode: '112309',
  );

  /// value112310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112310 = SecurityRoleType(
    fhirCode: '112310',
  );

  /// value112311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112311 = SecurityRoleType(
    fhirCode: '112311',
  );

  /// value112312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112312 = SecurityRoleType(
    fhirCode: '112312',
  );

  /// value112313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112313 = SecurityRoleType(
    fhirCode: '112313',
  );

  /// value112314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112314 = SecurityRoleType(
    fhirCode: '112314',
  );

  /// value112315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112315 = SecurityRoleType(
    fhirCode: '112315',
  );

  /// value112316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112316 = SecurityRoleType(
    fhirCode: '112316',
  );

  /// value112317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112317 = SecurityRoleType(
    fhirCode: '112317',
  );

  /// value112318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112318 = SecurityRoleType(
    fhirCode: '112318',
  );

  /// value112319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112319 = SecurityRoleType(
    fhirCode: '112319',
  );

  /// value112320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112320 = SecurityRoleType(
    fhirCode: '112320',
  );

  /// value112321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112321 = SecurityRoleType(
    fhirCode: '112321',
  );

  /// value112325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112325 = SecurityRoleType(
    fhirCode: '112325',
  );

  /// value112340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112340 = SecurityRoleType(
    fhirCode: '112340',
  );

  /// value112341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112341 = SecurityRoleType(
    fhirCode: '112341',
  );

  /// value112342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112342 = SecurityRoleType(
    fhirCode: '112342',
  );

  /// value112343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112343 = SecurityRoleType(
    fhirCode: '112343',
  );

  /// value112344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112344 = SecurityRoleType(
    fhirCode: '112344',
  );

  /// value112345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112345 = SecurityRoleType(
    fhirCode: '112345',
  );

  /// value112346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112346 = SecurityRoleType(
    fhirCode: '112346',
  );

  /// value112347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112347 = SecurityRoleType(
    fhirCode: '112347',
  );

  /// value112348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112348 = SecurityRoleType(
    fhirCode: '112348',
  );

  /// value112350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112350 = SecurityRoleType(
    fhirCode: '112350',
  );

  /// value112351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112351 = SecurityRoleType(
    fhirCode: '112351',
  );

  /// value112352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112352 = SecurityRoleType(
    fhirCode: '112352',
  );

  /// value112353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112353 = SecurityRoleType(
    fhirCode: '112353',
  );

  /// value112354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112354 = SecurityRoleType(
    fhirCode: '112354',
  );

  /// value112355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112355 = SecurityRoleType(
    fhirCode: '112355',
  );

  /// value112356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112356 = SecurityRoleType(
    fhirCode: '112356',
  );

  /// value112357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112357 = SecurityRoleType(
    fhirCode: '112357',
  );

  /// value112358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112358 = SecurityRoleType(
    fhirCode: '112358',
  );

  /// value112359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112359 = SecurityRoleType(
    fhirCode: '112359',
  );

  /// value112360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112360 = SecurityRoleType(
    fhirCode: '112360',
  );

  /// value112361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112361 = SecurityRoleType(
    fhirCode: '112361',
  );

  /// value112362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112362 = SecurityRoleType(
    fhirCode: '112362',
  );

  /// value112363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112363 = SecurityRoleType(
    fhirCode: '112363',
  );

  /// value112364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112364 = SecurityRoleType(
    fhirCode: '112364',
  );

  /// value112365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112365 = SecurityRoleType(
    fhirCode: '112365',
  );

  /// value112366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112366 = SecurityRoleType(
    fhirCode: '112366',
  );

  /// value112367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112367 = SecurityRoleType(
    fhirCode: '112367',
  );

  /// value112368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112368 = SecurityRoleType(
    fhirCode: '112368',
  );

  /// value112369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112369 = SecurityRoleType(
    fhirCode: '112369',
  );

  /// value112370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112370 = SecurityRoleType(
    fhirCode: '112370',
  );

  /// value112371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112371 = SecurityRoleType(
    fhirCode: '112371',
  );

  /// value112372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112372 = SecurityRoleType(
    fhirCode: '112372',
  );

  /// value112373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112373 = SecurityRoleType(
    fhirCode: '112373',
  );

  /// value112374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112374 = SecurityRoleType(
    fhirCode: '112374',
  );

  /// value112375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112375 = SecurityRoleType(
    fhirCode: '112375',
  );

  /// value112376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112376 = SecurityRoleType(
    fhirCode: '112376',
  );

  /// value112377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112377 = SecurityRoleType(
    fhirCode: '112377',
  );

  /// value112378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112378 = SecurityRoleType(
    fhirCode: '112378',
  );

  /// value112379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112379 = SecurityRoleType(
    fhirCode: '112379',
  );

  /// value112380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112380 = SecurityRoleType(
    fhirCode: '112380',
  );

  /// value112381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112381 = SecurityRoleType(
    fhirCode: '112381',
  );

  /// value112700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112700 = SecurityRoleType(
    fhirCode: '112700',
  );

  /// value112701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112701 = SecurityRoleType(
    fhirCode: '112701',
  );

  /// value112702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112702 = SecurityRoleType(
    fhirCode: '112702',
  );

  /// value112703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112703 = SecurityRoleType(
    fhirCode: '112703',
  );

  /// value112704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112704 = SecurityRoleType(
    fhirCode: '112704',
  );

  /// value112705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112705 = SecurityRoleType(
    fhirCode: '112705',
  );

  /// value112706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112706 = SecurityRoleType(
    fhirCode: '112706',
  );

  /// value112707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112707 = SecurityRoleType(
    fhirCode: '112707',
  );

  /// value112708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112708 = SecurityRoleType(
    fhirCode: '112708',
  );

  /// value112709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112709 = SecurityRoleType(
    fhirCode: '112709',
  );

  /// value112710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112710 = SecurityRoleType(
    fhirCode: '112710',
  );

  /// value112711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112711 = SecurityRoleType(
    fhirCode: '112711',
  );

  /// value112712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112712 = SecurityRoleType(
    fhirCode: '112712',
  );

  /// value112713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112713 = SecurityRoleType(
    fhirCode: '112713',
  );

  /// value112714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112714 = SecurityRoleType(
    fhirCode: '112714',
  );

  /// value112715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112715 = SecurityRoleType(
    fhirCode: '112715',
  );

  /// value112716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112716 = SecurityRoleType(
    fhirCode: '112716',
  );

  /// value112717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112717 = SecurityRoleType(
    fhirCode: '112717',
  );

  /// value112718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112718 = SecurityRoleType(
    fhirCode: '112718',
  );

  /// value112719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112719 = SecurityRoleType(
    fhirCode: '112719',
  );

  /// value112720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112720 = SecurityRoleType(
    fhirCode: '112720',
  );

  /// value112721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value112721 = SecurityRoleType(
    fhirCode: '112721',
  );

  /// value113000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113000 = SecurityRoleType(
    fhirCode: '113000',
  );

  /// value113001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113001 = SecurityRoleType(
    fhirCode: '113001',
  );

  /// value113002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113002 = SecurityRoleType(
    fhirCode: '113002',
  );

  /// value113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113003 = SecurityRoleType(
    fhirCode: '113003',
  );

  /// value113004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113004 = SecurityRoleType(
    fhirCode: '113004',
  );

  /// value113005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113005 = SecurityRoleType(
    fhirCode: '113005',
  );

  /// value113006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113006 = SecurityRoleType(
    fhirCode: '113006',
  );

  /// value113007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113007 = SecurityRoleType(
    fhirCode: '113007',
  );

  /// value113008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113008 = SecurityRoleType(
    fhirCode: '113008',
  );

  /// value113009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113009 = SecurityRoleType(
    fhirCode: '113009',
  );

  /// value113010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113010 = SecurityRoleType(
    fhirCode: '113010',
  );

  /// value113011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113011 = SecurityRoleType(
    fhirCode: '113011',
  );

  /// value113012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113012 = SecurityRoleType(
    fhirCode: '113012',
  );

  /// value113013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113013 = SecurityRoleType(
    fhirCode: '113013',
  );

  /// value113014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113014 = SecurityRoleType(
    fhirCode: '113014',
  );

  /// value113015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113015 = SecurityRoleType(
    fhirCode: '113015',
  );

  /// value113016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113016 = SecurityRoleType(
    fhirCode: '113016',
  );

  /// value113017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113017 = SecurityRoleType(
    fhirCode: '113017',
  );

  /// value113018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113018 = SecurityRoleType(
    fhirCode: '113018',
  );

  /// value113020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113020 = SecurityRoleType(
    fhirCode: '113020',
  );

  /// value113021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113021 = SecurityRoleType(
    fhirCode: '113021',
  );

  /// value113026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113026 = SecurityRoleType(
    fhirCode: '113026',
  );

  /// value113030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113030 = SecurityRoleType(
    fhirCode: '113030',
  );

  /// value113031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113031 = SecurityRoleType(
    fhirCode: '113031',
  );

  /// value113032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113032 = SecurityRoleType(
    fhirCode: '113032',
  );

  /// value113033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113033 = SecurityRoleType(
    fhirCode: '113033',
  );

  /// value113034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113034 = SecurityRoleType(
    fhirCode: '113034',
  );

  /// value113035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113035 = SecurityRoleType(
    fhirCode: '113035',
  );

  /// value113036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113036 = SecurityRoleType(
    fhirCode: '113036',
  );

  /// value113037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113037 = SecurityRoleType(
    fhirCode: '113037',
  );

  /// value113038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113038 = SecurityRoleType(
    fhirCode: '113038',
  );

  /// value113039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113039 = SecurityRoleType(
    fhirCode: '113039',
  );

  /// value113040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113040 = SecurityRoleType(
    fhirCode: '113040',
  );

  /// value113041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113041 = SecurityRoleType(
    fhirCode: '113041',
  );

  /// value113042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113042 = SecurityRoleType(
    fhirCode: '113042',
  );

  /// value113043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113043 = SecurityRoleType(
    fhirCode: '113043',
  );

  /// value113044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113044 = SecurityRoleType(
    fhirCode: '113044',
  );

  /// value113045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113045 = SecurityRoleType(
    fhirCode: '113045',
  );

  /// value113046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113046 = SecurityRoleType(
    fhirCode: '113046',
  );

  /// value113047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113047 = SecurityRoleType(
    fhirCode: '113047',
  );

  /// value113048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113048 = SecurityRoleType(
    fhirCode: '113048',
  );

  /// value113049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113049 = SecurityRoleType(
    fhirCode: '113049',
  );

  /// value113050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113050 = SecurityRoleType(
    fhirCode: '113050',
  );

  /// value113051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113051 = SecurityRoleType(
    fhirCode: '113051',
  );

  /// value113052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113052 = SecurityRoleType(
    fhirCode: '113052',
  );

  /// value113053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113053 = SecurityRoleType(
    fhirCode: '113053',
  );

  /// value113054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113054 = SecurityRoleType(
    fhirCode: '113054',
  );

  /// value113055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113055 = SecurityRoleType(
    fhirCode: '113055',
  );

  /// value113056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113056 = SecurityRoleType(
    fhirCode: '113056',
  );

  /// value113057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113057 = SecurityRoleType(
    fhirCode: '113057',
  );

  /// value113058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113058 = SecurityRoleType(
    fhirCode: '113058',
  );

  /// value113059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113059 = SecurityRoleType(
    fhirCode: '113059',
  );

  /// value113060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113060 = SecurityRoleType(
    fhirCode: '113060',
  );

  /// value113061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113061 = SecurityRoleType(
    fhirCode: '113061',
  );

  /// value113062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113062 = SecurityRoleType(
    fhirCode: '113062',
  );

  /// value113063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113063 = SecurityRoleType(
    fhirCode: '113063',
  );

  /// value113064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113064 = SecurityRoleType(
    fhirCode: '113064',
  );

  /// value113065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113065 = SecurityRoleType(
    fhirCode: '113065',
  );

  /// value113066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113066 = SecurityRoleType(
    fhirCode: '113066',
  );

  /// value113067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113067 = SecurityRoleType(
    fhirCode: '113067',
  );

  /// value113068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113068 = SecurityRoleType(
    fhirCode: '113068',
  );

  /// value113069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113069 = SecurityRoleType(
    fhirCode: '113069',
  );

  /// value113070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113070 = SecurityRoleType(
    fhirCode: '113070',
  );

  /// value113071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113071 = SecurityRoleType(
    fhirCode: '113071',
  );

  /// value113072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113072 = SecurityRoleType(
    fhirCode: '113072',
  );

  /// value113073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113073 = SecurityRoleType(
    fhirCode: '113073',
  );

  /// value113074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113074 = SecurityRoleType(
    fhirCode: '113074',
  );

  /// value113075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113075 = SecurityRoleType(
    fhirCode: '113075',
  );

  /// value113076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113076 = SecurityRoleType(
    fhirCode: '113076',
  );

  /// value113077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113077 = SecurityRoleType(
    fhirCode: '113077',
  );

  /// value113078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113078 = SecurityRoleType(
    fhirCode: '113078',
  );

  /// value113079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113079 = SecurityRoleType(
    fhirCode: '113079',
  );

  /// value113080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113080 = SecurityRoleType(
    fhirCode: '113080',
  );

  /// value113081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113081 = SecurityRoleType(
    fhirCode: '113081',
  );

  /// value113082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113082 = SecurityRoleType(
    fhirCode: '113082',
  );

  /// value113083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113083 = SecurityRoleType(
    fhirCode: '113083',
  );

  /// value113085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113085 = SecurityRoleType(
    fhirCode: '113085',
  );

  /// value113086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113086 = SecurityRoleType(
    fhirCode: '113086',
  );

  /// value113087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113087 = SecurityRoleType(
    fhirCode: '113087',
  );

  /// value113088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113088 = SecurityRoleType(
    fhirCode: '113088',
  );

  /// value113089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113089 = SecurityRoleType(
    fhirCode: '113089',
  );

  /// value113090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113090 = SecurityRoleType(
    fhirCode: '113090',
  );

  /// value113091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113091 = SecurityRoleType(
    fhirCode: '113091',
  );

  /// value113092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113092 = SecurityRoleType(
    fhirCode: '113092',
  );

  /// value113093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113093 = SecurityRoleType(
    fhirCode: '113093',
  );

  /// value113094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113094 = SecurityRoleType(
    fhirCode: '113094',
  );

  /// value113095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113095 = SecurityRoleType(
    fhirCode: '113095',
  );

  /// value113096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113096 = SecurityRoleType(
    fhirCode: '113096',
  );

  /// value113097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113097 = SecurityRoleType(
    fhirCode: '113097',
  );

  /// value113100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113100 = SecurityRoleType(
    fhirCode: '113100',
  );

  /// value113101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113101 = SecurityRoleType(
    fhirCode: '113101',
  );

  /// value113102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113102 = SecurityRoleType(
    fhirCode: '113102',
  );

  /// value113103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113103 = SecurityRoleType(
    fhirCode: '113103',
  );

  /// value113104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113104 = SecurityRoleType(
    fhirCode: '113104',
  );

  /// value113105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113105 = SecurityRoleType(
    fhirCode: '113105',
  );

  /// value113106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113106 = SecurityRoleType(
    fhirCode: '113106',
  );

  /// value113107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113107 = SecurityRoleType(
    fhirCode: '113107',
  );

  /// value113108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113108 = SecurityRoleType(
    fhirCode: '113108',
  );

  /// value113109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113109 = SecurityRoleType(
    fhirCode: '113109',
  );

  /// value113110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113110 = SecurityRoleType(
    fhirCode: '113110',
  );

  /// value113111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113111 = SecurityRoleType(
    fhirCode: '113111',
  );

  /// value113500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113500 = SecurityRoleType(
    fhirCode: '113500',
  );

  /// value113502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113502 = SecurityRoleType(
    fhirCode: '113502',
  );

  /// value113503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113503 = SecurityRoleType(
    fhirCode: '113503',
  );

  /// value113505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113505 = SecurityRoleType(
    fhirCode: '113505',
  );

  /// value113506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113506 = SecurityRoleType(
    fhirCode: '113506',
  );

  /// value113507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113507 = SecurityRoleType(
    fhirCode: '113507',
  );

  /// value113508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113508 = SecurityRoleType(
    fhirCode: '113508',
  );

  /// value113509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113509 = SecurityRoleType(
    fhirCode: '113509',
  );

  /// value113510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113510 = SecurityRoleType(
    fhirCode: '113510',
  );

  /// value113511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113511 = SecurityRoleType(
    fhirCode: '113511',
  );

  /// value113512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113512 = SecurityRoleType(
    fhirCode: '113512',
  );

  /// value113513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113513 = SecurityRoleType(
    fhirCode: '113513',
  );

  /// value113514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113514 = SecurityRoleType(
    fhirCode: '113514',
  );

  /// value113516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113516 = SecurityRoleType(
    fhirCode: '113516',
  );

  /// value113517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113517 = SecurityRoleType(
    fhirCode: '113517',
  );

  /// value113518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113518 = SecurityRoleType(
    fhirCode: '113518',
  );

  /// value113520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113520 = SecurityRoleType(
    fhirCode: '113520',
  );

  /// value113521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113521 = SecurityRoleType(
    fhirCode: '113521',
  );

  /// value113522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113522 = SecurityRoleType(
    fhirCode: '113522',
  );

  /// value113523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113523 = SecurityRoleType(
    fhirCode: '113523',
  );

  /// value113526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113526 = SecurityRoleType(
    fhirCode: '113526',
  );

  /// value113527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113527 = SecurityRoleType(
    fhirCode: '113527',
  );

  /// value113528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113528 = SecurityRoleType(
    fhirCode: '113528',
  );

  /// value113529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113529 = SecurityRoleType(
    fhirCode: '113529',
  );

  /// value113530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113530 = SecurityRoleType(
    fhirCode: '113530',
  );

  /// value113540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113540 = SecurityRoleType(
    fhirCode: '113540',
  );

  /// value113541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113541 = SecurityRoleType(
    fhirCode: '113541',
  );

  /// value113542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113542 = SecurityRoleType(
    fhirCode: '113542',
  );

  /// value113543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113543 = SecurityRoleType(
    fhirCode: '113543',
  );

  /// value113550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113550 = SecurityRoleType(
    fhirCode: '113550',
  );

  /// value113551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113551 = SecurityRoleType(
    fhirCode: '113551',
  );

  /// value113552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113552 = SecurityRoleType(
    fhirCode: '113552',
  );

  /// value113560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113560 = SecurityRoleType(
    fhirCode: '113560',
  );

  /// value113561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113561 = SecurityRoleType(
    fhirCode: '113561',
  );

  /// value113562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113562 = SecurityRoleType(
    fhirCode: '113562',
  );

  /// value113563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113563 = SecurityRoleType(
    fhirCode: '113563',
  );

  /// value113568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113568 = SecurityRoleType(
    fhirCode: '113568',
  );

  /// value113570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113570 = SecurityRoleType(
    fhirCode: '113570',
  );

  /// value113571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113571 = SecurityRoleType(
    fhirCode: '113571',
  );

  /// value113572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113572 = SecurityRoleType(
    fhirCode: '113572',
  );

  /// value113573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113573 = SecurityRoleType(
    fhirCode: '113573',
  );

  /// value113574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113574 = SecurityRoleType(
    fhirCode: '113574',
  );

  /// value113575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113575 = SecurityRoleType(
    fhirCode: '113575',
  );

  /// value113576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113576 = SecurityRoleType(
    fhirCode: '113576',
  );

  /// value113577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113577 = SecurityRoleType(
    fhirCode: '113577',
  );

  /// value113601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113601 = SecurityRoleType(
    fhirCode: '113601',
  );

  /// value113602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113602 = SecurityRoleType(
    fhirCode: '113602',
  );

  /// value113603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113603 = SecurityRoleType(
    fhirCode: '113603',
  );

  /// value113605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113605 = SecurityRoleType(
    fhirCode: '113605',
  );

  /// value113606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113606 = SecurityRoleType(
    fhirCode: '113606',
  );

  /// value113607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113607 = SecurityRoleType(
    fhirCode: '113607',
  );

  /// value113608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113608 = SecurityRoleType(
    fhirCode: '113608',
  );

  /// value113609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113609 = SecurityRoleType(
    fhirCode: '113609',
  );

  /// value113611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113611 = SecurityRoleType(
    fhirCode: '113611',
  );

  /// value113612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113612 = SecurityRoleType(
    fhirCode: '113612',
  );

  /// value113613
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113613 = SecurityRoleType(
    fhirCode: '113613',
  );

  /// value113620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113620 = SecurityRoleType(
    fhirCode: '113620',
  );

  /// value113621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113621 = SecurityRoleType(
    fhirCode: '113621',
  );

  /// value113622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113622 = SecurityRoleType(
    fhirCode: '113622',
  );

  /// value113630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113630 = SecurityRoleType(
    fhirCode: '113630',
  );

  /// value113631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113631 = SecurityRoleType(
    fhirCode: '113631',
  );

  /// value113650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113650 = SecurityRoleType(
    fhirCode: '113650',
  );

  /// value113651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113651 = SecurityRoleType(
    fhirCode: '113651',
  );

  /// value113652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113652 = SecurityRoleType(
    fhirCode: '113652',
  );

  /// value113653
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113653 = SecurityRoleType(
    fhirCode: '113653',
  );

  /// value113661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113661 = SecurityRoleType(
    fhirCode: '113661',
  );

  /// value113662
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113662 = SecurityRoleType(
    fhirCode: '113662',
  );

  /// value113663
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113663 = SecurityRoleType(
    fhirCode: '113663',
  );

  /// value113664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113664 = SecurityRoleType(
    fhirCode: '113664',
  );

  /// value113665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113665 = SecurityRoleType(
    fhirCode: '113665',
  );

  /// value113666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113666 = SecurityRoleType(
    fhirCode: '113666',
  );

  /// value113669
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113669 = SecurityRoleType(
    fhirCode: '113669',
  );

  /// value113670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113670 = SecurityRoleType(
    fhirCode: '113670',
  );

  /// value113671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113671 = SecurityRoleType(
    fhirCode: '113671',
  );

  /// value113680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113680 = SecurityRoleType(
    fhirCode: '113680',
  );

  /// value113681
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113681 = SecurityRoleType(
    fhirCode: '113681',
  );

  /// value113682
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113682 = SecurityRoleType(
    fhirCode: '113682',
  );

  /// value113683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113683 = SecurityRoleType(
    fhirCode: '113683',
  );

  /// value113684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113684 = SecurityRoleType(
    fhirCode: '113684',
  );

  /// value113685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113685 = SecurityRoleType(
    fhirCode: '113685',
  );

  /// value113686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113686 = SecurityRoleType(
    fhirCode: '113686',
  );

  /// value113687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113687 = SecurityRoleType(
    fhirCode: '113687',
  );

  /// value113688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113688 = SecurityRoleType(
    fhirCode: '113688',
  );

  /// value113689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113689 = SecurityRoleType(
    fhirCode: '113689',
  );

  /// value113690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113690 = SecurityRoleType(
    fhirCode: '113690',
  );

  /// value113691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113691 = SecurityRoleType(
    fhirCode: '113691',
  );

  /// value113692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113692 = SecurityRoleType(
    fhirCode: '113692',
  );

  /// value113701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113701 = SecurityRoleType(
    fhirCode: '113701',
  );

  /// value113702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113702 = SecurityRoleType(
    fhirCode: '113702',
  );

  /// value113704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113704 = SecurityRoleType(
    fhirCode: '113704',
  );

  /// value113705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113705 = SecurityRoleType(
    fhirCode: '113705',
  );

  /// value113706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113706 = SecurityRoleType(
    fhirCode: '113706',
  );

  /// value113710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113710 = SecurityRoleType(
    fhirCode: '113710',
  );

  /// value113711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113711 = SecurityRoleType(
    fhirCode: '113711',
  );

  /// value113720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113720 = SecurityRoleType(
    fhirCode: '113720',
  );

  /// value113721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113721 = SecurityRoleType(
    fhirCode: '113721',
  );

  /// value113722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113722 = SecurityRoleType(
    fhirCode: '113722',
  );

  /// value113723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113723 = SecurityRoleType(
    fhirCode: '113723',
  );

  /// value113724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113724 = SecurityRoleType(
    fhirCode: '113724',
  );

  /// value113725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113725 = SecurityRoleType(
    fhirCode: '113725',
  );

  /// value113726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113726 = SecurityRoleType(
    fhirCode: '113726',
  );

  /// value113727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113727 = SecurityRoleType(
    fhirCode: '113727',
  );

  /// value113728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113728 = SecurityRoleType(
    fhirCode: '113728',
  );

  /// value113729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113729 = SecurityRoleType(
    fhirCode: '113729',
  );

  /// value113730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113730 = SecurityRoleType(
    fhirCode: '113730',
  );

  /// value113731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113731 = SecurityRoleType(
    fhirCode: '113731',
  );

  /// value113732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113732 = SecurityRoleType(
    fhirCode: '113732',
  );

  /// value113733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113733 = SecurityRoleType(
    fhirCode: '113733',
  );

  /// value113734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113734 = SecurityRoleType(
    fhirCode: '113734',
  );

  /// value113735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113735 = SecurityRoleType(
    fhirCode: '113735',
  );

  /// value113736
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113736 = SecurityRoleType(
    fhirCode: '113736',
  );

  /// value113737
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113737 = SecurityRoleType(
    fhirCode: '113737',
  );

  /// value113738
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113738 = SecurityRoleType(
    fhirCode: '113738',
  );

  /// value113739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113739 = SecurityRoleType(
    fhirCode: '113739',
  );

  /// value113740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113740 = SecurityRoleType(
    fhirCode: '113740',
  );

  /// value113742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113742 = SecurityRoleType(
    fhirCode: '113742',
  );

  /// value113743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113743 = SecurityRoleType(
    fhirCode: '113743',
  );

  /// value113744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113744 = SecurityRoleType(
    fhirCode: '113744',
  );

  /// value113745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113745 = SecurityRoleType(
    fhirCode: '113745',
  );

  /// value113748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113748 = SecurityRoleType(
    fhirCode: '113748',
  );

  /// value113750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113750 = SecurityRoleType(
    fhirCode: '113750',
  );

  /// value113751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113751 = SecurityRoleType(
    fhirCode: '113751',
  );

  /// value113752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113752 = SecurityRoleType(
    fhirCode: '113752',
  );

  /// value113753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113753 = SecurityRoleType(
    fhirCode: '113753',
  );

  /// value113754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113754 = SecurityRoleType(
    fhirCode: '113754',
  );

  /// value113755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113755 = SecurityRoleType(
    fhirCode: '113755',
  );

  /// value113756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113756 = SecurityRoleType(
    fhirCode: '113756',
  );

  /// value113757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113757 = SecurityRoleType(
    fhirCode: '113757',
  );

  /// value113758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113758 = SecurityRoleType(
    fhirCode: '113758',
  );

  /// value113759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113759 = SecurityRoleType(
    fhirCode: '113759',
  );

  /// value113760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113760 = SecurityRoleType(
    fhirCode: '113760',
  );

  /// value113761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113761 = SecurityRoleType(
    fhirCode: '113761',
  );

  /// value113763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113763 = SecurityRoleType(
    fhirCode: '113763',
  );

  /// value113764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113764 = SecurityRoleType(
    fhirCode: '113764',
  );

  /// value113766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113766 = SecurityRoleType(
    fhirCode: '113766',
  );

  /// value113767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113767 = SecurityRoleType(
    fhirCode: '113767',
  );

  /// value113768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113768 = SecurityRoleType(
    fhirCode: '113768',
  );

  /// value113769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113769 = SecurityRoleType(
    fhirCode: '113769',
  );

  /// value113770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113770 = SecurityRoleType(
    fhirCode: '113770',
  );

  /// value113771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113771 = SecurityRoleType(
    fhirCode: '113771',
  );

  /// value113772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113772 = SecurityRoleType(
    fhirCode: '113772',
  );

  /// value113773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113773 = SecurityRoleType(
    fhirCode: '113773',
  );

  /// value113780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113780 = SecurityRoleType(
    fhirCode: '113780',
  );

  /// value113788
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113788 = SecurityRoleType(
    fhirCode: '113788',
  );

  /// value113789
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113789 = SecurityRoleType(
    fhirCode: '113789',
  );

  /// value113790
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113790 = SecurityRoleType(
    fhirCode: '113790',
  );

  /// value113791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113791 = SecurityRoleType(
    fhirCode: '113791',
  );

  /// value113792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113792 = SecurityRoleType(
    fhirCode: '113792',
  );

  /// value113793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113793 = SecurityRoleType(
    fhirCode: '113793',
  );

  /// value113794
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113794 = SecurityRoleType(
    fhirCode: '113794',
  );

  /// value113795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113795 = SecurityRoleType(
    fhirCode: '113795',
  );

  /// value113800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113800 = SecurityRoleType(
    fhirCode: '113800',
  );

  /// value113801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113801 = SecurityRoleType(
    fhirCode: '113801',
  );

  /// value113802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113802 = SecurityRoleType(
    fhirCode: '113802',
  );

  /// value113803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113803 = SecurityRoleType(
    fhirCode: '113803',
  );

  /// value113804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113804 = SecurityRoleType(
    fhirCode: '113804',
  );

  /// value113805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113805 = SecurityRoleType(
    fhirCode: '113805',
  );

  /// value113806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113806 = SecurityRoleType(
    fhirCode: '113806',
  );

  /// value113807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113807 = SecurityRoleType(
    fhirCode: '113807',
  );

  /// value113808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113808 = SecurityRoleType(
    fhirCode: '113808',
  );

  /// value113809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113809 = SecurityRoleType(
    fhirCode: '113809',
  );

  /// value113810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113810 = SecurityRoleType(
    fhirCode: '113810',
  );

  /// value113811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113811 = SecurityRoleType(
    fhirCode: '113811',
  );

  /// value113812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113812 = SecurityRoleType(
    fhirCode: '113812',
  );

  /// value113813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113813 = SecurityRoleType(
    fhirCode: '113813',
  );

  /// value113814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113814 = SecurityRoleType(
    fhirCode: '113814',
  );

  /// value113815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113815 = SecurityRoleType(
    fhirCode: '113815',
  );

  /// value113816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113816 = SecurityRoleType(
    fhirCode: '113816',
  );

  /// value113817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113817 = SecurityRoleType(
    fhirCode: '113817',
  );

  /// value113818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113818 = SecurityRoleType(
    fhirCode: '113818',
  );

  /// value113819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113819 = SecurityRoleType(
    fhirCode: '113819',
  );

  /// value113820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113820 = SecurityRoleType(
    fhirCode: '113820',
  );

  /// value113821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113821 = SecurityRoleType(
    fhirCode: '113821',
  );

  /// value113822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113822 = SecurityRoleType(
    fhirCode: '113822',
  );

  /// value113823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113823 = SecurityRoleType(
    fhirCode: '113823',
  );

  /// value113824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113824 = SecurityRoleType(
    fhirCode: '113824',
  );

  /// value113825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113825 = SecurityRoleType(
    fhirCode: '113825',
  );

  /// value113826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113826 = SecurityRoleType(
    fhirCode: '113826',
  );

  /// value113827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113827 = SecurityRoleType(
    fhirCode: '113827',
  );

  /// value113828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113828 = SecurityRoleType(
    fhirCode: '113828',
  );

  /// value113829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113829 = SecurityRoleType(
    fhirCode: '113829',
  );

  /// value113830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113830 = SecurityRoleType(
    fhirCode: '113830',
  );

  /// value113831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113831 = SecurityRoleType(
    fhirCode: '113831',
  );

  /// value113832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113832 = SecurityRoleType(
    fhirCode: '113832',
  );

  /// value113833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113833 = SecurityRoleType(
    fhirCode: '113833',
  );

  /// value113834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113834 = SecurityRoleType(
    fhirCode: '113834',
  );

  /// value113835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113835 = SecurityRoleType(
    fhirCode: '113835',
  );

  /// value113836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113836 = SecurityRoleType(
    fhirCode: '113836',
  );

  /// value113837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113837 = SecurityRoleType(
    fhirCode: '113837',
  );

  /// value113838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113838 = SecurityRoleType(
    fhirCode: '113838',
  );

  /// value113839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113839 = SecurityRoleType(
    fhirCode: '113839',
  );

  /// value113840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113840 = SecurityRoleType(
    fhirCode: '113840',
  );

  /// value113841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113841 = SecurityRoleType(
    fhirCode: '113841',
  );

  /// value113842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113842 = SecurityRoleType(
    fhirCode: '113842',
  );

  /// value113845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113845 = SecurityRoleType(
    fhirCode: '113845',
  );

  /// value113846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113846 = SecurityRoleType(
    fhirCode: '113846',
  );

  /// value113847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113847 = SecurityRoleType(
    fhirCode: '113847',
  );

  /// value113850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113850 = SecurityRoleType(
    fhirCode: '113850',
  );

  /// value113851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113851 = SecurityRoleType(
    fhirCode: '113851',
  );

  /// value113852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113852 = SecurityRoleType(
    fhirCode: '113852',
  );

  /// value113853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113853 = SecurityRoleType(
    fhirCode: '113853',
  );

  /// value113854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113854 = SecurityRoleType(
    fhirCode: '113854',
  );

  /// value113855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113855 = SecurityRoleType(
    fhirCode: '113855',
  );

  /// value113856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113856 = SecurityRoleType(
    fhirCode: '113856',
  );

  /// value113857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113857 = SecurityRoleType(
    fhirCode: '113857',
  );

  /// value113858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113858 = SecurityRoleType(
    fhirCode: '113858',
  );

  /// value113859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113859 = SecurityRoleType(
    fhirCode: '113859',
  );

  /// value113860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113860 = SecurityRoleType(
    fhirCode: '113860',
  );

  /// value113861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113861 = SecurityRoleType(
    fhirCode: '113861',
  );

  /// value113862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113862 = SecurityRoleType(
    fhirCode: '113862',
  );

  /// value113863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113863 = SecurityRoleType(
    fhirCode: '113863',
  );

  /// value113864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113864 = SecurityRoleType(
    fhirCode: '113864',
  );

  /// value113865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113865 = SecurityRoleType(
    fhirCode: '113865',
  );

  /// value113866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113866 = SecurityRoleType(
    fhirCode: '113866',
  );

  /// value113867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113867 = SecurityRoleType(
    fhirCode: '113867',
  );

  /// value113868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113868 = SecurityRoleType(
    fhirCode: '113868',
  );

  /// value113870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113870 = SecurityRoleType(
    fhirCode: '113870',
  );

  /// value113871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113871 = SecurityRoleType(
    fhirCode: '113871',
  );

  /// value113872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113872 = SecurityRoleType(
    fhirCode: '113872',
  );

  /// value113873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113873 = SecurityRoleType(
    fhirCode: '113873',
  );

  /// value113874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113874 = SecurityRoleType(
    fhirCode: '113874',
  );

  /// value113875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113875 = SecurityRoleType(
    fhirCode: '113875',
  );

  /// value113876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113876 = SecurityRoleType(
    fhirCode: '113876',
  );

  /// value113877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113877 = SecurityRoleType(
    fhirCode: '113877',
  );

  /// value113878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113878 = SecurityRoleType(
    fhirCode: '113878',
  );

  /// value113879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113879 = SecurityRoleType(
    fhirCode: '113879',
  );

  /// value113880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113880 = SecurityRoleType(
    fhirCode: '113880',
  );

  /// value113890
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113890 = SecurityRoleType(
    fhirCode: '113890',
  );

  /// value113893
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113893 = SecurityRoleType(
    fhirCode: '113893',
  );

  /// value113895
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113895 = SecurityRoleType(
    fhirCode: '113895',
  );

  /// value113896
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113896 = SecurityRoleType(
    fhirCode: '113896',
  );

  /// value113897
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113897 = SecurityRoleType(
    fhirCode: '113897',
  );

  /// value113898
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113898 = SecurityRoleType(
    fhirCode: '113898',
  );

  /// value113899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113899 = SecurityRoleType(
    fhirCode: '113899',
  );

  /// value113900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113900 = SecurityRoleType(
    fhirCode: '113900',
  );

  /// value113901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113901 = SecurityRoleType(
    fhirCode: '113901',
  );

  /// value113902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113902 = SecurityRoleType(
    fhirCode: '113902',
  );

  /// value113903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113903 = SecurityRoleType(
    fhirCode: '113903',
  );

  /// value113904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113904 = SecurityRoleType(
    fhirCode: '113904',
  );

  /// value113905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113905 = SecurityRoleType(
    fhirCode: '113905',
  );

  /// value113906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113906 = SecurityRoleType(
    fhirCode: '113906',
  );

  /// value113907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113907 = SecurityRoleType(
    fhirCode: '113907',
  );

  /// value113908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113908 = SecurityRoleType(
    fhirCode: '113908',
  );

  /// value113909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113909 = SecurityRoleType(
    fhirCode: '113909',
  );

  /// value113910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113910 = SecurityRoleType(
    fhirCode: '113910',
  );

  /// value113911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113911 = SecurityRoleType(
    fhirCode: '113911',
  );

  /// value113912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113912 = SecurityRoleType(
    fhirCode: '113912',
  );

  /// value113913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113913 = SecurityRoleType(
    fhirCode: '113913',
  );

  /// value113914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113914 = SecurityRoleType(
    fhirCode: '113914',
  );

  /// value113921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113921 = SecurityRoleType(
    fhirCode: '113921',
  );

  /// value113922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113922 = SecurityRoleType(
    fhirCode: '113922',
  );

  /// value113923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113923 = SecurityRoleType(
    fhirCode: '113923',
  );

  /// value113930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113930 = SecurityRoleType(
    fhirCode: '113930',
  );

  /// value113931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113931 = SecurityRoleType(
    fhirCode: '113931',
  );

  /// value113932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113932 = SecurityRoleType(
    fhirCode: '113932',
  );

  /// value113933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113933 = SecurityRoleType(
    fhirCode: '113933',
  );

  /// value113934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113934 = SecurityRoleType(
    fhirCode: '113934',
  );

  /// value113935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113935 = SecurityRoleType(
    fhirCode: '113935',
  );

  /// value113936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113936 = SecurityRoleType(
    fhirCode: '113936',
  );

  /// value113937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113937 = SecurityRoleType(
    fhirCode: '113937',
  );

  /// value113940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113940 = SecurityRoleType(
    fhirCode: '113940',
  );

  /// value113941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113941 = SecurityRoleType(
    fhirCode: '113941',
  );

  /// value113942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113942 = SecurityRoleType(
    fhirCode: '113942',
  );

  /// value113943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113943 = SecurityRoleType(
    fhirCode: '113943',
  );

  /// value113944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113944 = SecurityRoleType(
    fhirCode: '113944',
  );

  /// value113945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113945 = SecurityRoleType(
    fhirCode: '113945',
  );

  /// value113946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113946 = SecurityRoleType(
    fhirCode: '113946',
  );

  /// value113947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113947 = SecurityRoleType(
    fhirCode: '113947',
  );

  /// value113948
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113948 = SecurityRoleType(
    fhirCode: '113948',
  );

  /// value113949
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113949 = SecurityRoleType(
    fhirCode: '113949',
  );

  /// value113950
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113950 = SecurityRoleType(
    fhirCode: '113950',
  );

  /// value113951
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113951 = SecurityRoleType(
    fhirCode: '113951',
  );

  /// value113952
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113952 = SecurityRoleType(
    fhirCode: '113952',
  );

  /// value113953
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113953 = SecurityRoleType(
    fhirCode: '113953',
  );

  /// value113954
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113954 = SecurityRoleType(
    fhirCode: '113954',
  );

  /// value113955
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113955 = SecurityRoleType(
    fhirCode: '113955',
  );

  /// value113956
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113956 = SecurityRoleType(
    fhirCode: '113956',
  );

  /// value113957
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113957 = SecurityRoleType(
    fhirCode: '113957',
  );

  /// value113958
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113958 = SecurityRoleType(
    fhirCode: '113958',
  );

  /// value113959
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113959 = SecurityRoleType(
    fhirCode: '113959',
  );

  /// value113961
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113961 = SecurityRoleType(
    fhirCode: '113961',
  );

  /// value113962
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113962 = SecurityRoleType(
    fhirCode: '113962',
  );

  /// value113963
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113963 = SecurityRoleType(
    fhirCode: '113963',
  );

  /// value113970
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value113970 = SecurityRoleType(
    fhirCode: '113970',
  );

  /// value114000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114000 = SecurityRoleType(
    fhirCode: '114000',
  );

  /// value114001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114001 = SecurityRoleType(
    fhirCode: '114001',
  );

  /// value114002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114002 = SecurityRoleType(
    fhirCode: '114002',
  );

  /// value114003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114003 = SecurityRoleType(
    fhirCode: '114003',
  );

  /// value114004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114004 = SecurityRoleType(
    fhirCode: '114004',
  );

  /// value114005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114005 = SecurityRoleType(
    fhirCode: '114005',
  );

  /// value114006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114006 = SecurityRoleType(
    fhirCode: '114006',
  );

  /// value114007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114007 = SecurityRoleType(
    fhirCode: '114007',
  );

  /// value114008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114008 = SecurityRoleType(
    fhirCode: '114008',
  );

  /// value114009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114009 = SecurityRoleType(
    fhirCode: '114009',
  );

  /// value114010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114010 = SecurityRoleType(
    fhirCode: '114010',
  );

  /// value114011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114011 = SecurityRoleType(
    fhirCode: '114011',
  );

  /// value114201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114201 = SecurityRoleType(
    fhirCode: '114201',
  );

  /// value114202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114202 = SecurityRoleType(
    fhirCode: '114202',
  );

  /// value114203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114203 = SecurityRoleType(
    fhirCode: '114203',
  );

  /// value114204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114204 = SecurityRoleType(
    fhirCode: '114204',
  );

  /// value114205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114205 = SecurityRoleType(
    fhirCode: '114205',
  );

  /// value114206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114206 = SecurityRoleType(
    fhirCode: '114206',
  );

  /// value114207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114207 = SecurityRoleType(
    fhirCode: '114207',
  );

  /// value114208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114208 = SecurityRoleType(
    fhirCode: '114208',
  );

  /// value114209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114209 = SecurityRoleType(
    fhirCode: '114209',
  );

  /// value114210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114210 = SecurityRoleType(
    fhirCode: '114210',
  );

  /// value114211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114211 = SecurityRoleType(
    fhirCode: '114211',
  );

  /// value114213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114213 = SecurityRoleType(
    fhirCode: '114213',
  );

  /// value114215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114215 = SecurityRoleType(
    fhirCode: '114215',
  );

  /// value114216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value114216 = SecurityRoleType(
    fhirCode: '114216',
  );

  /// value121001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121001 = SecurityRoleType(
    fhirCode: '121001',
  );

  /// value121002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121002 = SecurityRoleType(
    fhirCode: '121002',
  );

  /// value121003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121003 = SecurityRoleType(
    fhirCode: '121003',
  );

  /// value121004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121004 = SecurityRoleType(
    fhirCode: '121004',
  );

  /// value121005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121005 = SecurityRoleType(
    fhirCode: '121005',
  );

  /// value121006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121006 = SecurityRoleType(
    fhirCode: '121006',
  );

  /// value121007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121007 = SecurityRoleType(
    fhirCode: '121007',
  );

  /// value121008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121008 = SecurityRoleType(
    fhirCode: '121008',
  );

  /// value121009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121009 = SecurityRoleType(
    fhirCode: '121009',
  );

  /// value121010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121010 = SecurityRoleType(
    fhirCode: '121010',
  );

  /// value121011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121011 = SecurityRoleType(
    fhirCode: '121011',
  );

  /// value121012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121012 = SecurityRoleType(
    fhirCode: '121012',
  );

  /// value121013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121013 = SecurityRoleType(
    fhirCode: '121013',
  );

  /// value121014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121014 = SecurityRoleType(
    fhirCode: '121014',
  );

  /// value121015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121015 = SecurityRoleType(
    fhirCode: '121015',
  );

  /// value121016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121016 = SecurityRoleType(
    fhirCode: '121016',
  );

  /// value121017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121017 = SecurityRoleType(
    fhirCode: '121017',
  );

  /// value121018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121018 = SecurityRoleType(
    fhirCode: '121018',
  );

  /// value121019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121019 = SecurityRoleType(
    fhirCode: '121019',
  );

  /// value121020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121020 = SecurityRoleType(
    fhirCode: '121020',
  );

  /// value121021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121021 = SecurityRoleType(
    fhirCode: '121021',
  );

  /// value121022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121022 = SecurityRoleType(
    fhirCode: '121022',
  );

  /// value121023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121023 = SecurityRoleType(
    fhirCode: '121023',
  );

  /// value121024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121024 = SecurityRoleType(
    fhirCode: '121024',
  );

  /// value121025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121025 = SecurityRoleType(
    fhirCode: '121025',
  );

  /// value121026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121026 = SecurityRoleType(
    fhirCode: '121026',
  );

  /// value121027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121027 = SecurityRoleType(
    fhirCode: '121027',
  );

  /// value121028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121028 = SecurityRoleType(
    fhirCode: '121028',
  );

  /// value121029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121029 = SecurityRoleType(
    fhirCode: '121029',
  );

  /// value121030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121030 = SecurityRoleType(
    fhirCode: '121030',
  );

  /// value121031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121031 = SecurityRoleType(
    fhirCode: '121031',
  );

  /// value121032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121032 = SecurityRoleType(
    fhirCode: '121032',
  );

  /// value121033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121033 = SecurityRoleType(
    fhirCode: '121033',
  );

  /// value121034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121034 = SecurityRoleType(
    fhirCode: '121034',
  );

  /// value121035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121035 = SecurityRoleType(
    fhirCode: '121035',
  );

  /// value121036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121036 = SecurityRoleType(
    fhirCode: '121036',
  );

  /// value121037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121037 = SecurityRoleType(
    fhirCode: '121037',
  );

  /// value121038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121038 = SecurityRoleType(
    fhirCode: '121038',
  );

  /// value121039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121039 = SecurityRoleType(
    fhirCode: '121039',
  );

  /// value121040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121040 = SecurityRoleType(
    fhirCode: '121040',
  );

  /// value121041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121041 = SecurityRoleType(
    fhirCode: '121041',
  );

  /// value121042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121042 = SecurityRoleType(
    fhirCode: '121042',
  );

  /// value121043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121043 = SecurityRoleType(
    fhirCode: '121043',
  );

  /// value121044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121044 = SecurityRoleType(
    fhirCode: '121044',
  );

  /// value121045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121045 = SecurityRoleType(
    fhirCode: '121045',
  );

  /// value121046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121046 = SecurityRoleType(
    fhirCode: '121046',
  );

  /// value121047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121047 = SecurityRoleType(
    fhirCode: '121047',
  );

  /// value121048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121048 = SecurityRoleType(
    fhirCode: '121048',
  );

  /// value121049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121049 = SecurityRoleType(
    fhirCode: '121049',
  );

  /// value121050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121050 = SecurityRoleType(
    fhirCode: '121050',
  );

  /// value121051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121051 = SecurityRoleType(
    fhirCode: '121051',
  );

  /// value121052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121052 = SecurityRoleType(
    fhirCode: '121052',
  );

  /// value121053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121053 = SecurityRoleType(
    fhirCode: '121053',
  );

  /// value121054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121054 = SecurityRoleType(
    fhirCode: '121054',
  );

  /// value121055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121055 = SecurityRoleType(
    fhirCode: '121055',
  );

  /// value121056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121056 = SecurityRoleType(
    fhirCode: '121056',
  );

  /// value121057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121057 = SecurityRoleType(
    fhirCode: '121057',
  );

  /// value121058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121058 = SecurityRoleType(
    fhirCode: '121058',
  );

  /// value121059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121059 = SecurityRoleType(
    fhirCode: '121059',
  );

  /// value121060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121060 = SecurityRoleType(
    fhirCode: '121060',
  );

  /// value121062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121062 = SecurityRoleType(
    fhirCode: '121062',
  );

  /// value121064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121064 = SecurityRoleType(
    fhirCode: '121064',
  );

  /// value121065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121065 = SecurityRoleType(
    fhirCode: '121065',
  );

  /// value121066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121066 = SecurityRoleType(
    fhirCode: '121066',
  );

  /// value121068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121068 = SecurityRoleType(
    fhirCode: '121068',
  );

  /// value121069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121069 = SecurityRoleType(
    fhirCode: '121069',
  );

  /// value121070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121070 = SecurityRoleType(
    fhirCode: '121070',
  );

  /// value121071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121071 = SecurityRoleType(
    fhirCode: '121071',
  );

  /// value121072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121072 = SecurityRoleType(
    fhirCode: '121072',
  );

  /// value121073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121073 = SecurityRoleType(
    fhirCode: '121073',
  );

  /// value121074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121074 = SecurityRoleType(
    fhirCode: '121074',
  );

  /// value121075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121075 = SecurityRoleType(
    fhirCode: '121075',
  );

  /// value121076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121076 = SecurityRoleType(
    fhirCode: '121076',
  );

  /// value121077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121077 = SecurityRoleType(
    fhirCode: '121077',
  );

  /// value121078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121078 = SecurityRoleType(
    fhirCode: '121078',
  );

  /// value121079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121079 = SecurityRoleType(
    fhirCode: '121079',
  );

  /// value121080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121080 = SecurityRoleType(
    fhirCode: '121080',
  );

  /// value121081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121081 = SecurityRoleType(
    fhirCode: '121081',
  );

  /// value121082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121082 = SecurityRoleType(
    fhirCode: '121082',
  );

  /// value121083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121083 = SecurityRoleType(
    fhirCode: '121083',
  );

  /// value121084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121084 = SecurityRoleType(
    fhirCode: '121084',
  );

  /// value121085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121085 = SecurityRoleType(
    fhirCode: '121085',
  );

  /// value121086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121086 = SecurityRoleType(
    fhirCode: '121086',
  );

  /// value121087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121087 = SecurityRoleType(
    fhirCode: '121087',
  );

  /// value121088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121088 = SecurityRoleType(
    fhirCode: '121088',
  );

  /// value121089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121089 = SecurityRoleType(
    fhirCode: '121089',
  );

  /// value121090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121090 = SecurityRoleType(
    fhirCode: '121090',
  );

  /// value121091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121091 = SecurityRoleType(
    fhirCode: '121091',
  );

  /// value121092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121092 = SecurityRoleType(
    fhirCode: '121092',
  );

  /// value121093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121093 = SecurityRoleType(
    fhirCode: '121093',
  );

  /// value121094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121094 = SecurityRoleType(
    fhirCode: '121094',
  );

  /// value121095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121095 = SecurityRoleType(
    fhirCode: '121095',
  );

  /// value121096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121096 = SecurityRoleType(
    fhirCode: '121096',
  );

  /// value121097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121097 = SecurityRoleType(
    fhirCode: '121097',
  );

  /// value121098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121098 = SecurityRoleType(
    fhirCode: '121098',
  );

  /// value121099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121099 = SecurityRoleType(
    fhirCode: '121099',
  );

  /// value121100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121100 = SecurityRoleType(
    fhirCode: '121100',
  );

  /// value121101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121101 = SecurityRoleType(
    fhirCode: '121101',
  );

  /// value121102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121102 = SecurityRoleType(
    fhirCode: '121102',
  );

  /// value121103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121103 = SecurityRoleType(
    fhirCode: '121103',
  );

  /// value121104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121104 = SecurityRoleType(
    fhirCode: '121104',
  );

  /// value121105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121105 = SecurityRoleType(
    fhirCode: '121105',
  );

  /// value121106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121106 = SecurityRoleType(
    fhirCode: '121106',
  );

  /// value121109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121109 = SecurityRoleType(
    fhirCode: '121109',
  );

  /// value121110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121110 = SecurityRoleType(
    fhirCode: '121110',
  );

  /// value121111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121111 = SecurityRoleType(
    fhirCode: '121111',
  );

  /// value121112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121112 = SecurityRoleType(
    fhirCode: '121112',
  );

  /// value121113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121113 = SecurityRoleType(
    fhirCode: '121113',
  );

  /// value121114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121114 = SecurityRoleType(
    fhirCode: '121114',
  );

  /// value121115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121115 = SecurityRoleType(
    fhirCode: '121115',
  );

  /// value121116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121116 = SecurityRoleType(
    fhirCode: '121116',
  );

  /// value121117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121117 = SecurityRoleType(
    fhirCode: '121117',
  );

  /// value121118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121118 = SecurityRoleType(
    fhirCode: '121118',
  );

  /// value121120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121120 = SecurityRoleType(
    fhirCode: '121120',
  );

  /// value121121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121121 = SecurityRoleType(
    fhirCode: '121121',
  );

  /// value121122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121122 = SecurityRoleType(
    fhirCode: '121122',
  );

  /// value121123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121123 = SecurityRoleType(
    fhirCode: '121123',
  );

  /// value121124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121124 = SecurityRoleType(
    fhirCode: '121124',
  );

  /// value121125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121125 = SecurityRoleType(
    fhirCode: '121125',
  );

  /// value121126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121126 = SecurityRoleType(
    fhirCode: '121126',
  );

  /// value121127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121127 = SecurityRoleType(
    fhirCode: '121127',
  );

  /// value121128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121128 = SecurityRoleType(
    fhirCode: '121128',
  );

  /// value121130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121130 = SecurityRoleType(
    fhirCode: '121130',
  );

  /// value121131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121131 = SecurityRoleType(
    fhirCode: '121131',
  );

  /// value121132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121132 = SecurityRoleType(
    fhirCode: '121132',
  );

  /// value121133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121133 = SecurityRoleType(
    fhirCode: '121133',
  );

  /// value121135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121135 = SecurityRoleType(
    fhirCode: '121135',
  );

  /// value121136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121136 = SecurityRoleType(
    fhirCode: '121136',
  );

  /// value121137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121137 = SecurityRoleType(
    fhirCode: '121137',
  );

  /// value121138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121138 = SecurityRoleType(
    fhirCode: '121138',
  );

  /// value121139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121139 = SecurityRoleType(
    fhirCode: '121139',
  );

  /// value121140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121140 = SecurityRoleType(
    fhirCode: '121140',
  );

  /// value121141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121141 = SecurityRoleType(
    fhirCode: '121141',
  );

  /// value121142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121142 = SecurityRoleType(
    fhirCode: '121142',
  );

  /// value121143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121143 = SecurityRoleType(
    fhirCode: '121143',
  );

  /// value121144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121144 = SecurityRoleType(
    fhirCode: '121144',
  );

  /// value121145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121145 = SecurityRoleType(
    fhirCode: '121145',
  );

  /// value121146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121146 = SecurityRoleType(
    fhirCode: '121146',
  );

  /// value121147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121147 = SecurityRoleType(
    fhirCode: '121147',
  );

  /// value121148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121148 = SecurityRoleType(
    fhirCode: '121148',
  );

  /// value121149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121149 = SecurityRoleType(
    fhirCode: '121149',
  );

  /// value121150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121150 = SecurityRoleType(
    fhirCode: '121150',
  );

  /// value121151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121151 = SecurityRoleType(
    fhirCode: '121151',
  );

  /// value121152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121152 = SecurityRoleType(
    fhirCode: '121152',
  );

  /// value121153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121153 = SecurityRoleType(
    fhirCode: '121153',
  );

  /// value121154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121154 = SecurityRoleType(
    fhirCode: '121154',
  );

  /// value121155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121155 = SecurityRoleType(
    fhirCode: '121155',
  );

  /// value121156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121156 = SecurityRoleType(
    fhirCode: '121156',
  );

  /// value121157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121157 = SecurityRoleType(
    fhirCode: '121157',
  );

  /// value121158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121158 = SecurityRoleType(
    fhirCode: '121158',
  );

  /// value121160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121160 = SecurityRoleType(
    fhirCode: '121160',
  );

  /// value121161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121161 = SecurityRoleType(
    fhirCode: '121161',
  );

  /// value121162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121162 = SecurityRoleType(
    fhirCode: '121162',
  );

  /// value121163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121163 = SecurityRoleType(
    fhirCode: '121163',
  );

  /// value121165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121165 = SecurityRoleType(
    fhirCode: '121165',
  );

  /// value121166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121166 = SecurityRoleType(
    fhirCode: '121166',
  );

  /// value121167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121167 = SecurityRoleType(
    fhirCode: '121167',
  );

  /// value121168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121168 = SecurityRoleType(
    fhirCode: '121168',
  );

  /// value121169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121169 = SecurityRoleType(
    fhirCode: '121169',
  );

  /// value121171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121171 = SecurityRoleType(
    fhirCode: '121171',
  );

  /// value121172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121172 = SecurityRoleType(
    fhirCode: '121172',
  );

  /// value121173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121173 = SecurityRoleType(
    fhirCode: '121173',
  );

  /// value121174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121174 = SecurityRoleType(
    fhirCode: '121174',
  );

  /// value121180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121180 = SecurityRoleType(
    fhirCode: '121180',
  );

  /// value121181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121181 = SecurityRoleType(
    fhirCode: '121181',
  );

  /// value121190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121190 = SecurityRoleType(
    fhirCode: '121190',
  );

  /// value121191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121191 = SecurityRoleType(
    fhirCode: '121191',
  );

  /// value121192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121192 = SecurityRoleType(
    fhirCode: '121192',
  );

  /// value121193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121193 = SecurityRoleType(
    fhirCode: '121193',
  );

  /// value121194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121194 = SecurityRoleType(
    fhirCode: '121194',
  );

  /// value121195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121195 = SecurityRoleType(
    fhirCode: '121195',
  );

  /// value121196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121196 = SecurityRoleType(
    fhirCode: '121196',
  );

  /// value121197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121197 = SecurityRoleType(
    fhirCode: '121197',
  );

  /// value121198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121198 = SecurityRoleType(
    fhirCode: '121198',
  );

  /// value121200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121200 = SecurityRoleType(
    fhirCode: '121200',
  );

  /// value121201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121201 = SecurityRoleType(
    fhirCode: '121201',
  );

  /// value121202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121202 = SecurityRoleType(
    fhirCode: '121202',
  );

  /// value121206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121206 = SecurityRoleType(
    fhirCode: '121206',
  );

  /// value121207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121207 = SecurityRoleType(
    fhirCode: '121207',
  );

  /// value121208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121208 = SecurityRoleType(
    fhirCode: '121208',
  );

  /// value121210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121210 = SecurityRoleType(
    fhirCode: '121210',
  );

  /// value121211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121211 = SecurityRoleType(
    fhirCode: '121211',
  );

  /// value121213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121213 = SecurityRoleType(
    fhirCode: '121213',
  );

  /// value121214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121214 = SecurityRoleType(
    fhirCode: '121214',
  );

  /// value121216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121216 = SecurityRoleType(
    fhirCode: '121216',
  );

  /// value121217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121217 = SecurityRoleType(
    fhirCode: '121217',
  );

  /// value121218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121218 = SecurityRoleType(
    fhirCode: '121218',
  );

  /// value121219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121219 = SecurityRoleType(
    fhirCode: '121219',
  );

  /// value121220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121220 = SecurityRoleType(
    fhirCode: '121220',
  );

  /// value121221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121221 = SecurityRoleType(
    fhirCode: '121221',
  );

  /// value121222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121222 = SecurityRoleType(
    fhirCode: '121222',
  );

  /// value121230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121230 = SecurityRoleType(
    fhirCode: '121230',
  );

  /// value121231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121231 = SecurityRoleType(
    fhirCode: '121231',
  );

  /// value121232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121232 = SecurityRoleType(
    fhirCode: '121232',
  );

  /// value121233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121233 = SecurityRoleType(
    fhirCode: '121233',
  );

  /// value121242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121242 = SecurityRoleType(
    fhirCode: '121242',
  );

  /// value121243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121243 = SecurityRoleType(
    fhirCode: '121243',
  );

  /// value121244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121244 = SecurityRoleType(
    fhirCode: '121244',
  );

  /// value121290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121290 = SecurityRoleType(
    fhirCode: '121290',
  );

  /// value121291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121291 = SecurityRoleType(
    fhirCode: '121291',
  );

  /// value121301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121301 = SecurityRoleType(
    fhirCode: '121301',
  );

  /// value121302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121302 = SecurityRoleType(
    fhirCode: '121302',
  );

  /// value121303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121303 = SecurityRoleType(
    fhirCode: '121303',
  );

  /// value121304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121304 = SecurityRoleType(
    fhirCode: '121304',
  );

  /// value121305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121305 = SecurityRoleType(
    fhirCode: '121305',
  );

  /// value121306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121306 = SecurityRoleType(
    fhirCode: '121306',
  );

  /// value121307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121307 = SecurityRoleType(
    fhirCode: '121307',
  );

  /// value121311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121311 = SecurityRoleType(
    fhirCode: '121311',
  );

  /// value121312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121312 = SecurityRoleType(
    fhirCode: '121312',
  );

  /// value121313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121313 = SecurityRoleType(
    fhirCode: '121313',
  );

  /// value121314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121314 = SecurityRoleType(
    fhirCode: '121314',
  );

  /// value121315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121315 = SecurityRoleType(
    fhirCode: '121315',
  );

  /// value121316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121316 = SecurityRoleType(
    fhirCode: '121316',
  );

  /// value121317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121317 = SecurityRoleType(
    fhirCode: '121317',
  );

  /// value121318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121318 = SecurityRoleType(
    fhirCode: '121318',
  );

  /// value121320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121320 = SecurityRoleType(
    fhirCode: '121320',
  );

  /// value121321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121321 = SecurityRoleType(
    fhirCode: '121321',
  );

  /// value121322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121322 = SecurityRoleType(
    fhirCode: '121322',
  );

  /// value121323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121323 = SecurityRoleType(
    fhirCode: '121323',
  );

  /// value121324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121324 = SecurityRoleType(
    fhirCode: '121324',
  );

  /// value121325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121325 = SecurityRoleType(
    fhirCode: '121325',
  );

  /// value121326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121326 = SecurityRoleType(
    fhirCode: '121326',
  );

  /// value121327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121327 = SecurityRoleType(
    fhirCode: '121327',
  );

  /// value121328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121328 = SecurityRoleType(
    fhirCode: '121328',
  );

  /// value121329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121329 = SecurityRoleType(
    fhirCode: '121329',
  );

  /// value121330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121330 = SecurityRoleType(
    fhirCode: '121330',
  );

  /// value121331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121331 = SecurityRoleType(
    fhirCode: '121331',
  );

  /// value121332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121332 = SecurityRoleType(
    fhirCode: '121332',
  );

  /// value121333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121333 = SecurityRoleType(
    fhirCode: '121333',
  );

  /// value121334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121334 = SecurityRoleType(
    fhirCode: '121334',
  );

  /// value121335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121335 = SecurityRoleType(
    fhirCode: '121335',
  );

  /// value121338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121338 = SecurityRoleType(
    fhirCode: '121338',
  );

  /// value121339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121339 = SecurityRoleType(
    fhirCode: '121339',
  );

  /// value121340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121340 = SecurityRoleType(
    fhirCode: '121340',
  );

  /// value121341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121341 = SecurityRoleType(
    fhirCode: '121341',
  );

  /// value121342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121342 = SecurityRoleType(
    fhirCode: '121342',
  );

  /// value121346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121346 = SecurityRoleType(
    fhirCode: '121346',
  );

  /// value121347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121347 = SecurityRoleType(
    fhirCode: '121347',
  );

  /// value121348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121348 = SecurityRoleType(
    fhirCode: '121348',
  );

  /// value121349
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121349 = SecurityRoleType(
    fhirCode: '121349',
  );

  /// value121350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121350 = SecurityRoleType(
    fhirCode: '121350',
  );

  /// value121351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121351 = SecurityRoleType(
    fhirCode: '121351',
  );

  /// value121352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121352 = SecurityRoleType(
    fhirCode: '121352',
  );

  /// value121353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121353 = SecurityRoleType(
    fhirCode: '121353',
  );

  /// value121354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121354 = SecurityRoleType(
    fhirCode: '121354',
  );

  /// value121358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121358 = SecurityRoleType(
    fhirCode: '121358',
  );

  /// value121360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121360 = SecurityRoleType(
    fhirCode: '121360',
  );

  /// value121361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121361 = SecurityRoleType(
    fhirCode: '121361',
  );

  /// value121362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121362 = SecurityRoleType(
    fhirCode: '121362',
  );

  /// value121363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121363 = SecurityRoleType(
    fhirCode: '121363',
  );

  /// value121370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121370 = SecurityRoleType(
    fhirCode: '121370',
  );

  /// value121371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121371 = SecurityRoleType(
    fhirCode: '121371',
  );

  /// value121372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121372 = SecurityRoleType(
    fhirCode: '121372',
  );

  /// value121380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121380 = SecurityRoleType(
    fhirCode: '121380',
  );

  /// value121381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121381 = SecurityRoleType(
    fhirCode: '121381',
  );

  /// value121382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121382 = SecurityRoleType(
    fhirCode: '121382',
  );

  /// value121383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121383 = SecurityRoleType(
    fhirCode: '121383',
  );

  /// value121401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121401 = SecurityRoleType(
    fhirCode: '121401',
  );

  /// value121402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121402 = SecurityRoleType(
    fhirCode: '121402',
  );

  /// value121403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121403 = SecurityRoleType(
    fhirCode: '121403',
  );

  /// value121404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121404 = SecurityRoleType(
    fhirCode: '121404',
  );

  /// value121405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121405 = SecurityRoleType(
    fhirCode: '121405',
  );

  /// value121406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121406 = SecurityRoleType(
    fhirCode: '121406',
  );

  /// value121407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121407 = SecurityRoleType(
    fhirCode: '121407',
  );

  /// value121408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121408 = SecurityRoleType(
    fhirCode: '121408',
  );

  /// value121410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121410 = SecurityRoleType(
    fhirCode: '121410',
  );

  /// value121411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121411 = SecurityRoleType(
    fhirCode: '121411',
  );

  /// value121412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121412 = SecurityRoleType(
    fhirCode: '121412',
  );

  /// value121414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121414 = SecurityRoleType(
    fhirCode: '121414',
  );

  /// value121415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121415 = SecurityRoleType(
    fhirCode: '121415',
  );

  /// value121416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121416 = SecurityRoleType(
    fhirCode: '121416',
  );

  /// value121417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121417 = SecurityRoleType(
    fhirCode: '121417',
  );

  /// value121420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121420 = SecurityRoleType(
    fhirCode: '121420',
  );

  /// value121421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121421 = SecurityRoleType(
    fhirCode: '121421',
  );

  /// value121422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121422 = SecurityRoleType(
    fhirCode: '121422',
  );

  /// value121423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121423 = SecurityRoleType(
    fhirCode: '121423',
  );

  /// value121424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121424 = SecurityRoleType(
    fhirCode: '121424',
  );

  /// value121425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121425 = SecurityRoleType(
    fhirCode: '121425',
  );

  /// value121427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121427 = SecurityRoleType(
    fhirCode: '121427',
  );

  /// value121428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121428 = SecurityRoleType(
    fhirCode: '121428',
  );

  /// value121430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121430 = SecurityRoleType(
    fhirCode: '121430',
  );

  /// value121431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121431 = SecurityRoleType(
    fhirCode: '121431',
  );

  /// value121432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121432 = SecurityRoleType(
    fhirCode: '121432',
  );

  /// value121433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121433 = SecurityRoleType(
    fhirCode: '121433',
  );

  /// value121434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121434 = SecurityRoleType(
    fhirCode: '121434',
  );

  /// value121435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121435 = SecurityRoleType(
    fhirCode: '121435',
  );

  /// value121436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121436 = SecurityRoleType(
    fhirCode: '121436',
  );

  /// value121437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121437 = SecurityRoleType(
    fhirCode: '121437',
  );

  /// value121438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121438 = SecurityRoleType(
    fhirCode: '121438',
  );

  /// value121439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121439 = SecurityRoleType(
    fhirCode: '121439',
  );

  /// value121701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121701 = SecurityRoleType(
    fhirCode: '121701',
  );

  /// value121702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121702 = SecurityRoleType(
    fhirCode: '121702',
  );

  /// value121703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121703 = SecurityRoleType(
    fhirCode: '121703',
  );

  /// value121704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121704 = SecurityRoleType(
    fhirCode: '121704',
  );

  /// value121705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121705 = SecurityRoleType(
    fhirCode: '121705',
  );

  /// value121706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121706 = SecurityRoleType(
    fhirCode: '121706',
  );

  /// value121707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121707 = SecurityRoleType(
    fhirCode: '121707',
  );

  /// value121708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121708 = SecurityRoleType(
    fhirCode: '121708',
  );

  /// value121709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121709 = SecurityRoleType(
    fhirCode: '121709',
  );

  /// value121710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121710 = SecurityRoleType(
    fhirCode: '121710',
  );

  /// value121711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121711 = SecurityRoleType(
    fhirCode: '121711',
  );

  /// value121712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121712 = SecurityRoleType(
    fhirCode: '121712',
  );

  /// value121713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121713 = SecurityRoleType(
    fhirCode: '121713',
  );

  /// value121714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121714 = SecurityRoleType(
    fhirCode: '121714',
  );

  /// value121715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121715 = SecurityRoleType(
    fhirCode: '121715',
  );

  /// value121716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121716 = SecurityRoleType(
    fhirCode: '121716',
  );

  /// value121717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121717 = SecurityRoleType(
    fhirCode: '121717',
  );

  /// value121718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121718 = SecurityRoleType(
    fhirCode: '121718',
  );

  /// value121719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121719 = SecurityRoleType(
    fhirCode: '121719',
  );

  /// value121720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121720 = SecurityRoleType(
    fhirCode: '121720',
  );

  /// value121721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121721 = SecurityRoleType(
    fhirCode: '121721',
  );

  /// value121722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121722 = SecurityRoleType(
    fhirCode: '121722',
  );

  /// value121723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121723 = SecurityRoleType(
    fhirCode: '121723',
  );

  /// value121724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121724 = SecurityRoleType(
    fhirCode: '121724',
  );

  /// value121725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121725 = SecurityRoleType(
    fhirCode: '121725',
  );

  /// value121726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121726 = SecurityRoleType(
    fhirCode: '121726',
  );

  /// value121727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121727 = SecurityRoleType(
    fhirCode: '121727',
  );

  /// value121728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121728 = SecurityRoleType(
    fhirCode: '121728',
  );

  /// value121729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121729 = SecurityRoleType(
    fhirCode: '121729',
  );

  /// value121730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121730 = SecurityRoleType(
    fhirCode: '121730',
  );

  /// value121731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121731 = SecurityRoleType(
    fhirCode: '121731',
  );

  /// value121732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121732 = SecurityRoleType(
    fhirCode: '121732',
  );

  /// value121733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121733 = SecurityRoleType(
    fhirCode: '121733',
  );

  /// value121734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121734 = SecurityRoleType(
    fhirCode: '121734',
  );

  /// value121740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value121740 = SecurityRoleType(
    fhirCode: '121740',
  );

  /// value122001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122001 = SecurityRoleType(
    fhirCode: '122001',
  );

  /// value122002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122002 = SecurityRoleType(
    fhirCode: '122002',
  );

  /// value122003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122003 = SecurityRoleType(
    fhirCode: '122003',
  );

  /// value122004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122004 = SecurityRoleType(
    fhirCode: '122004',
  );

  /// value122005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122005 = SecurityRoleType(
    fhirCode: '122005',
  );

  /// value122006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122006 = SecurityRoleType(
    fhirCode: '122006',
  );

  /// value122007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122007 = SecurityRoleType(
    fhirCode: '122007',
  );

  /// value122008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122008 = SecurityRoleType(
    fhirCode: '122008',
  );

  /// value122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122009 = SecurityRoleType(
    fhirCode: '122009',
  );

  /// value122010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122010 = SecurityRoleType(
    fhirCode: '122010',
  );

  /// value122011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122011 = SecurityRoleType(
    fhirCode: '122011',
  );

  /// value122012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122012 = SecurityRoleType(
    fhirCode: '122012',
  );

  /// value122020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122020 = SecurityRoleType(
    fhirCode: '122020',
  );

  /// value122021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122021 = SecurityRoleType(
    fhirCode: '122021',
  );

  /// value122022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122022 = SecurityRoleType(
    fhirCode: '122022',
  );

  /// value122023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122023 = SecurityRoleType(
    fhirCode: '122023',
  );

  /// value122024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122024 = SecurityRoleType(
    fhirCode: '122024',
  );

  /// value122025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122025 = SecurityRoleType(
    fhirCode: '122025',
  );

  /// value122026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122026 = SecurityRoleType(
    fhirCode: '122026',
  );

  /// value122027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122027 = SecurityRoleType(
    fhirCode: '122027',
  );

  /// value122028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122028 = SecurityRoleType(
    fhirCode: '122028',
  );

  /// value122029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122029 = SecurityRoleType(
    fhirCode: '122029',
  );

  /// value122030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122030 = SecurityRoleType(
    fhirCode: '122030',
  );

  /// value122031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122031 = SecurityRoleType(
    fhirCode: '122031',
  );

  /// value122032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122032 = SecurityRoleType(
    fhirCode: '122032',
  );

  /// value122033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122033 = SecurityRoleType(
    fhirCode: '122033',
  );

  /// value122034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122034 = SecurityRoleType(
    fhirCode: '122034',
  );

  /// value122035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122035 = SecurityRoleType(
    fhirCode: '122035',
  );

  /// value122036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122036 = SecurityRoleType(
    fhirCode: '122036',
  );

  /// value122037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122037 = SecurityRoleType(
    fhirCode: '122037',
  );

  /// value122038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122038 = SecurityRoleType(
    fhirCode: '122038',
  );

  /// value122039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122039 = SecurityRoleType(
    fhirCode: '122039',
  );

  /// value122041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122041 = SecurityRoleType(
    fhirCode: '122041',
  );

  /// value122042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122042 = SecurityRoleType(
    fhirCode: '122042',
  );

  /// value122043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122043 = SecurityRoleType(
    fhirCode: '122043',
  );

  /// value122044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122044 = SecurityRoleType(
    fhirCode: '122044',
  );

  /// value122045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122045 = SecurityRoleType(
    fhirCode: '122045',
  );

  /// value122046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122046 = SecurityRoleType(
    fhirCode: '122046',
  );

  /// value122047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122047 = SecurityRoleType(
    fhirCode: '122047',
  );

  /// value122048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122048 = SecurityRoleType(
    fhirCode: '122048',
  );

  /// value122049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122049 = SecurityRoleType(
    fhirCode: '122049',
  );

  /// value122052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122052 = SecurityRoleType(
    fhirCode: '122052',
  );

  /// value122053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122053 = SecurityRoleType(
    fhirCode: '122053',
  );

  /// value122054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122054 = SecurityRoleType(
    fhirCode: '122054',
  );

  /// value122055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122055 = SecurityRoleType(
    fhirCode: '122055',
  );

  /// value122056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122056 = SecurityRoleType(
    fhirCode: '122056',
  );

  /// value122057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122057 = SecurityRoleType(
    fhirCode: '122057',
  );

  /// value122058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122058 = SecurityRoleType(
    fhirCode: '122058',
  );

  /// value122059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122059 = SecurityRoleType(
    fhirCode: '122059',
  );

  /// value122060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122060 = SecurityRoleType(
    fhirCode: '122060',
  );

  /// value122061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122061 = SecurityRoleType(
    fhirCode: '122061',
  );

  /// value122062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122062 = SecurityRoleType(
    fhirCode: '122062',
  );

  /// value122072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122072 = SecurityRoleType(
    fhirCode: '122072',
  );

  /// value122073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122073 = SecurityRoleType(
    fhirCode: '122073',
  );

  /// value122075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122075 = SecurityRoleType(
    fhirCode: '122075',
  );

  /// value122076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122076 = SecurityRoleType(
    fhirCode: '122076',
  );

  /// value122077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122077 = SecurityRoleType(
    fhirCode: '122077',
  );

  /// value122078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122078 = SecurityRoleType(
    fhirCode: '122078',
  );

  /// value122079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122079 = SecurityRoleType(
    fhirCode: '122079',
  );

  /// value122081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122081 = SecurityRoleType(
    fhirCode: '122081',
  );

  /// value122082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122082 = SecurityRoleType(
    fhirCode: '122082',
  );

  /// value122083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122083 = SecurityRoleType(
    fhirCode: '122083',
  );

  /// value122084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122084 = SecurityRoleType(
    fhirCode: '122084',
  );

  /// value122085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122085 = SecurityRoleType(
    fhirCode: '122085',
  );

  /// value122086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122086 = SecurityRoleType(
    fhirCode: '122086',
  );

  /// value122087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122087 = SecurityRoleType(
    fhirCode: '122087',
  );

  /// value122088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122088 = SecurityRoleType(
    fhirCode: '122088',
  );

  /// value122089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122089 = SecurityRoleType(
    fhirCode: '122089',
  );

  /// value122090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122090 = SecurityRoleType(
    fhirCode: '122090',
  );

  /// value122091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122091 = SecurityRoleType(
    fhirCode: '122091',
  );

  /// value122092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122092 = SecurityRoleType(
    fhirCode: '122092',
  );

  /// value122093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122093 = SecurityRoleType(
    fhirCode: '122093',
  );

  /// value122094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122094 = SecurityRoleType(
    fhirCode: '122094',
  );

  /// value122095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122095 = SecurityRoleType(
    fhirCode: '122095',
  );

  /// value122096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122096 = SecurityRoleType(
    fhirCode: '122096',
  );

  /// value122097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122097 = SecurityRoleType(
    fhirCode: '122097',
  );

  /// value122098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122098 = SecurityRoleType(
    fhirCode: '122098',
  );

  /// value122099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122099 = SecurityRoleType(
    fhirCode: '122099',
  );

  /// value122101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122101 = SecurityRoleType(
    fhirCode: '122101',
  );

  /// value122102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122102 = SecurityRoleType(
    fhirCode: '122102',
  );

  /// value122103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122103 = SecurityRoleType(
    fhirCode: '122103',
  );

  /// value122104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122104 = SecurityRoleType(
    fhirCode: '122104',
  );

  /// value122105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122105 = SecurityRoleType(
    fhirCode: '122105',
  );

  /// value122106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122106 = SecurityRoleType(
    fhirCode: '122106',
  );

  /// value122107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122107 = SecurityRoleType(
    fhirCode: '122107',
  );

  /// value122108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122108 = SecurityRoleType(
    fhirCode: '122108',
  );

  /// value122109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122109 = SecurityRoleType(
    fhirCode: '122109',
  );

  /// value122110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122110 = SecurityRoleType(
    fhirCode: '122110',
  );

  /// value122111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122111 = SecurityRoleType(
    fhirCode: '122111',
  );

  /// value122112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122112 = SecurityRoleType(
    fhirCode: '122112',
  );

  /// value122113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122113 = SecurityRoleType(
    fhirCode: '122113',
  );

  /// value122114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122114 = SecurityRoleType(
    fhirCode: '122114',
  );

  /// value122120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122120 = SecurityRoleType(
    fhirCode: '122120',
  );

  /// value122121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122121 = SecurityRoleType(
    fhirCode: '122121',
  );

  /// value122122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122122 = SecurityRoleType(
    fhirCode: '122122',
  );

  /// value122123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122123 = SecurityRoleType(
    fhirCode: '122123',
  );

  /// value122124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122124 = SecurityRoleType(
    fhirCode: '122124',
  );

  /// value122125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122125 = SecurityRoleType(
    fhirCode: '122125',
  );

  /// value122126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122126 = SecurityRoleType(
    fhirCode: '122126',
  );

  /// value122127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122127 = SecurityRoleType(
    fhirCode: '122127',
  );

  /// value122128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122128 = SecurityRoleType(
    fhirCode: '122128',
  );

  /// value122129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122129 = SecurityRoleType(
    fhirCode: '122129',
  );

  /// value122130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122130 = SecurityRoleType(
    fhirCode: '122130',
  );

  /// value122131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122131 = SecurityRoleType(
    fhirCode: '122131',
  );

  /// value122132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122132 = SecurityRoleType(
    fhirCode: '122132',
  );

  /// value122133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122133 = SecurityRoleType(
    fhirCode: '122133',
  );

  /// value122134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122134 = SecurityRoleType(
    fhirCode: '122134',
  );

  /// value122138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122138 = SecurityRoleType(
    fhirCode: '122138',
  );

  /// value122139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122139 = SecurityRoleType(
    fhirCode: '122139',
  );

  /// value122140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122140 = SecurityRoleType(
    fhirCode: '122140',
  );

  /// value122141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122141 = SecurityRoleType(
    fhirCode: '122141',
  );

  /// value122142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122142 = SecurityRoleType(
    fhirCode: '122142',
  );

  /// value122143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122143 = SecurityRoleType(
    fhirCode: '122143',
  );

  /// value122144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122144 = SecurityRoleType(
    fhirCode: '122144',
  );

  /// value122145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122145 = SecurityRoleType(
    fhirCode: '122145',
  );

  /// value122146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122146 = SecurityRoleType(
    fhirCode: '122146',
  );

  /// value122147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122147 = SecurityRoleType(
    fhirCode: '122147',
  );

  /// value122148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122148 = SecurityRoleType(
    fhirCode: '122148',
  );

  /// value122149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122149 = SecurityRoleType(
    fhirCode: '122149',
  );

  /// value122150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122150 = SecurityRoleType(
    fhirCode: '122150',
  );

  /// value122151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122151 = SecurityRoleType(
    fhirCode: '122151',
  );

  /// value122152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122152 = SecurityRoleType(
    fhirCode: '122152',
  );

  /// value122153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122153 = SecurityRoleType(
    fhirCode: '122153',
  );

  /// value122154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122154 = SecurityRoleType(
    fhirCode: '122154',
  );

  /// value122157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122157 = SecurityRoleType(
    fhirCode: '122157',
  );

  /// value122158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122158 = SecurityRoleType(
    fhirCode: '122158',
  );

  /// value122159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122159 = SecurityRoleType(
    fhirCode: '122159',
  );

  /// value122160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122160 = SecurityRoleType(
    fhirCode: '122160',
  );

  /// value122161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122161 = SecurityRoleType(
    fhirCode: '122161',
  );

  /// value122162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122162 = SecurityRoleType(
    fhirCode: '122162',
  );

  /// value122163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122163 = SecurityRoleType(
    fhirCode: '122163',
  );

  /// value122164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122164 = SecurityRoleType(
    fhirCode: '122164',
  );

  /// value122165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122165 = SecurityRoleType(
    fhirCode: '122165',
  );

  /// value122166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122166 = SecurityRoleType(
    fhirCode: '122166',
  );

  /// value122167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122167 = SecurityRoleType(
    fhirCode: '122167',
  );

  /// value122170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122170 = SecurityRoleType(
    fhirCode: '122170',
  );

  /// value122171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122171 = SecurityRoleType(
    fhirCode: '122171',
  );

  /// value122172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122172 = SecurityRoleType(
    fhirCode: '122172',
  );

  /// value122173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122173 = SecurityRoleType(
    fhirCode: '122173',
  );

  /// value122175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122175 = SecurityRoleType(
    fhirCode: '122175',
  );

  /// value122176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122176 = SecurityRoleType(
    fhirCode: '122176',
  );

  /// value122177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122177 = SecurityRoleType(
    fhirCode: '122177',
  );

  /// value122178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122178 = SecurityRoleType(
    fhirCode: '122178',
  );

  /// value122179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122179 = SecurityRoleType(
    fhirCode: '122179',
  );

  /// value122180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122180 = SecurityRoleType(
    fhirCode: '122180',
  );

  /// value122181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122181 = SecurityRoleType(
    fhirCode: '122181',
  );

  /// value122182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122182 = SecurityRoleType(
    fhirCode: '122182',
  );

  /// value122183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122183 = SecurityRoleType(
    fhirCode: '122183',
  );

  /// value122185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122185 = SecurityRoleType(
    fhirCode: '122185',
  );

  /// value122187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122187 = SecurityRoleType(
    fhirCode: '122187',
  );

  /// value122188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122188 = SecurityRoleType(
    fhirCode: '122188',
  );

  /// value122189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122189 = SecurityRoleType(
    fhirCode: '122189',
  );

  /// value122190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122190 = SecurityRoleType(
    fhirCode: '122190',
  );

  /// value122191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122191 = SecurityRoleType(
    fhirCode: '122191',
  );

  /// value122192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122192 = SecurityRoleType(
    fhirCode: '122192',
  );

  /// value122193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122193 = SecurityRoleType(
    fhirCode: '122193',
  );

  /// value122194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122194 = SecurityRoleType(
    fhirCode: '122194',
  );

  /// value122195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122195 = SecurityRoleType(
    fhirCode: '122195',
  );

  /// value122196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122196 = SecurityRoleType(
    fhirCode: '122196',
  );

  /// value122197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122197 = SecurityRoleType(
    fhirCode: '122197',
  );

  /// value122198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122198 = SecurityRoleType(
    fhirCode: '122198',
  );

  /// value122199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122199 = SecurityRoleType(
    fhirCode: '122199',
  );

  /// value122201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122201 = SecurityRoleType(
    fhirCode: '122201',
  );

  /// value122202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122202 = SecurityRoleType(
    fhirCode: '122202',
  );

  /// value122203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122203 = SecurityRoleType(
    fhirCode: '122203',
  );

  /// value122204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122204 = SecurityRoleType(
    fhirCode: '122204',
  );

  /// value122205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122205 = SecurityRoleType(
    fhirCode: '122205',
  );

  /// value122206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122206 = SecurityRoleType(
    fhirCode: '122206',
  );

  /// value122207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122207 = SecurityRoleType(
    fhirCode: '122207',
  );

  /// value122208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122208 = SecurityRoleType(
    fhirCode: '122208',
  );

  /// value122209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122209 = SecurityRoleType(
    fhirCode: '122209',
  );

  /// value122210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122210 = SecurityRoleType(
    fhirCode: '122210',
  );

  /// value122211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122211 = SecurityRoleType(
    fhirCode: '122211',
  );

  /// value122212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122212 = SecurityRoleType(
    fhirCode: '122212',
  );

  /// value122213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122213 = SecurityRoleType(
    fhirCode: '122213',
  );

  /// value122214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122214 = SecurityRoleType(
    fhirCode: '122214',
  );

  /// value122215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122215 = SecurityRoleType(
    fhirCode: '122215',
  );

  /// value122216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122216 = SecurityRoleType(
    fhirCode: '122216',
  );

  /// value122217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122217 = SecurityRoleType(
    fhirCode: '122217',
  );

  /// value122218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122218 = SecurityRoleType(
    fhirCode: '122218',
  );

  /// value122219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122219 = SecurityRoleType(
    fhirCode: '122219',
  );

  /// value122220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122220 = SecurityRoleType(
    fhirCode: '122220',
  );

  /// value122221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122221 = SecurityRoleType(
    fhirCode: '122221',
  );

  /// value122222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122222 = SecurityRoleType(
    fhirCode: '122222',
  );

  /// value122223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122223 = SecurityRoleType(
    fhirCode: '122223',
  );

  /// value122224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122224 = SecurityRoleType(
    fhirCode: '122224',
  );

  /// value122225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122225 = SecurityRoleType(
    fhirCode: '122225',
  );

  /// value122227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122227 = SecurityRoleType(
    fhirCode: '122227',
  );

  /// value122228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122228 = SecurityRoleType(
    fhirCode: '122228',
  );

  /// value122229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122229 = SecurityRoleType(
    fhirCode: '122229',
  );

  /// value122230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122230 = SecurityRoleType(
    fhirCode: '122230',
  );

  /// value122231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122231 = SecurityRoleType(
    fhirCode: '122231',
  );

  /// value122232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122232 = SecurityRoleType(
    fhirCode: '122232',
  );

  /// value122233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122233 = SecurityRoleType(
    fhirCode: '122233',
  );

  /// value122234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122234 = SecurityRoleType(
    fhirCode: '122234',
  );

  /// value122235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122235 = SecurityRoleType(
    fhirCode: '122235',
  );

  /// value122236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122236 = SecurityRoleType(
    fhirCode: '122236',
  );

  /// value122237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122237 = SecurityRoleType(
    fhirCode: '122237',
  );

  /// value122238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122238 = SecurityRoleType(
    fhirCode: '122238',
  );

  /// value122239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122239 = SecurityRoleType(
    fhirCode: '122239',
  );

  /// value122240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122240 = SecurityRoleType(
    fhirCode: '122240',
  );

  /// value122241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122241 = SecurityRoleType(
    fhirCode: '122241',
  );

  /// value122242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122242 = SecurityRoleType(
    fhirCode: '122242',
  );

  /// value122243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122243 = SecurityRoleType(
    fhirCode: '122243',
  );

  /// value122244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122244 = SecurityRoleType(
    fhirCode: '122244',
  );

  /// value122245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122245 = SecurityRoleType(
    fhirCode: '122245',
  );

  /// value122246
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122246 = SecurityRoleType(
    fhirCode: '122246',
  );

  /// value122247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122247 = SecurityRoleType(
    fhirCode: '122247',
  );

  /// value122248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122248 = SecurityRoleType(
    fhirCode: '122248',
  );

  /// value122249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122249 = SecurityRoleType(
    fhirCode: '122249',
  );

  /// value122250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122250 = SecurityRoleType(
    fhirCode: '122250',
  );

  /// value122251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122251 = SecurityRoleType(
    fhirCode: '122251',
  );

  /// value122252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122252 = SecurityRoleType(
    fhirCode: '122252',
  );

  /// value122253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122253 = SecurityRoleType(
    fhirCode: '122253',
  );

  /// value122254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122254 = SecurityRoleType(
    fhirCode: '122254',
  );

  /// value122255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122255 = SecurityRoleType(
    fhirCode: '122255',
  );

  /// value122256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122256 = SecurityRoleType(
    fhirCode: '122256',
  );

  /// value122257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122257 = SecurityRoleType(
    fhirCode: '122257',
  );

  /// value122258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122258 = SecurityRoleType(
    fhirCode: '122258',
  );

  /// value122259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122259 = SecurityRoleType(
    fhirCode: '122259',
  );

  /// value122260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122260 = SecurityRoleType(
    fhirCode: '122260',
  );

  /// value122261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122261 = SecurityRoleType(
    fhirCode: '122261',
  );

  /// value122262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122262 = SecurityRoleType(
    fhirCode: '122262',
  );

  /// value122263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122263 = SecurityRoleType(
    fhirCode: '122263',
  );

  /// value122265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122265 = SecurityRoleType(
    fhirCode: '122265',
  );

  /// value122266
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122266 = SecurityRoleType(
    fhirCode: '122266',
  );

  /// value122267
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122267 = SecurityRoleType(
    fhirCode: '122267',
  );

  /// value122268
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122268 = SecurityRoleType(
    fhirCode: '122268',
  );

  /// value122269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122269 = SecurityRoleType(
    fhirCode: '122269',
  );

  /// value122270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122270 = SecurityRoleType(
    fhirCode: '122270',
  );

  /// value122271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122271 = SecurityRoleType(
    fhirCode: '122271',
  );

  /// value122272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122272 = SecurityRoleType(
    fhirCode: '122272',
  );

  /// value122273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122273 = SecurityRoleType(
    fhirCode: '122273',
  );

  /// value122274
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122274 = SecurityRoleType(
    fhirCode: '122274',
  );

  /// value122275
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122275 = SecurityRoleType(
    fhirCode: '122275',
  );

  /// value122276
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122276 = SecurityRoleType(
    fhirCode: '122276',
  );

  /// value122277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122277 = SecurityRoleType(
    fhirCode: '122277',
  );

  /// value122278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122278 = SecurityRoleType(
    fhirCode: '122278',
  );

  /// value122279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122279 = SecurityRoleType(
    fhirCode: '122279',
  );

  /// value122281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122281 = SecurityRoleType(
    fhirCode: '122281',
  );

  /// value122282
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122282 = SecurityRoleType(
    fhirCode: '122282',
  );

  /// value122283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122283 = SecurityRoleType(
    fhirCode: '122283',
  );

  /// value122288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122288 = SecurityRoleType(
    fhirCode: '122288',
  );

  /// value122291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122291 = SecurityRoleType(
    fhirCode: '122291',
  );

  /// value122292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122292 = SecurityRoleType(
    fhirCode: '122292',
  );

  /// value122301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122301 = SecurityRoleType(
    fhirCode: '122301',
  );

  /// value122302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122302 = SecurityRoleType(
    fhirCode: '122302',
  );

  /// value122303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122303 = SecurityRoleType(
    fhirCode: '122303',
  );

  /// value122304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122304 = SecurityRoleType(
    fhirCode: '122304',
  );

  /// value122305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122305 = SecurityRoleType(
    fhirCode: '122305',
  );

  /// value122306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122306 = SecurityRoleType(
    fhirCode: '122306',
  );

  /// value122307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122307 = SecurityRoleType(
    fhirCode: '122307',
  );

  /// value122308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122308 = SecurityRoleType(
    fhirCode: '122308',
  );

  /// value122309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122309 = SecurityRoleType(
    fhirCode: '122309',
  );

  /// value122310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122310 = SecurityRoleType(
    fhirCode: '122310',
  );

  /// value122311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122311 = SecurityRoleType(
    fhirCode: '122311',
  );

  /// value122312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122312 = SecurityRoleType(
    fhirCode: '122312',
  );

  /// value122313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122313 = SecurityRoleType(
    fhirCode: '122313',
  );

  /// value122319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122319 = SecurityRoleType(
    fhirCode: '122319',
  );

  /// value122320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122320 = SecurityRoleType(
    fhirCode: '122320',
  );

  /// value122321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122321 = SecurityRoleType(
    fhirCode: '122321',
  );

  /// value122322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122322 = SecurityRoleType(
    fhirCode: '122322',
  );

  /// value122325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122325 = SecurityRoleType(
    fhirCode: '122325',
  );

  /// value122330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122330 = SecurityRoleType(
    fhirCode: '122330',
  );

  /// value122331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122331 = SecurityRoleType(
    fhirCode: '122331',
  );

  /// value122332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122332 = SecurityRoleType(
    fhirCode: '122332',
  );

  /// value122333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122333 = SecurityRoleType(
    fhirCode: '122333',
  );

  /// value122334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122334 = SecurityRoleType(
    fhirCode: '122334',
  );

  /// value122335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122335 = SecurityRoleType(
    fhirCode: '122335',
  );

  /// value122336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122336 = SecurityRoleType(
    fhirCode: '122336',
  );

  /// value122337
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122337 = SecurityRoleType(
    fhirCode: '122337',
  );

  /// value122339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122339 = SecurityRoleType(
    fhirCode: '122339',
  );

  /// value122340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122340 = SecurityRoleType(
    fhirCode: '122340',
  );

  /// value122341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122341 = SecurityRoleType(
    fhirCode: '122341',
  );

  /// value122343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122343 = SecurityRoleType(
    fhirCode: '122343',
  );

  /// value122344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122344 = SecurityRoleType(
    fhirCode: '122344',
  );

  /// value122345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122345 = SecurityRoleType(
    fhirCode: '122345',
  );

  /// value122346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122346 = SecurityRoleType(
    fhirCode: '122346',
  );

  /// value122347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122347 = SecurityRoleType(
    fhirCode: '122347',
  );

  /// value122348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122348 = SecurityRoleType(
    fhirCode: '122348',
  );

  /// value122350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122350 = SecurityRoleType(
    fhirCode: '122350',
  );

  /// value122351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122351 = SecurityRoleType(
    fhirCode: '122351',
  );

  /// value122352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122352 = SecurityRoleType(
    fhirCode: '122352',
  );

  /// value122354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122354 = SecurityRoleType(
    fhirCode: '122354',
  );

  /// value122355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122355 = SecurityRoleType(
    fhirCode: '122355',
  );

  /// value122356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122356 = SecurityRoleType(
    fhirCode: '122356',
  );

  /// value122357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122357 = SecurityRoleType(
    fhirCode: '122357',
  );

  /// value122360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122360 = SecurityRoleType(
    fhirCode: '122360',
  );

  /// value122361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122361 = SecurityRoleType(
    fhirCode: '122361',
  );

  /// value122363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122363 = SecurityRoleType(
    fhirCode: '122363',
  );

  /// value122364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122364 = SecurityRoleType(
    fhirCode: '122364',
  );

  /// value122367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122367 = SecurityRoleType(
    fhirCode: '122367',
  );

  /// value122368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122368 = SecurityRoleType(
    fhirCode: '122368',
  );

  /// value122369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122369 = SecurityRoleType(
    fhirCode: '122369',
  );

  /// value122370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122370 = SecurityRoleType(
    fhirCode: '122370',
  );

  /// value122371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122371 = SecurityRoleType(
    fhirCode: '122371',
  );

  /// value122372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122372 = SecurityRoleType(
    fhirCode: '122372',
  );

  /// value122374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122374 = SecurityRoleType(
    fhirCode: '122374',
  );

  /// value122375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122375 = SecurityRoleType(
    fhirCode: '122375',
  );

  /// value122376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122376 = SecurityRoleType(
    fhirCode: '122376',
  );

  /// value122380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122380 = SecurityRoleType(
    fhirCode: '122380',
  );

  /// value122381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122381 = SecurityRoleType(
    fhirCode: '122381',
  );

  /// value122382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122382 = SecurityRoleType(
    fhirCode: '122382',
  );

  /// value122383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122383 = SecurityRoleType(
    fhirCode: '122383',
  );

  /// value122384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122384 = SecurityRoleType(
    fhirCode: '122384',
  );

  /// value122385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122385 = SecurityRoleType(
    fhirCode: '122385',
  );

  /// value122386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122386 = SecurityRoleType(
    fhirCode: '122386',
  );

  /// value122387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122387 = SecurityRoleType(
    fhirCode: '122387',
  );

  /// value122388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122388 = SecurityRoleType(
    fhirCode: '122388',
  );

  /// value122389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122389 = SecurityRoleType(
    fhirCode: '122389',
  );

  /// value122390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122390 = SecurityRoleType(
    fhirCode: '122390',
  );

  /// value122391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122391 = SecurityRoleType(
    fhirCode: '122391',
  );

  /// value122393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122393 = SecurityRoleType(
    fhirCode: '122393',
  );

  /// value122394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122394 = SecurityRoleType(
    fhirCode: '122394',
  );

  /// value122395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122395 = SecurityRoleType(
    fhirCode: '122395',
  );

  /// value122398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122398 = SecurityRoleType(
    fhirCode: '122398',
  );

  /// value122399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122399 = SecurityRoleType(
    fhirCode: '122399',
  );

  /// value122400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122400 = SecurityRoleType(
    fhirCode: '122400',
  );

  /// value122401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122401 = SecurityRoleType(
    fhirCode: '122401',
  );

  /// value122402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122402 = SecurityRoleType(
    fhirCode: '122402',
  );

  /// value122403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122403 = SecurityRoleType(
    fhirCode: '122403',
  );

  /// value122404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122404 = SecurityRoleType(
    fhirCode: '122404',
  );

  /// value122405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122405 = SecurityRoleType(
    fhirCode: '122405',
  );

  /// value122406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122406 = SecurityRoleType(
    fhirCode: '122406',
  );

  /// value122407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122407 = SecurityRoleType(
    fhirCode: '122407',
  );

  /// value122408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122408 = SecurityRoleType(
    fhirCode: '122408',
  );

  /// value122410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122410 = SecurityRoleType(
    fhirCode: '122410',
  );

  /// value122411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122411 = SecurityRoleType(
    fhirCode: '122411',
  );

  /// value122417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122417 = SecurityRoleType(
    fhirCode: '122417',
  );

  /// value122421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122421 = SecurityRoleType(
    fhirCode: '122421',
  );

  /// value122422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122422 = SecurityRoleType(
    fhirCode: '122422',
  );

  /// value122423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122423 = SecurityRoleType(
    fhirCode: '122423',
  );

  /// value122428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122428 = SecurityRoleType(
    fhirCode: '122428',
  );

  /// value122429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122429 = SecurityRoleType(
    fhirCode: '122429',
  );

  /// value122430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122430 = SecurityRoleType(
    fhirCode: '122430',
  );

  /// value122431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122431 = SecurityRoleType(
    fhirCode: '122431',
  );

  /// value122432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122432 = SecurityRoleType(
    fhirCode: '122432',
  );

  /// value122433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122433 = SecurityRoleType(
    fhirCode: '122433',
  );

  /// value122434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122434 = SecurityRoleType(
    fhirCode: '122434',
  );

  /// value122435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122435 = SecurityRoleType(
    fhirCode: '122435',
  );

  /// value122438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122438 = SecurityRoleType(
    fhirCode: '122438',
  );

  /// value122445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122445 = SecurityRoleType(
    fhirCode: '122445',
  );

  /// value122446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122446 = SecurityRoleType(
    fhirCode: '122446',
  );

  /// value122447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122447 = SecurityRoleType(
    fhirCode: '122447',
  );

  /// value122448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122448 = SecurityRoleType(
    fhirCode: '122448',
  );

  /// value122449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122449 = SecurityRoleType(
    fhirCode: '122449',
  );

  /// value122450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122450 = SecurityRoleType(
    fhirCode: '122450',
  );

  /// value122451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122451 = SecurityRoleType(
    fhirCode: '122451',
  );

  /// value122452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122452 = SecurityRoleType(
    fhirCode: '122452',
  );

  /// value122453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122453 = SecurityRoleType(
    fhirCode: '122453',
  );

  /// value122459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122459 = SecurityRoleType(
    fhirCode: '122459',
  );

  /// value122461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122461 = SecurityRoleType(
    fhirCode: '122461',
  );

  /// value122464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122464 = SecurityRoleType(
    fhirCode: '122464',
  );

  /// value122465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122465 = SecurityRoleType(
    fhirCode: '122465',
  );

  /// value122466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122466 = SecurityRoleType(
    fhirCode: '122466',
  );

  /// value122467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122467 = SecurityRoleType(
    fhirCode: '122467',
  );

  /// value122468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122468 = SecurityRoleType(
    fhirCode: '122468',
  );

  /// value122469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122469 = SecurityRoleType(
    fhirCode: '122469',
  );

  /// value122470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122470 = SecurityRoleType(
    fhirCode: '122470',
  );

  /// value122471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122471 = SecurityRoleType(
    fhirCode: '122471',
  );

  /// value122472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122472 = SecurityRoleType(
    fhirCode: '122472',
  );

  /// value122473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122473 = SecurityRoleType(
    fhirCode: '122473',
  );

  /// value122474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122474 = SecurityRoleType(
    fhirCode: '122474',
  );

  /// value122475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122475 = SecurityRoleType(
    fhirCode: '122475',
  );

  /// value122476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122476 = SecurityRoleType(
    fhirCode: '122476',
  );

  /// value122477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122477 = SecurityRoleType(
    fhirCode: '122477',
  );

  /// value122480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122480 = SecurityRoleType(
    fhirCode: '122480',
  );

  /// value122481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122481 = SecurityRoleType(
    fhirCode: '122481',
  );

  /// value122482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122482 = SecurityRoleType(
    fhirCode: '122482',
  );

  /// value122485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122485 = SecurityRoleType(
    fhirCode: '122485',
  );

  /// value122486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122486 = SecurityRoleType(
    fhirCode: '122486',
  );

  /// value122487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122487 = SecurityRoleType(
    fhirCode: '122487',
  );

  /// value122488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122488 = SecurityRoleType(
    fhirCode: '122488',
  );

  /// value122489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122489 = SecurityRoleType(
    fhirCode: '122489',
  );

  /// value122490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122490 = SecurityRoleType(
    fhirCode: '122490',
  );

  /// value122491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122491 = SecurityRoleType(
    fhirCode: '122491',
  );

  /// value122493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122493 = SecurityRoleType(
    fhirCode: '122493',
  );

  /// value122495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122495 = SecurityRoleType(
    fhirCode: '122495',
  );

  /// value122496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122496 = SecurityRoleType(
    fhirCode: '122496',
  );

  /// value122497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122497 = SecurityRoleType(
    fhirCode: '122497',
  );

  /// value122498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122498 = SecurityRoleType(
    fhirCode: '122498',
  );

  /// value122499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122499 = SecurityRoleType(
    fhirCode: '122499',
  );

  /// value122501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122501 = SecurityRoleType(
    fhirCode: '122501',
  );

  /// value122502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122502 = SecurityRoleType(
    fhirCode: '122502',
  );

  /// value122503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122503 = SecurityRoleType(
    fhirCode: '122503',
  );

  /// value122505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122505 = SecurityRoleType(
    fhirCode: '122505',
  );

  /// value122507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122507 = SecurityRoleType(
    fhirCode: '122507',
  );

  /// value122508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122508 = SecurityRoleType(
    fhirCode: '122508',
  );

  /// value122509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122509 = SecurityRoleType(
    fhirCode: '122509',
  );

  /// value122510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122510 = SecurityRoleType(
    fhirCode: '122510',
  );

  /// value122511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122511 = SecurityRoleType(
    fhirCode: '122511',
  );

  /// value122516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122516 = SecurityRoleType(
    fhirCode: '122516',
  );

  /// value122517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122517 = SecurityRoleType(
    fhirCode: '122517',
  );

  /// value122528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122528 = SecurityRoleType(
    fhirCode: '122528',
  );

  /// value122529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122529 = SecurityRoleType(
    fhirCode: '122529',
  );

  /// value122542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122542 = SecurityRoleType(
    fhirCode: '122542',
  );

  /// value122544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122544 = SecurityRoleType(
    fhirCode: '122544',
  );

  /// value122545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122545 = SecurityRoleType(
    fhirCode: '122545',
  );

  /// value122546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122546 = SecurityRoleType(
    fhirCode: '122546',
  );

  /// value122547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122547 = SecurityRoleType(
    fhirCode: '122547',
  );

  /// value122548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122548 = SecurityRoleType(
    fhirCode: '122548',
  );

  /// value122549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122549 = SecurityRoleType(
    fhirCode: '122549',
  );

  /// value122550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122550 = SecurityRoleType(
    fhirCode: '122550',
  );

  /// value122551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122551 = SecurityRoleType(
    fhirCode: '122551',
  );

  /// value122554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122554 = SecurityRoleType(
    fhirCode: '122554',
  );

  /// value122555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122555 = SecurityRoleType(
    fhirCode: '122555',
  );

  /// value122558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122558 = SecurityRoleType(
    fhirCode: '122558',
  );

  /// value122559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122559 = SecurityRoleType(
    fhirCode: '122559',
  );

  /// value122560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122560 = SecurityRoleType(
    fhirCode: '122560',
  );

  /// value122562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122562 = SecurityRoleType(
    fhirCode: '122562',
  );

  /// value122563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122563 = SecurityRoleType(
    fhirCode: '122563',
  );

  /// value122564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122564 = SecurityRoleType(
    fhirCode: '122564',
  );

  /// value122565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122565 = SecurityRoleType(
    fhirCode: '122565',
  );

  /// value122566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122566 = SecurityRoleType(
    fhirCode: '122566',
  );

  /// value122572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122572 = SecurityRoleType(
    fhirCode: '122572',
  );

  /// value122574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122574 = SecurityRoleType(
    fhirCode: '122574',
  );

  /// value122575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122575 = SecurityRoleType(
    fhirCode: '122575',
  );

  /// value122582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122582 = SecurityRoleType(
    fhirCode: '122582',
  );

  /// value122600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122600 = SecurityRoleType(
    fhirCode: '122600',
  );

  /// value122601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122601 = SecurityRoleType(
    fhirCode: '122601',
  );

  /// value122602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122602 = SecurityRoleType(
    fhirCode: '122602',
  );

  /// value122603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122603 = SecurityRoleType(
    fhirCode: '122603',
  );

  /// value122604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122604 = SecurityRoleType(
    fhirCode: '122604',
  );

  /// value122605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122605 = SecurityRoleType(
    fhirCode: '122605',
  );

  /// value122606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122606 = SecurityRoleType(
    fhirCode: '122606',
  );

  /// value122607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122607 = SecurityRoleType(
    fhirCode: '122607',
  );

  /// value122608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122608 = SecurityRoleType(
    fhirCode: '122608',
  );

  /// value122609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122609 = SecurityRoleType(
    fhirCode: '122609',
  );

  /// value122611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122611 = SecurityRoleType(
    fhirCode: '122611',
  );

  /// value122612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122612 = SecurityRoleType(
    fhirCode: '122612',
  );

  /// value122616
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122616 = SecurityRoleType(
    fhirCode: '122616',
  );

  /// value122617
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122617 = SecurityRoleType(
    fhirCode: '122617',
  );

  /// value122618
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122618 = SecurityRoleType(
    fhirCode: '122618',
  );

  /// value122619
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122619 = SecurityRoleType(
    fhirCode: '122619',
  );

  /// value122620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122620 = SecurityRoleType(
    fhirCode: '122620',
  );

  /// value122621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122621 = SecurityRoleType(
    fhirCode: '122621',
  );

  /// value122624
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122624 = SecurityRoleType(
    fhirCode: '122624',
  );

  /// value122627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122627 = SecurityRoleType(
    fhirCode: '122627',
  );

  /// value122628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122628 = SecurityRoleType(
    fhirCode: '122628',
  );

  /// value122631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122631 = SecurityRoleType(
    fhirCode: '122631',
  );

  /// value122633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122633 = SecurityRoleType(
    fhirCode: '122633',
  );

  /// value122634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122634 = SecurityRoleType(
    fhirCode: '122634',
  );

  /// value122635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122635 = SecurityRoleType(
    fhirCode: '122635',
  );

  /// value122636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122636 = SecurityRoleType(
    fhirCode: '122636',
  );

  /// value122637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122637 = SecurityRoleType(
    fhirCode: '122637',
  );

  /// value122638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122638 = SecurityRoleType(
    fhirCode: '122638',
  );

  /// value122639
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122639 = SecurityRoleType(
    fhirCode: '122639',
  );

  /// value122640
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122640 = SecurityRoleType(
    fhirCode: '122640',
  );

  /// value122642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122642 = SecurityRoleType(
    fhirCode: '122642',
  );

  /// value122643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122643 = SecurityRoleType(
    fhirCode: '122643',
  );

  /// value122645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122645 = SecurityRoleType(
    fhirCode: '122645',
  );

  /// value122650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122650 = SecurityRoleType(
    fhirCode: '122650',
  );

  /// value122651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122651 = SecurityRoleType(
    fhirCode: '122651',
  );

  /// value122652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122652 = SecurityRoleType(
    fhirCode: '122652',
  );

  /// value122655
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122655 = SecurityRoleType(
    fhirCode: '122655',
  );

  /// value122656
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122656 = SecurityRoleType(
    fhirCode: '122656',
  );

  /// value122657
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122657 = SecurityRoleType(
    fhirCode: '122657',
  );

  /// value122658
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122658 = SecurityRoleType(
    fhirCode: '122658',
  );

  /// value122659
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122659 = SecurityRoleType(
    fhirCode: '122659',
  );

  /// value122660
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122660 = SecurityRoleType(
    fhirCode: '122660',
  );

  /// value122661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122661 = SecurityRoleType(
    fhirCode: '122661',
  );

  /// value122664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122664 = SecurityRoleType(
    fhirCode: '122664',
  );

  /// value122665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122665 = SecurityRoleType(
    fhirCode: '122665',
  );

  /// value122666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122666 = SecurityRoleType(
    fhirCode: '122666',
  );

  /// value122667
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122667 = SecurityRoleType(
    fhirCode: '122667',
  );

  /// value122668
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122668 = SecurityRoleType(
    fhirCode: '122668',
  );

  /// value122670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122670 = SecurityRoleType(
    fhirCode: '122670',
  );

  /// value122675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122675 = SecurityRoleType(
    fhirCode: '122675',
  );

  /// value122680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122680 = SecurityRoleType(
    fhirCode: '122680',
  );

  /// value122683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122683 = SecurityRoleType(
    fhirCode: '122683',
  );

  /// value122684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122684 = SecurityRoleType(
    fhirCode: '122684',
  );

  /// value122685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122685 = SecurityRoleType(
    fhirCode: '122685',
  );

  /// value122686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122686 = SecurityRoleType(
    fhirCode: '122686',
  );

  /// value122687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122687 = SecurityRoleType(
    fhirCode: '122687',
  );

  /// value122698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122698 = SecurityRoleType(
    fhirCode: '122698',
  );

  /// value122699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122699 = SecurityRoleType(
    fhirCode: '122699',
  );

  /// value122700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122700 = SecurityRoleType(
    fhirCode: '122700',
  );

  /// value122701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122701 = SecurityRoleType(
    fhirCode: '122701',
  );

  /// value122702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122702 = SecurityRoleType(
    fhirCode: '122702',
  );

  /// value122703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122703 = SecurityRoleType(
    fhirCode: '122703',
  );

  /// value122704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122704 = SecurityRoleType(
    fhirCode: '122704',
  );

  /// value122705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122705 = SecurityRoleType(
    fhirCode: '122705',
  );

  /// value122706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122706 = SecurityRoleType(
    fhirCode: '122706',
  );

  /// value122707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122707 = SecurityRoleType(
    fhirCode: '122707',
  );

  /// value122708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122708 = SecurityRoleType(
    fhirCode: '122708',
  );

  /// value122709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122709 = SecurityRoleType(
    fhirCode: '122709',
  );

  /// value122710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122710 = SecurityRoleType(
    fhirCode: '122710',
  );

  /// value122711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122711 = SecurityRoleType(
    fhirCode: '122711',
  );

  /// value122712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122712 = SecurityRoleType(
    fhirCode: '122712',
  );

  /// value122713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122713 = SecurityRoleType(
    fhirCode: '122713',
  );

  /// value122715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122715 = SecurityRoleType(
    fhirCode: '122715',
  );

  /// value122716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122716 = SecurityRoleType(
    fhirCode: '122716',
  );

  /// value122717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122717 = SecurityRoleType(
    fhirCode: '122717',
  );

  /// value122718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122718 = SecurityRoleType(
    fhirCode: '122718',
  );

  /// value122720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122720 = SecurityRoleType(
    fhirCode: '122720',
  );

  /// value122721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122721 = SecurityRoleType(
    fhirCode: '122721',
  );

  /// value122726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122726 = SecurityRoleType(
    fhirCode: '122726',
  );

  /// value122727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122727 = SecurityRoleType(
    fhirCode: '122727',
  );

  /// value122728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122728 = SecurityRoleType(
    fhirCode: '122728',
  );

  /// value122729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122729 = SecurityRoleType(
    fhirCode: '122729',
  );

  /// value122730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122730 = SecurityRoleType(
    fhirCode: '122730',
  );

  /// value122731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122731 = SecurityRoleType(
    fhirCode: '122731',
  );

  /// value122732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122732 = SecurityRoleType(
    fhirCode: '122732',
  );

  /// value122733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122733 = SecurityRoleType(
    fhirCode: '122733',
  );

  /// value122734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122734 = SecurityRoleType(
    fhirCode: '122734',
  );

  /// value122735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122735 = SecurityRoleType(
    fhirCode: '122735',
  );

  /// value122739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122739 = SecurityRoleType(
    fhirCode: '122739',
  );

  /// value122740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122740 = SecurityRoleType(
    fhirCode: '122740',
  );

  /// value122741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122741 = SecurityRoleType(
    fhirCode: '122741',
  );

  /// value122742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122742 = SecurityRoleType(
    fhirCode: '122742',
  );

  /// value122743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122743 = SecurityRoleType(
    fhirCode: '122743',
  );

  /// value122744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122744 = SecurityRoleType(
    fhirCode: '122744',
  );

  /// value122745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122745 = SecurityRoleType(
    fhirCode: '122745',
  );

  /// value122748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122748 = SecurityRoleType(
    fhirCode: '122748',
  );

  /// value122750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122750 = SecurityRoleType(
    fhirCode: '122750',
  );

  /// value122751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122751 = SecurityRoleType(
    fhirCode: '122751',
  );

  /// value122752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122752 = SecurityRoleType(
    fhirCode: '122752',
  );

  /// value122753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122753 = SecurityRoleType(
    fhirCode: '122753',
  );

  /// value122755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122755 = SecurityRoleType(
    fhirCode: '122755',
  );

  /// value122756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122756 = SecurityRoleType(
    fhirCode: '122756',
  );

  /// value122757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122757 = SecurityRoleType(
    fhirCode: '122757',
  );

  /// value122758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122758 = SecurityRoleType(
    fhirCode: '122758',
  );

  /// value122759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122759 = SecurityRoleType(
    fhirCode: '122759',
  );

  /// value122760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122760 = SecurityRoleType(
    fhirCode: '122760',
  );

  /// value122762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122762 = SecurityRoleType(
    fhirCode: '122762',
  );

  /// value122764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122764 = SecurityRoleType(
    fhirCode: '122764',
  );

  /// value122768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122768 = SecurityRoleType(
    fhirCode: '122768',
  );

  /// value122769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122769 = SecurityRoleType(
    fhirCode: '122769',
  );

  /// value122770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122770 = SecurityRoleType(
    fhirCode: '122770',
  );

  /// value122771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122771 = SecurityRoleType(
    fhirCode: '122771',
  );

  /// value122772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122772 = SecurityRoleType(
    fhirCode: '122772',
  );

  /// value122773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122773 = SecurityRoleType(
    fhirCode: '122773',
  );

  /// value122775
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122775 = SecurityRoleType(
    fhirCode: '122775',
  );

  /// value122776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122776 = SecurityRoleType(
    fhirCode: '122776',
  );

  /// value122781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122781 = SecurityRoleType(
    fhirCode: '122781',
  );

  /// value122782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122782 = SecurityRoleType(
    fhirCode: '122782',
  );

  /// value122783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122783 = SecurityRoleType(
    fhirCode: '122783',
  );

  /// value122784
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122784 = SecurityRoleType(
    fhirCode: '122784',
  );

  /// value122785
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122785 = SecurityRoleType(
    fhirCode: '122785',
  );

  /// value122791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122791 = SecurityRoleType(
    fhirCode: '122791',
  );

  /// value122792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122792 = SecurityRoleType(
    fhirCode: '122792',
  );

  /// value122793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122793 = SecurityRoleType(
    fhirCode: '122793',
  );

  /// value122795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122795 = SecurityRoleType(
    fhirCode: '122795',
  );

  /// value122796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122796 = SecurityRoleType(
    fhirCode: '122796',
  );

  /// value122797
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122797 = SecurityRoleType(
    fhirCode: '122797',
  );

  /// value122799
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value122799 = SecurityRoleType(
    fhirCode: '122799',
  );

  /// value123001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123001 = SecurityRoleType(
    fhirCode: '123001',
  );

  /// value123003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123003 = SecurityRoleType(
    fhirCode: '123003',
  );

  /// value123004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123004 = SecurityRoleType(
    fhirCode: '123004',
  );

  /// value123005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123005 = SecurityRoleType(
    fhirCode: '123005',
  );

  /// value123006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123006 = SecurityRoleType(
    fhirCode: '123006',
  );

  /// value123007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123007 = SecurityRoleType(
    fhirCode: '123007',
  );

  /// value123009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123009 = SecurityRoleType(
    fhirCode: '123009',
  );

  /// value123010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123010 = SecurityRoleType(
    fhirCode: '123010',
  );

  /// value123011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123011 = SecurityRoleType(
    fhirCode: '123011',
  );

  /// value123012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123012 = SecurityRoleType(
    fhirCode: '123012',
  );

  /// value123014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123014 = SecurityRoleType(
    fhirCode: '123014',
  );

  /// value123015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123015 = SecurityRoleType(
    fhirCode: '123015',
  );

  /// value123016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123016 = SecurityRoleType(
    fhirCode: '123016',
  );

  /// value123019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123019 = SecurityRoleType(
    fhirCode: '123019',
  );

  /// value123101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123101 = SecurityRoleType(
    fhirCode: '123101',
  );

  /// value123102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123102 = SecurityRoleType(
    fhirCode: '123102',
  );

  /// value123103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123103 = SecurityRoleType(
    fhirCode: '123103',
  );

  /// value123104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123104 = SecurityRoleType(
    fhirCode: '123104',
  );

  /// value123105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123105 = SecurityRoleType(
    fhirCode: '123105',
  );

  /// value123106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123106 = SecurityRoleType(
    fhirCode: '123106',
  );

  /// value123107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123107 = SecurityRoleType(
    fhirCode: '123107',
  );

  /// value123108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123108 = SecurityRoleType(
    fhirCode: '123108',
  );

  /// value123109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123109 = SecurityRoleType(
    fhirCode: '123109',
  );

  /// value123110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123110 = SecurityRoleType(
    fhirCode: '123110',
  );

  /// value123111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value123111 = SecurityRoleType(
    fhirCode: '123111',
  );

  /// value125000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125000 = SecurityRoleType(
    fhirCode: '125000',
  );

  /// value125001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125001 = SecurityRoleType(
    fhirCode: '125001',
  );

  /// value125002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125002 = SecurityRoleType(
    fhirCode: '125002',
  );

  /// value125003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125003 = SecurityRoleType(
    fhirCode: '125003',
  );

  /// value125004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125004 = SecurityRoleType(
    fhirCode: '125004',
  );

  /// value125005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125005 = SecurityRoleType(
    fhirCode: '125005',
  );

  /// value125006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125006 = SecurityRoleType(
    fhirCode: '125006',
  );

  /// value125007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125007 = SecurityRoleType(
    fhirCode: '125007',
  );

  /// value125008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125008 = SecurityRoleType(
    fhirCode: '125008',
  );

  /// value125009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125009 = SecurityRoleType(
    fhirCode: '125009',
  );

  /// value125010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125010 = SecurityRoleType(
    fhirCode: '125010',
  );

  /// value125011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125011 = SecurityRoleType(
    fhirCode: '125011',
  );

  /// value125012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125012 = SecurityRoleType(
    fhirCode: '125012',
  );

  /// value125013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125013 = SecurityRoleType(
    fhirCode: '125013',
  );

  /// value125015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125015 = SecurityRoleType(
    fhirCode: '125015',
  );

  /// value125016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125016 = SecurityRoleType(
    fhirCode: '125016',
  );

  /// value125021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125021 = SecurityRoleType(
    fhirCode: '125021',
  );

  /// value125022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125022 = SecurityRoleType(
    fhirCode: '125022',
  );

  /// value125023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125023 = SecurityRoleType(
    fhirCode: '125023',
  );

  /// value125024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125024 = SecurityRoleType(
    fhirCode: '125024',
  );

  /// value125025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125025 = SecurityRoleType(
    fhirCode: '125025',
  );

  /// value125030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125030 = SecurityRoleType(
    fhirCode: '125030',
  );

  /// value125031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125031 = SecurityRoleType(
    fhirCode: '125031',
  );

  /// value125032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125032 = SecurityRoleType(
    fhirCode: '125032',
  );

  /// value125033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125033 = SecurityRoleType(
    fhirCode: '125033',
  );

  /// value125034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125034 = SecurityRoleType(
    fhirCode: '125034',
  );

  /// value125035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125035 = SecurityRoleType(
    fhirCode: '125035',
  );

  /// value125036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125036 = SecurityRoleType(
    fhirCode: '125036',
  );

  /// value125037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125037 = SecurityRoleType(
    fhirCode: '125037',
  );

  /// value125038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125038 = SecurityRoleType(
    fhirCode: '125038',
  );

  /// value125040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125040 = SecurityRoleType(
    fhirCode: '125040',
  );

  /// value125041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125041 = SecurityRoleType(
    fhirCode: '125041',
  );

  /// value125100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125100 = SecurityRoleType(
    fhirCode: '125100',
  );

  /// value125101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125101 = SecurityRoleType(
    fhirCode: '125101',
  );

  /// value125102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125102 = SecurityRoleType(
    fhirCode: '125102',
  );

  /// value125105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125105 = SecurityRoleType(
    fhirCode: '125105',
  );

  /// value125106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125106 = SecurityRoleType(
    fhirCode: '125106',
  );

  /// value125107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125107 = SecurityRoleType(
    fhirCode: '125107',
  );

  /// value125195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125195 = SecurityRoleType(
    fhirCode: '125195',
  );

  /// value125196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125196 = SecurityRoleType(
    fhirCode: '125196',
  );

  /// value125197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125197 = SecurityRoleType(
    fhirCode: '125197',
  );

  /// value125200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125200 = SecurityRoleType(
    fhirCode: '125200',
  );

  /// value125201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125201 = SecurityRoleType(
    fhirCode: '125201',
  );

  /// value125202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125202 = SecurityRoleType(
    fhirCode: '125202',
  );

  /// value125203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125203 = SecurityRoleType(
    fhirCode: '125203',
  );

  /// value125204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125204 = SecurityRoleType(
    fhirCode: '125204',
  );

  /// value125205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125205 = SecurityRoleType(
    fhirCode: '125205',
  );

  /// value125206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125206 = SecurityRoleType(
    fhirCode: '125206',
  );

  /// value125207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125207 = SecurityRoleType(
    fhirCode: '125207',
  );

  /// value125208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125208 = SecurityRoleType(
    fhirCode: '125208',
  );

  /// value125209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125209 = SecurityRoleType(
    fhirCode: '125209',
  );

  /// value125210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125210 = SecurityRoleType(
    fhirCode: '125210',
  );

  /// value125211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125211 = SecurityRoleType(
    fhirCode: '125211',
  );

  /// value125212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125212 = SecurityRoleType(
    fhirCode: '125212',
  );

  /// value125213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125213 = SecurityRoleType(
    fhirCode: '125213',
  );

  /// value125214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125214 = SecurityRoleType(
    fhirCode: '125214',
  );

  /// value125215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125215 = SecurityRoleType(
    fhirCode: '125215',
  );

  /// value125216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125216 = SecurityRoleType(
    fhirCode: '125216',
  );

  /// value125217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125217 = SecurityRoleType(
    fhirCode: '125217',
  );

  /// value125218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125218 = SecurityRoleType(
    fhirCode: '125218',
  );

  /// value125219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125219 = SecurityRoleType(
    fhirCode: '125219',
  );

  /// value125220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125220 = SecurityRoleType(
    fhirCode: '125220',
  );

  /// value125221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125221 = SecurityRoleType(
    fhirCode: '125221',
  );

  /// value125222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125222 = SecurityRoleType(
    fhirCode: '125222',
  );

  /// value125223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125223 = SecurityRoleType(
    fhirCode: '125223',
  );

  /// value125224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125224 = SecurityRoleType(
    fhirCode: '125224',
  );

  /// value125225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125225 = SecurityRoleType(
    fhirCode: '125225',
  );

  /// value125226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125226 = SecurityRoleType(
    fhirCode: '125226',
  );

  /// value125227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125227 = SecurityRoleType(
    fhirCode: '125227',
  );

  /// value125228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125228 = SecurityRoleType(
    fhirCode: '125228',
  );

  /// value125230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125230 = SecurityRoleType(
    fhirCode: '125230',
  );

  /// value125231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125231 = SecurityRoleType(
    fhirCode: '125231',
  );

  /// value125233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125233 = SecurityRoleType(
    fhirCode: '125233',
  );

  /// value125234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125234 = SecurityRoleType(
    fhirCode: '125234',
  );

  /// value125235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125235 = SecurityRoleType(
    fhirCode: '125235',
  );

  /// value125236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125236 = SecurityRoleType(
    fhirCode: '125236',
  );

  /// value125237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125237 = SecurityRoleType(
    fhirCode: '125237',
  );

  /// value125238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125238 = SecurityRoleType(
    fhirCode: '125238',
  );

  /// value125239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125239 = SecurityRoleType(
    fhirCode: '125239',
  );

  /// value125240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125240 = SecurityRoleType(
    fhirCode: '125240',
  );

  /// value125241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125241 = SecurityRoleType(
    fhirCode: '125241',
  );

  /// value125242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125242 = SecurityRoleType(
    fhirCode: '125242',
  );

  /// value125251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125251 = SecurityRoleType(
    fhirCode: '125251',
  );

  /// value125252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125252 = SecurityRoleType(
    fhirCode: '125252',
  );

  /// value125253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125253 = SecurityRoleType(
    fhirCode: '125253',
  );

  /// value125254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125254 = SecurityRoleType(
    fhirCode: '125254',
  );

  /// value125255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125255 = SecurityRoleType(
    fhirCode: '125255',
  );

  /// value125256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125256 = SecurityRoleType(
    fhirCode: '125256',
  );

  /// value125257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125257 = SecurityRoleType(
    fhirCode: '125257',
  );

  /// value125258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125258 = SecurityRoleType(
    fhirCode: '125258',
  );

  /// value125259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125259 = SecurityRoleType(
    fhirCode: '125259',
  );

  /// value125261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125261 = SecurityRoleType(
    fhirCode: '125261',
  );

  /// value125262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125262 = SecurityRoleType(
    fhirCode: '125262',
  );

  /// value125263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125263 = SecurityRoleType(
    fhirCode: '125263',
  );

  /// value125264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125264 = SecurityRoleType(
    fhirCode: '125264',
  );

  /// value125265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125265 = SecurityRoleType(
    fhirCode: '125265',
  );

  /// value125270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125270 = SecurityRoleType(
    fhirCode: '125270',
  );

  /// value125271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125271 = SecurityRoleType(
    fhirCode: '125271',
  );

  /// value125272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125272 = SecurityRoleType(
    fhirCode: '125272',
  );

  /// value125273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125273 = SecurityRoleType(
    fhirCode: '125273',
  );

  /// value125901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125901 = SecurityRoleType(
    fhirCode: '125901',
  );

  /// value125902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125902 = SecurityRoleType(
    fhirCode: '125902',
  );

  /// value125903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125903 = SecurityRoleType(
    fhirCode: '125903',
  );

  /// value125904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125904 = SecurityRoleType(
    fhirCode: '125904',
  );

  /// value125905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125905 = SecurityRoleType(
    fhirCode: '125905',
  );

  /// value125906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125906 = SecurityRoleType(
    fhirCode: '125906',
  );

  /// value125907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125907 = SecurityRoleType(
    fhirCode: '125907',
  );

  /// value125908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value125908 = SecurityRoleType(
    fhirCode: '125908',
  );

  /// value126000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126000 = SecurityRoleType(
    fhirCode: '126000',
  );

  /// value126001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126001 = SecurityRoleType(
    fhirCode: '126001',
  );

  /// value126002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126002 = SecurityRoleType(
    fhirCode: '126002',
  );

  /// value126003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126003 = SecurityRoleType(
    fhirCode: '126003',
  );

  /// value126010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126010 = SecurityRoleType(
    fhirCode: '126010',
  );

  /// value126011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126011 = SecurityRoleType(
    fhirCode: '126011',
  );

  /// value126020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126020 = SecurityRoleType(
    fhirCode: '126020',
  );

  /// value126021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126021 = SecurityRoleType(
    fhirCode: '126021',
  );

  /// value126022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126022 = SecurityRoleType(
    fhirCode: '126022',
  );

  /// value126030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126030 = SecurityRoleType(
    fhirCode: '126030',
  );

  /// value126031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126031 = SecurityRoleType(
    fhirCode: '126031',
  );

  /// value126032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126032 = SecurityRoleType(
    fhirCode: '126032',
  );

  /// value126033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126033 = SecurityRoleType(
    fhirCode: '126033',
  );

  /// value126034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126034 = SecurityRoleType(
    fhirCode: '126034',
  );

  /// value126035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126035 = SecurityRoleType(
    fhirCode: '126035',
  );

  /// value126036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126036 = SecurityRoleType(
    fhirCode: '126036',
  );

  /// value126037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126037 = SecurityRoleType(
    fhirCode: '126037',
  );

  /// value126038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126038 = SecurityRoleType(
    fhirCode: '126038',
  );

  /// value126039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126039 = SecurityRoleType(
    fhirCode: '126039',
  );

  /// value126040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126040 = SecurityRoleType(
    fhirCode: '126040',
  );

  /// value126050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126050 = SecurityRoleType(
    fhirCode: '126050',
  );

  /// value126051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126051 = SecurityRoleType(
    fhirCode: '126051',
  );

  /// value126052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126052 = SecurityRoleType(
    fhirCode: '126052',
  );

  /// value126060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126060 = SecurityRoleType(
    fhirCode: '126060',
  );

  /// value126061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126061 = SecurityRoleType(
    fhirCode: '126061',
  );

  /// value126062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126062 = SecurityRoleType(
    fhirCode: '126062',
  );

  /// value126063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126063 = SecurityRoleType(
    fhirCode: '126063',
  );

  /// value126064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126064 = SecurityRoleType(
    fhirCode: '126064',
  );

  /// value126065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126065 = SecurityRoleType(
    fhirCode: '126065',
  );

  /// value126066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126066 = SecurityRoleType(
    fhirCode: '126066',
  );

  /// value126067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126067 = SecurityRoleType(
    fhirCode: '126067',
  );

  /// value126070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126070 = SecurityRoleType(
    fhirCode: '126070',
  );

  /// value126071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126071 = SecurityRoleType(
    fhirCode: '126071',
  );

  /// value126072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126072 = SecurityRoleType(
    fhirCode: '126072',
  );

  /// value126073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126073 = SecurityRoleType(
    fhirCode: '126073',
  );

  /// value126074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126074 = SecurityRoleType(
    fhirCode: '126074',
  );

  /// value126075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126075 = SecurityRoleType(
    fhirCode: '126075',
  );

  /// value126080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126080 = SecurityRoleType(
    fhirCode: '126080',
  );

  /// value126081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126081 = SecurityRoleType(
    fhirCode: '126081',
  );

  /// value126100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126100 = SecurityRoleType(
    fhirCode: '126100',
  );

  /// value126200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126200 = SecurityRoleType(
    fhirCode: '126200',
  );

  /// value126201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126201 = SecurityRoleType(
    fhirCode: '126201',
  );

  /// value126202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126202 = SecurityRoleType(
    fhirCode: '126202',
  );

  /// value126203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126203 = SecurityRoleType(
    fhirCode: '126203',
  );

  /// value126220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126220 = SecurityRoleType(
    fhirCode: '126220',
  );

  /// value126300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126300 = SecurityRoleType(
    fhirCode: '126300',
  );

  /// value126301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126301 = SecurityRoleType(
    fhirCode: '126301',
  );

  /// value126302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126302 = SecurityRoleType(
    fhirCode: '126302',
  );

  /// value126303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126303 = SecurityRoleType(
    fhirCode: '126303',
  );

  /// value126310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126310 = SecurityRoleType(
    fhirCode: '126310',
  );

  /// value126311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126311 = SecurityRoleType(
    fhirCode: '126311',
  );

  /// value126312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126312 = SecurityRoleType(
    fhirCode: '126312',
  );

  /// value126313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126313 = SecurityRoleType(
    fhirCode: '126313',
  );

  /// value126314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126314 = SecurityRoleType(
    fhirCode: '126314',
  );

  /// value126320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126320 = SecurityRoleType(
    fhirCode: '126320',
  );

  /// value126321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126321 = SecurityRoleType(
    fhirCode: '126321',
  );

  /// value126322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126322 = SecurityRoleType(
    fhirCode: '126322',
  );

  /// value126330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126330 = SecurityRoleType(
    fhirCode: '126330',
  );

  /// value126331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126331 = SecurityRoleType(
    fhirCode: '126331',
  );

  /// value126340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126340 = SecurityRoleType(
    fhirCode: '126340',
  );

  /// value126341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126341 = SecurityRoleType(
    fhirCode: '126341',
  );

  /// value126342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126342 = SecurityRoleType(
    fhirCode: '126342',
  );

  /// value126343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126343 = SecurityRoleType(
    fhirCode: '126343',
  );

  /// value126344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126344 = SecurityRoleType(
    fhirCode: '126344',
  );

  /// value126350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126350 = SecurityRoleType(
    fhirCode: '126350',
  );

  /// value126351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126351 = SecurityRoleType(
    fhirCode: '126351',
  );

  /// value126352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126352 = SecurityRoleType(
    fhirCode: '126352',
  );

  /// value126353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126353 = SecurityRoleType(
    fhirCode: '126353',
  );

  /// value126360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126360 = SecurityRoleType(
    fhirCode: '126360',
  );

  /// value126361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126361 = SecurityRoleType(
    fhirCode: '126361',
  );

  /// value126362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126362 = SecurityRoleType(
    fhirCode: '126362',
  );

  /// value126363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126363 = SecurityRoleType(
    fhirCode: '126363',
  );

  /// value126364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126364 = SecurityRoleType(
    fhirCode: '126364',
  );

  /// value126370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126370 = SecurityRoleType(
    fhirCode: '126370',
  );

  /// value126371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126371 = SecurityRoleType(
    fhirCode: '126371',
  );

  /// value126372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126372 = SecurityRoleType(
    fhirCode: '126372',
  );

  /// value126373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126373 = SecurityRoleType(
    fhirCode: '126373',
  );

  /// value126374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126374 = SecurityRoleType(
    fhirCode: '126374',
  );

  /// value126375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126375 = SecurityRoleType(
    fhirCode: '126375',
  );

  /// value126376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126376 = SecurityRoleType(
    fhirCode: '126376',
  );

  /// value126377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126377 = SecurityRoleType(
    fhirCode: '126377',
  );

  /// value126380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126380 = SecurityRoleType(
    fhirCode: '126380',
  );

  /// value126390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126390 = SecurityRoleType(
    fhirCode: '126390',
  );

  /// value126391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126391 = SecurityRoleType(
    fhirCode: '126391',
  );

  /// value126392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126392 = SecurityRoleType(
    fhirCode: '126392',
  );

  /// value126393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126393 = SecurityRoleType(
    fhirCode: '126393',
  );

  /// value126394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126394 = SecurityRoleType(
    fhirCode: '126394',
  );

  /// value126400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126400 = SecurityRoleType(
    fhirCode: '126400',
  );

  /// value126401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126401 = SecurityRoleType(
    fhirCode: '126401',
  );

  /// value126402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126402 = SecurityRoleType(
    fhirCode: '126402',
  );

  /// value126403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126403 = SecurityRoleType(
    fhirCode: '126403',
  );

  /// value126404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126404 = SecurityRoleType(
    fhirCode: '126404',
  );

  /// value126410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126410 = SecurityRoleType(
    fhirCode: '126410',
  );

  /// value126411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126411 = SecurityRoleType(
    fhirCode: '126411',
  );

  /// value126412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126412 = SecurityRoleType(
    fhirCode: '126412',
  );

  /// value126413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126413 = SecurityRoleType(
    fhirCode: '126413',
  );

  /// value126500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126500 = SecurityRoleType(
    fhirCode: '126500',
  );

  /// value126501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126501 = SecurityRoleType(
    fhirCode: '126501',
  );

  /// value126502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126502 = SecurityRoleType(
    fhirCode: '126502',
  );

  /// value126503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126503 = SecurityRoleType(
    fhirCode: '126503',
  );

  /// value126510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126510 = SecurityRoleType(
    fhirCode: '126510',
  );

  /// value126511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126511 = SecurityRoleType(
    fhirCode: '126511',
  );

  /// value126512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126512 = SecurityRoleType(
    fhirCode: '126512',
  );

  /// value126513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126513 = SecurityRoleType(
    fhirCode: '126513',
  );

  /// value126514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126514 = SecurityRoleType(
    fhirCode: '126514',
  );

  /// value126515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126515 = SecurityRoleType(
    fhirCode: '126515',
  );

  /// value126516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126516 = SecurityRoleType(
    fhirCode: '126516',
  );

  /// value126517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126517 = SecurityRoleType(
    fhirCode: '126517',
  );

  /// value126518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126518 = SecurityRoleType(
    fhirCode: '126518',
  );

  /// value126519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126519 = SecurityRoleType(
    fhirCode: '126519',
  );

  /// value126520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126520 = SecurityRoleType(
    fhirCode: '126520',
  );

  /// value126600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126600 = SecurityRoleType(
    fhirCode: '126600',
  );

  /// value126601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126601 = SecurityRoleType(
    fhirCode: '126601',
  );

  /// value126602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126602 = SecurityRoleType(
    fhirCode: '126602',
  );

  /// value126603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126603 = SecurityRoleType(
    fhirCode: '126603',
  );

  /// value126604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126604 = SecurityRoleType(
    fhirCode: '126604',
  );

  /// value126605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126605 = SecurityRoleType(
    fhirCode: '126605',
  );

  /// value126606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126606 = SecurityRoleType(
    fhirCode: '126606',
  );

  /// value126700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126700 = SecurityRoleType(
    fhirCode: '126700',
  );

  /// value126701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126701 = SecurityRoleType(
    fhirCode: '126701',
  );

  /// value126702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126702 = SecurityRoleType(
    fhirCode: '126702',
  );

  /// value126703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126703 = SecurityRoleType(
    fhirCode: '126703',
  );

  /// value126704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126704 = SecurityRoleType(
    fhirCode: '126704',
  );

  /// value126705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126705 = SecurityRoleType(
    fhirCode: '126705',
  );

  /// value126706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126706 = SecurityRoleType(
    fhirCode: '126706',
  );

  /// value126707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126707 = SecurityRoleType(
    fhirCode: '126707',
  );

  /// value126708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126708 = SecurityRoleType(
    fhirCode: '126708',
  );

  /// value126709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126709 = SecurityRoleType(
    fhirCode: '126709',
  );

  /// value126710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126710 = SecurityRoleType(
    fhirCode: '126710',
  );

  /// value126711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126711 = SecurityRoleType(
    fhirCode: '126711',
  );

  /// value126712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126712 = SecurityRoleType(
    fhirCode: '126712',
  );

  /// value126713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126713 = SecurityRoleType(
    fhirCode: '126713',
  );

  /// value126714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126714 = SecurityRoleType(
    fhirCode: '126714',
  );

  /// value126715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126715 = SecurityRoleType(
    fhirCode: '126715',
  );

  /// value126716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126716 = SecurityRoleType(
    fhirCode: '126716',
  );

  /// value126801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126801 = SecurityRoleType(
    fhirCode: '126801',
  );

  /// value126802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126802 = SecurityRoleType(
    fhirCode: '126802',
  );

  /// value126803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126803 = SecurityRoleType(
    fhirCode: '126803',
  );

  /// value126804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126804 = SecurityRoleType(
    fhirCode: '126804',
  );

  /// value126805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126805 = SecurityRoleType(
    fhirCode: '126805',
  );

  /// value126806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126806 = SecurityRoleType(
    fhirCode: '126806',
  );

  /// value126807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126807 = SecurityRoleType(
    fhirCode: '126807',
  );

  /// value126808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126808 = SecurityRoleType(
    fhirCode: '126808',
  );

  /// value126809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126809 = SecurityRoleType(
    fhirCode: '126809',
  );

  /// value126810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126810 = SecurityRoleType(
    fhirCode: '126810',
  );

  /// value126811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SecurityRoleType value126811 = SecurityRoleType(
    fhirCode: '126811',
  );

  /// For instances where an Element is present but not value

  static final SecurityRoleType elementOnly = SecurityRoleType();

  /// List of all enum-like values
  static final List<SecurityRoleType> values = [
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
  SecurityRoleType withElement(Element? newElement) {
    return SecurityRoleType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SecurityRoleType] from JSON.
  static SecurityRoleType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SecurityRoleType.elementOnly.withElement(element);
    }
    return SecurityRoleType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SecurityRoleType.$fhirCode';
}
