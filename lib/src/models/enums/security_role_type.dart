// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example FHIR value set is comprised of example Actor Type codes, which can be used to value FHIR agents, actors, and other role elements such as those specified in financial transactions. The FHIR Actor value set is based on DICOM Audit Message, C402; ASTM Standard, E1762-95 [2013]; selected codes and derived actor roles from HL7 RoleClass OID 2.16.840.1.113883.5.110; HL7 Role Code 2.16.840.1.113883.5.111, including AgentRoleType; HL7 ParticipationType OID: 2.16.840.1.113883.5.90; and HL7 ParticipationFunction codes OID: 2.16.840.1.113883.5.88. This value set includes, by reference, role codes from external code systems: NUCC Health Care Provider Taxonomy OID: 2.16.840.1.113883.6.101; North American Industry Classification System [NAICS]OID: 2.16.840.1.113883.6.85; IndustryClassificationSystem 2.16.840.1.113883.1.11.16039; and US Census Occupation Code OID: 2.16.840.1.113883.6.243 for relevant recipient or custodian codes not included in this value set. If no source is indicated in the definition comments, then these are example FHIR codes. It can be extended with appropriate roles described by SNOMED as well as those described in the HL7 Role Based Access Control Catalog and the HL7 Healthcare (Security and Privacy) Access Control Catalog. In Role-Based Access Control (RBAC), permissions are operations on an object that a user wishes to access. Permissions are grouped into roles. A role characterizes the functions a user is allowed to perform. Roles are assigned to users. If the user's role has the appropriate permissions to access an object, then that user is granted access to the object. FHIR readily enables RBAC, as FHIR Resources are object types and the CRUDE events (the FHIR equivalent to permissions in the RBAC scheme) are operations on those objects. In Attribute-Based Access Control (ABAC), a user requests to perform operations on objects. That user's access request is granted or denied based on a set of access control policies that are specified in terms of attributes and conditions. FHIR readily enables ABAC, as instances of a Resource in FHIR (again, Resources are object types) can have attributes associated with them. These attributes include security tags, environment conditions, and a host of user and object characteristics, which are the same attributes as those used in ABAC. Attributes help define the access control policies that determine the operations a user may perform on a Resource (in FHIR) or object (in ABAC). For example, a tag (or attribute) may specify that the identified Resource (object) is not to be further disclosed without explicit consent from the patient.
class SecurityRoleType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SecurityRoleType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SecurityRoleType] from JSON.
  factory SecurityRoleType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SecurityRoleType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SecurityRoleType cannot be constructed from JSON.',
      );
    }
    return SecurityRoleType._(value, element: element);
  }

  /// AMENDER
  static final SecurityRoleType AMENDER = SecurityRoleType._(
    'AMENDER',
  );

  /// COAUTH
  static final SecurityRoleType COAUTH = SecurityRoleType._(
    'COAUTH',
  );

  /// CONT
  static final SecurityRoleType CONT = SecurityRoleType._(
    'CONT',
  );

  /// EVTWIT
  static final SecurityRoleType EVTWIT = SecurityRoleType._(
    'EVTWIT',
  );

  /// PRIMAUTH
  static final SecurityRoleType PRIMAUTH = SecurityRoleType._(
    'PRIMAUTH',
  );

  /// REVIEWER
  static final SecurityRoleType REVIEWER = SecurityRoleType._(
    'REVIEWER',
  );

  /// SOURCE
  static final SecurityRoleType SOURCE = SecurityRoleType._(
    'SOURCE',
  );

  /// TRANS
  static final SecurityRoleType TRANS = SecurityRoleType._(
    'TRANS',
  );

  /// VALID
  static final SecurityRoleType VALID = SecurityRoleType._(
    'VALID',
  );

  /// VERF
  static final SecurityRoleType VERF = SecurityRoleType._(
    'VERF',
  );

  /// AFFL
  static final SecurityRoleType AFFL = SecurityRoleType._(
    'AFFL',
  );

  /// AGNT
  static final SecurityRoleType AGNT = SecurityRoleType._(
    'AGNT',
  );

  /// ASSIGNED
  static final SecurityRoleType ASSIGNED = SecurityRoleType._(
    'ASSIGNED',
  );

  /// CLAIM
  static final SecurityRoleType CLAIM = SecurityRoleType._(
    'CLAIM',
  );

  /// COVPTY
  static final SecurityRoleType COVPTY = SecurityRoleType._(
    'COVPTY',
  );

  /// DEPEN
  static final SecurityRoleType DEPEN = SecurityRoleType._(
    'DEPEN',
  );

  /// ECON
  static final SecurityRoleType ECON = SecurityRoleType._(
    'ECON',
  );

  /// EMP
  static final SecurityRoleType EMP = SecurityRoleType._(
    'EMP',
  );

  /// GUARD
  static final SecurityRoleType GUARD = SecurityRoleType._(
    'GUARD',
  );

  /// INVSBJ
  static final SecurityRoleType INVSBJ = SecurityRoleType._(
    'INVSBJ',
  );

  /// NAMED
  static final SecurityRoleType NAMED = SecurityRoleType._(
    'NAMED',
  );

  /// NOK
  static final SecurityRoleType NOK = SecurityRoleType._(
    'NOK',
  );

  /// PAT
  static final SecurityRoleType PAT = SecurityRoleType._(
    'PAT',
  );

  /// PROV
  static final SecurityRoleType PROV = SecurityRoleType._(
    'PROV',
  );

  /// NOT
  static final SecurityRoleType NOT = SecurityRoleType._(
    'NOT',
  );

  /// CLASSIFIER
  static final SecurityRoleType CLASSIFIER = SecurityRoleType._(
    'CLASSIFIER',
  );

  /// CONSENTER
  static final SecurityRoleType CONSENTER = SecurityRoleType._(
    'CONSENTER',
  );

  /// CONSWIT
  static final SecurityRoleType CONSWIT = SecurityRoleType._(
    'CONSWIT',
  );

  /// COPART
  static final SecurityRoleType COPART = SecurityRoleType._(
    'COPART',
  );

  /// DECLASSIFIER
  static final SecurityRoleType DECLASSIFIER = SecurityRoleType._(
    'DECLASSIFIER',
  );

  /// DELEGATEE
  static final SecurityRoleType DELEGATEE = SecurityRoleType._(
    'DELEGATEE',
  );

  /// DELEGATOR
  static final SecurityRoleType DELEGATOR = SecurityRoleType._(
    'DELEGATOR',
  );

  /// DOWNGRDER
  static final SecurityRoleType DOWNGRDER = SecurityRoleType._(
    'DOWNGRDER',
  );

  /// DPOWATT
  static final SecurityRoleType DPOWATT = SecurityRoleType._(
    'DPOWATT',
  );

  /// EXCEST
  static final SecurityRoleType EXCEST = SecurityRoleType._(
    'EXCEST',
  );

  /// GRANTEE
  static final SecurityRoleType GRANTEE = SecurityRoleType._(
    'GRANTEE',
  );

  /// GRANTOR
  static final SecurityRoleType GRANTOR = SecurityRoleType._(
    'GRANTOR',
  );

  /// GT
  static final SecurityRoleType GT = SecurityRoleType._(
    'GT',
  );

  /// GUADLTM
  static final SecurityRoleType GUADLTM = SecurityRoleType._(
    'GUADLTM',
  );

  /// HPOWATT
  static final SecurityRoleType HPOWATT = SecurityRoleType._(
    'HPOWATT',
  );

  /// INTPRTER
  static final SecurityRoleType INTPRTER = SecurityRoleType._(
    'INTPRTER',
  );

  /// POWATT
  static final SecurityRoleType POWATT = SecurityRoleType._(
    'POWATT',
  );

  /// RESPRSN
  static final SecurityRoleType RESPRSN = SecurityRoleType._(
    'RESPRSN',
  );

  /// SPOWATT
  static final SecurityRoleType SPOWATT = SecurityRoleType._(
    'SPOWATT',
  );

  /// AUCG
  static final SecurityRoleType AUCG = SecurityRoleType._(
    'AUCG',
  );

  /// AULR
  static final SecurityRoleType AULR = SecurityRoleType._(
    'AULR',
  );

  /// AUTM
  static final SecurityRoleType AUTM = SecurityRoleType._(
    'AUTM',
  );

  /// AUWA
  static final SecurityRoleType AUWA = SecurityRoleType._(
    'AUWA',
  );

  /// PROMSK
  static final SecurityRoleType PROMSK = SecurityRoleType._(
    'PROMSK',
  );

  /// AUT
  static final SecurityRoleType AUT = SecurityRoleType._(
    'AUT',
  );

  /// CST
  static final SecurityRoleType CST = SecurityRoleType._(
    'CST',
  );

  /// INF
  static final SecurityRoleType INF = SecurityRoleType._(
    'INF',
  );

  /// IRCP
  static final SecurityRoleType IRCP = SecurityRoleType._(
    'IRCP',
  );

  /// LA
  static final SecurityRoleType LA = SecurityRoleType._(
    'LA',
  );

  /// TRC
  static final SecurityRoleType TRC = SecurityRoleType._(
    'TRC',
  );

  /// WIT
  static final SecurityRoleType WIT = SecurityRoleType._(
    'WIT',
  );

  /// authserver
  static final SecurityRoleType authserver = SecurityRoleType._(
    'authserver',
  );

  /// datacollector
  static final SecurityRoleType datacollector = SecurityRoleType._(
    'datacollector',
  );

  /// dataprocessor
  static final SecurityRoleType dataprocessor = SecurityRoleType._(
    'dataprocessor',
  );

  /// datasubject
  static final SecurityRoleType datasubject = SecurityRoleType._(
    'datasubject',
  );

  /// humanuser
  static final SecurityRoleType humanuser = SecurityRoleType._(
    'humanuser',
  );

  /// ARCHIVE
  static final SecurityRoleType ARCHIVE = SecurityRoleType._(
    'ARCHIVE',
  );

  /// AR
  static final SecurityRoleType AR = SecurityRoleType._(
    'AR',
  );

  /// AS
  static final SecurityRoleType AS = SecurityRoleType._(
    'AS',
  );

  /// AU
  static final SecurityRoleType AU = SecurityRoleType._(
    'AU',
  );

  /// BDUS
  static final SecurityRoleType BDUS = SecurityRoleType._(
    'BDUS',
  );

  /// BI
  static final SecurityRoleType BI = SecurityRoleType._(
    'BI',
  );

  /// BMD
  static final SecurityRoleType BMD = SecurityRoleType._(
    'BMD',
  );

  /// CAD
  static final SecurityRoleType CAD = SecurityRoleType._(
    'CAD',
  );

  /// CAPTURE
  static final SecurityRoleType CAPTURE = SecurityRoleType._(
    'CAPTURE',
  );

  /// CD
  static final SecurityRoleType CD = SecurityRoleType._(
    'CD',
  );

  /// CF
  static final SecurityRoleType CF = SecurityRoleType._(
    'CF',
  );

  /// COMP
  static final SecurityRoleType COMP = SecurityRoleType._(
    'COMP',
  );

  /// CP
  static final SecurityRoleType CP = SecurityRoleType._(
    'CP',
  );

  /// CR
  static final SecurityRoleType CR = SecurityRoleType._(
    'CR',
  );

  /// CS
  static final SecurityRoleType CS = SecurityRoleType._(
    'CS',
  );

  /// CT
  static final SecurityRoleType CT = SecurityRoleType._(
    'CT',
  );

  /// DD
  static final SecurityRoleType DD = SecurityRoleType._(
    'DD',
  );

  /// DF
  static final SecurityRoleType DF = SecurityRoleType._(
    'DF',
  );

  /// DG
  static final SecurityRoleType DG = SecurityRoleType._(
    'DG',
  );

  /// DM
  static final SecurityRoleType DM = SecurityRoleType._(
    'DM',
  );

  /// DOCD
  static final SecurityRoleType DOCD = SecurityRoleType._(
    'DOCD',
  );

  /// DS
  static final SecurityRoleType DS = SecurityRoleType._(
    'DS',
  );

  /// DSS
  static final SecurityRoleType DSS = SecurityRoleType._(
    'DSS',
  );

  /// DX
  static final SecurityRoleType DX = SecurityRoleType._(
    'DX',
  );

  /// EC
  static final SecurityRoleType EC = SecurityRoleType._(
    'EC',
  );

  /// ECG
  static final SecurityRoleType ECG = SecurityRoleType._(
    'ECG',
  );

  /// EPS
  static final SecurityRoleType EPS = SecurityRoleType._(
    'EPS',
  );

  /// ES
  static final SecurityRoleType ES = SecurityRoleType._(
    'ES',
  );

  /// F
  static final SecurityRoleType F = SecurityRoleType._(
    'F',
  );

  /// FA
  static final SecurityRoleType FA = SecurityRoleType._(
    'FA',
  );

  /// FC
  static final SecurityRoleType FC = SecurityRoleType._(
    'FC',
  );

  /// FILMD
  static final SecurityRoleType FILMD = SecurityRoleType._(
    'FILMD',
  );

  /// FP
  static final SecurityRoleType FP = SecurityRoleType._(
    'FP',
  );

  /// FS
  static final SecurityRoleType FS = SecurityRoleType._(
    'FS',
  );

  /// GM
  static final SecurityRoleType GM = SecurityRoleType._(
    'GM',
  );

  /// H
  static final SecurityRoleType H = SecurityRoleType._(
    'H',
  );

  /// HC
  static final SecurityRoleType HC = SecurityRoleType._(
    'HC',
  );

  /// HD
  static final SecurityRoleType HD = SecurityRoleType._(
    'HD',
  );

  /// IO
  static final SecurityRoleType IO = SecurityRoleType._(
    'IO',
  );

  /// IVOCT
  static final SecurityRoleType IVOCT = SecurityRoleType._(
    'IVOCT',
  );

  /// IVUS
  static final SecurityRoleType IVUS = SecurityRoleType._(
    'IVUS',
  );

  /// KER
  static final SecurityRoleType KER = SecurityRoleType._(
    'KER',
  );

  /// KO
  static final SecurityRoleType KO = SecurityRoleType._(
    'KO',
  );

  /// LEN
  static final SecurityRoleType LEN = SecurityRoleType._(
    'LEN',
  );

  /// LOG
  static final SecurityRoleType LOG = SecurityRoleType._(
    'LOG',
  );

  /// LP
  static final SecurityRoleType LP = SecurityRoleType._(
    'LP',
  );

  /// LS
  static final SecurityRoleType LS = SecurityRoleType._(
    'LS',
  );

  /// M
  static final SecurityRoleType M = SecurityRoleType._(
    'M',
  );

  /// MA
  static final SecurityRoleType MA = SecurityRoleType._(
    'MA',
  );

  /// MC
  static final SecurityRoleType MC = SecurityRoleType._(
    'MC',
  );

  /// MCD
  static final SecurityRoleType MCD = SecurityRoleType._(
    'MCD',
  );

  /// MEDIM
  static final SecurityRoleType MEDIM = SecurityRoleType._(
    'MEDIM',
  );

  /// MG
  static final SecurityRoleType MG = SecurityRoleType._(
    'MG',
  );

  /// MP
  static final SecurityRoleType MP = SecurityRoleType._(
    'MP',
  );

  /// MR
  static final SecurityRoleType MR = SecurityRoleType._(
    'MR',
  );

  /// MS
  static final SecurityRoleType MS = SecurityRoleType._(
    'MS',
  );

  /// NEARLINE
  static final SecurityRoleType NEARLINE = SecurityRoleType._(
    'NEARLINE',
  );

  /// NM
  static final SecurityRoleType NM = SecurityRoleType._(
    'NM',
  );

  /// OAM
  static final SecurityRoleType OAM = SecurityRoleType._(
    'OAM',
  );

  /// OCT
  static final SecurityRoleType OCT = SecurityRoleType._(
    'OCT',
  );

  /// OFFLINE
  static final SecurityRoleType OFFLINE = SecurityRoleType._(
    'OFFLINE',
  );

  /// ONLINE
  static final SecurityRoleType ONLINE = SecurityRoleType._(
    'ONLINE',
  );

  /// OP
  static final SecurityRoleType OP = SecurityRoleType._(
    'OP',
  );

  /// OPM
  static final SecurityRoleType OPM = SecurityRoleType._(
    'OPM',
  );

  /// OPR
  static final SecurityRoleType OPR = SecurityRoleType._(
    'OPR',
  );

  /// OPT
  static final SecurityRoleType OPT = SecurityRoleType._(
    'OPT',
  );

  /// OPV
  static final SecurityRoleType OPV = SecurityRoleType._(
    'OPV',
  );

  /// OSS
  static final SecurityRoleType OSS = SecurityRoleType._(
    'OSS',
  );

  /// OT
  static final SecurityRoleType OT = SecurityRoleType._(
    'OT',
  );

  /// PR
  static final SecurityRoleType PR = SecurityRoleType._(
    'PR',
  );

  /// PRINT
  static final SecurityRoleType PRINT = SecurityRoleType._(
    'PRINT',
  );

  /// PT
  static final SecurityRoleType PT = SecurityRoleType._(
    'PT',
  );

  /// PX
  static final SecurityRoleType PX = SecurityRoleType._(
    'PX',
  );

  /// REG
  static final SecurityRoleType REG = SecurityRoleType._(
    'REG',
  );

  /// RF
  static final SecurityRoleType RF = SecurityRoleType._(
    'RF',
  );

  /// RG
  static final SecurityRoleType RG = SecurityRoleType._(
    'RG',
  );

  /// RT
  static final SecurityRoleType RT = SecurityRoleType._(
    'RT',
  );

  /// RTDOSE
  static final SecurityRoleType RTDOSE = SecurityRoleType._(
    'RTDOSE',
  );

  /// RTIMAGE
  static final SecurityRoleType RTIMAGE = SecurityRoleType._(
    'RTIMAGE',
  );

  /// RTPLAN
  static final SecurityRoleType RTPLAN = SecurityRoleType._(
    'RTPLAN',
  );

  /// RTRECORD
  static final SecurityRoleType RTRECORD = SecurityRoleType._(
    'RTRECORD',
  );

  /// RTSTRUCT
  static final SecurityRoleType RTSTRUCT = SecurityRoleType._(
    'RTSTRUCT',
  );

  /// SEG
  static final SecurityRoleType SEG = SecurityRoleType._(
    'SEG',
  );

  /// SM
  static final SecurityRoleType SM = SecurityRoleType._(
    'SM',
  );

  /// SMR
  static final SecurityRoleType SMR = SecurityRoleType._(
    'SMR',
  );

  /// SR
  static final SecurityRoleType SR = SecurityRoleType._(
    'SR',
  );

  /// SRF
  static final SecurityRoleType SRF = SecurityRoleType._(
    'SRF',
  );

  /// ST
  static final SecurityRoleType ST = SecurityRoleType._(
    'ST',
  );

  /// TG
  static final SecurityRoleType TG = SecurityRoleType._(
    'TG',
  );

  /// U
  static final SecurityRoleType U = SecurityRoleType._(
    'U',
  );

  /// UNAVAILABLE
  static final SecurityRoleType UNAVAILABLE = SecurityRoleType._(
    'UNAVAILABLE',
  );

  /// US
  static final SecurityRoleType US = SecurityRoleType._(
    'US',
  );

  /// VA
  static final SecurityRoleType VA = SecurityRoleType._(
    'VA',
  );

  /// VF
  static final SecurityRoleType VF = SecurityRoleType._(
    'VF',
  );

  /// VIDD
  static final SecurityRoleType VIDD = SecurityRoleType._(
    'VIDD',
  );

  /// WSD
  static final SecurityRoleType WSD = SecurityRoleType._(
    'WSD',
  );

  /// XA
  static final SecurityRoleType XA = SecurityRoleType._(
    'XA',
  );

  /// XC
  static final SecurityRoleType XC = SecurityRoleType._(
    'XC',
  );

  /// value109001
  static final SecurityRoleType value109001 = SecurityRoleType._(
    '109001',
  );

  /// value109002
  static final SecurityRoleType value109002 = SecurityRoleType._(
    '109002',
  );

  /// value109003
  static final SecurityRoleType value109003 = SecurityRoleType._(
    '109003',
  );

  /// value109004
  static final SecurityRoleType value109004 = SecurityRoleType._(
    '109004',
  );

  /// value109005
  static final SecurityRoleType value109005 = SecurityRoleType._(
    '109005',
  );

  /// value109006
  static final SecurityRoleType value109006 = SecurityRoleType._(
    '109006',
  );

  /// value109007
  static final SecurityRoleType value109007 = SecurityRoleType._(
    '109007',
  );

  /// value109008
  static final SecurityRoleType value109008 = SecurityRoleType._(
    '109008',
  );

  /// value109009
  static final SecurityRoleType value109009 = SecurityRoleType._(
    '109009',
  );

  /// value109010
  static final SecurityRoleType value109010 = SecurityRoleType._(
    '109010',
  );

  /// value109011
  static final SecurityRoleType value109011 = SecurityRoleType._(
    '109011',
  );

  /// value109012
  static final SecurityRoleType value109012 = SecurityRoleType._(
    '109012',
  );

  /// value109013
  static final SecurityRoleType value109013 = SecurityRoleType._(
    '109013',
  );

  /// value109014
  static final SecurityRoleType value109014 = SecurityRoleType._(
    '109014',
  );

  /// value109015
  static final SecurityRoleType value109015 = SecurityRoleType._(
    '109015',
  );

  /// value109016
  static final SecurityRoleType value109016 = SecurityRoleType._(
    '109016',
  );

  /// value109017
  static final SecurityRoleType value109017 = SecurityRoleType._(
    '109017',
  );

  /// value109018
  static final SecurityRoleType value109018 = SecurityRoleType._(
    '109018',
  );

  /// value109019
  static final SecurityRoleType value109019 = SecurityRoleType._(
    '109019',
  );

  /// value109020
  static final SecurityRoleType value109020 = SecurityRoleType._(
    '109020',
  );

  /// value109021
  static final SecurityRoleType value109021 = SecurityRoleType._(
    '109021',
  );

  /// value109022
  static final SecurityRoleType value109022 = SecurityRoleType._(
    '109022',
  );

  /// value109023
  static final SecurityRoleType value109023 = SecurityRoleType._(
    '109023',
  );

  /// value109024
  static final SecurityRoleType value109024 = SecurityRoleType._(
    '109024',
  );

  /// value109025
  static final SecurityRoleType value109025 = SecurityRoleType._(
    '109025',
  );

  /// value109026
  static final SecurityRoleType value109026 = SecurityRoleType._(
    '109026',
  );

  /// value109027
  static final SecurityRoleType value109027 = SecurityRoleType._(
    '109027',
  );

  /// value109028
  static final SecurityRoleType value109028 = SecurityRoleType._(
    '109028',
  );

  /// value109029
  static final SecurityRoleType value109029 = SecurityRoleType._(
    '109029',
  );

  /// value109030
  static final SecurityRoleType value109030 = SecurityRoleType._(
    '109030',
  );

  /// value109031
  static final SecurityRoleType value109031 = SecurityRoleType._(
    '109031',
  );

  /// value109032
  static final SecurityRoleType value109032 = SecurityRoleType._(
    '109032',
  );

  /// value109033
  static final SecurityRoleType value109033 = SecurityRoleType._(
    '109033',
  );

  /// value109034
  static final SecurityRoleType value109034 = SecurityRoleType._(
    '109034',
  );

  /// value109035
  static final SecurityRoleType value109035 = SecurityRoleType._(
    '109035',
  );

  /// value109036
  static final SecurityRoleType value109036 = SecurityRoleType._(
    '109036',
  );

  /// value109037
  static final SecurityRoleType value109037 = SecurityRoleType._(
    '109037',
  );

  /// value109038
  static final SecurityRoleType value109038 = SecurityRoleType._(
    '109038',
  );

  /// value109039
  static final SecurityRoleType value109039 = SecurityRoleType._(
    '109039',
  );

  /// value109040
  static final SecurityRoleType value109040 = SecurityRoleType._(
    '109040',
  );

  /// value109041
  static final SecurityRoleType value109041 = SecurityRoleType._(
    '109041',
  );

  /// value109042
  static final SecurityRoleType value109042 = SecurityRoleType._(
    '109042',
  );

  /// value109043
  static final SecurityRoleType value109043 = SecurityRoleType._(
    '109043',
  );

  /// value109044
  static final SecurityRoleType value109044 = SecurityRoleType._(
    '109044',
  );

  /// value109045
  static final SecurityRoleType value109045 = SecurityRoleType._(
    '109045',
  );

  /// value109046
  static final SecurityRoleType value109046 = SecurityRoleType._(
    '109046',
  );

  /// value109047
  static final SecurityRoleType value109047 = SecurityRoleType._(
    '109047',
  );

  /// value109048
  static final SecurityRoleType value109048 = SecurityRoleType._(
    '109048',
  );

  /// value109049
  static final SecurityRoleType value109049 = SecurityRoleType._(
    '109049',
  );

  /// value109050
  static final SecurityRoleType value109050 = SecurityRoleType._(
    '109050',
  );

  /// value109051
  static final SecurityRoleType value109051 = SecurityRoleType._(
    '109051',
  );

  /// value109052
  static final SecurityRoleType value109052 = SecurityRoleType._(
    '109052',
  );

  /// value109053
  static final SecurityRoleType value109053 = SecurityRoleType._(
    '109053',
  );

  /// value109054
  static final SecurityRoleType value109054 = SecurityRoleType._(
    '109054',
  );

  /// value109055
  static final SecurityRoleType value109055 = SecurityRoleType._(
    '109055',
  );

  /// value109056
  static final SecurityRoleType value109056 = SecurityRoleType._(
    '109056',
  );

  /// value109057
  static final SecurityRoleType value109057 = SecurityRoleType._(
    '109057',
  );

  /// value109058
  static final SecurityRoleType value109058 = SecurityRoleType._(
    '109058',
  );

  /// value109059
  static final SecurityRoleType value109059 = SecurityRoleType._(
    '109059',
  );

  /// value109060
  static final SecurityRoleType value109060 = SecurityRoleType._(
    '109060',
  );

  /// value109061
  static final SecurityRoleType value109061 = SecurityRoleType._(
    '109061',
  );

  /// value109063
  static final SecurityRoleType value109063 = SecurityRoleType._(
    '109063',
  );

  /// value109070
  static final SecurityRoleType value109070 = SecurityRoleType._(
    '109070',
  );

  /// value109071
  static final SecurityRoleType value109071 = SecurityRoleType._(
    '109071',
  );

  /// value109072
  static final SecurityRoleType value109072 = SecurityRoleType._(
    '109072',
  );

  /// value109073
  static final SecurityRoleType value109073 = SecurityRoleType._(
    '109073',
  );

  /// value109080
  static final SecurityRoleType value109080 = SecurityRoleType._(
    '109080',
  );

  /// value109081
  static final SecurityRoleType value109081 = SecurityRoleType._(
    '109081',
  );

  /// value109082
  static final SecurityRoleType value109082 = SecurityRoleType._(
    '109082',
  );

  /// value109083
  static final SecurityRoleType value109083 = SecurityRoleType._(
    '109083',
  );

  /// value109091
  static final SecurityRoleType value109091 = SecurityRoleType._(
    '109091',
  );

  /// value109092
  static final SecurityRoleType value109092 = SecurityRoleType._(
    '109092',
  );

  /// value109093
  static final SecurityRoleType value109093 = SecurityRoleType._(
    '109093',
  );

  /// value109094
  static final SecurityRoleType value109094 = SecurityRoleType._(
    '109094',
  );

  /// value109095
  static final SecurityRoleType value109095 = SecurityRoleType._(
    '109095',
  );

  /// value109096
  static final SecurityRoleType value109096 = SecurityRoleType._(
    '109096',
  );

  /// value109101
  static final SecurityRoleType value109101 = SecurityRoleType._(
    '109101',
  );

  /// value109102
  static final SecurityRoleType value109102 = SecurityRoleType._(
    '109102',
  );

  /// value109103
  static final SecurityRoleType value109103 = SecurityRoleType._(
    '109103',
  );

  /// value109104
  static final SecurityRoleType value109104 = SecurityRoleType._(
    '109104',
  );

  /// value109105
  static final SecurityRoleType value109105 = SecurityRoleType._(
    '109105',
  );

  /// value109106
  static final SecurityRoleType value109106 = SecurityRoleType._(
    '109106',
  );

  /// value109110
  static final SecurityRoleType value109110 = SecurityRoleType._(
    '109110',
  );

  /// value109111
  static final SecurityRoleType value109111 = SecurityRoleType._(
    '109111',
  );

  /// value109112
  static final SecurityRoleType value109112 = SecurityRoleType._(
    '109112',
  );

  /// value109113
  static final SecurityRoleType value109113 = SecurityRoleType._(
    '109113',
  );

  /// value109114
  static final SecurityRoleType value109114 = SecurityRoleType._(
    '109114',
  );

  /// value109115
  static final SecurityRoleType value109115 = SecurityRoleType._(
    '109115',
  );

  /// value109116
  static final SecurityRoleType value109116 = SecurityRoleType._(
    '109116',
  );

  /// value109117
  static final SecurityRoleType value109117 = SecurityRoleType._(
    '109117',
  );

  /// value109120
  static final SecurityRoleType value109120 = SecurityRoleType._(
    '109120',
  );

  /// value109121
  static final SecurityRoleType value109121 = SecurityRoleType._(
    '109121',
  );

  /// value109122
  static final SecurityRoleType value109122 = SecurityRoleType._(
    '109122',
  );

  /// value109123
  static final SecurityRoleType value109123 = SecurityRoleType._(
    '109123',
  );

  /// value109124
  static final SecurityRoleType value109124 = SecurityRoleType._(
    '109124',
  );

  /// value109125
  static final SecurityRoleType value109125 = SecurityRoleType._(
    '109125',
  );

  /// value109132
  static final SecurityRoleType value109132 = SecurityRoleType._(
    '109132',
  );

  /// value109133
  static final SecurityRoleType value109133 = SecurityRoleType._(
    '109133',
  );

  /// value109134
  static final SecurityRoleType value109134 = SecurityRoleType._(
    '109134',
  );

  /// value109135
  static final SecurityRoleType value109135 = SecurityRoleType._(
    '109135',
  );

  /// value109136
  static final SecurityRoleType value109136 = SecurityRoleType._(
    '109136',
  );

  /// value109200
  static final SecurityRoleType value109200 = SecurityRoleType._(
    '109200',
  );

  /// value109201
  static final SecurityRoleType value109201 = SecurityRoleType._(
    '109201',
  );

  /// value109202
  static final SecurityRoleType value109202 = SecurityRoleType._(
    '109202',
  );

  /// value109203
  static final SecurityRoleType value109203 = SecurityRoleType._(
    '109203',
  );

  /// value109204
  static final SecurityRoleType value109204 = SecurityRoleType._(
    '109204',
  );

  /// value109205
  static final SecurityRoleType value109205 = SecurityRoleType._(
    '109205',
  );

  /// value109206
  static final SecurityRoleType value109206 = SecurityRoleType._(
    '109206',
  );

  /// value109207
  static final SecurityRoleType value109207 = SecurityRoleType._(
    '109207',
  );

  /// value109208
  static final SecurityRoleType value109208 = SecurityRoleType._(
    '109208',
  );

  /// value109209
  static final SecurityRoleType value109209 = SecurityRoleType._(
    '109209',
  );

  /// value109210
  static final SecurityRoleType value109210 = SecurityRoleType._(
    '109210',
  );

  /// value109211
  static final SecurityRoleType value109211 = SecurityRoleType._(
    '109211',
  );

  /// value109212
  static final SecurityRoleType value109212 = SecurityRoleType._(
    '109212',
  );

  /// value109213
  static final SecurityRoleType value109213 = SecurityRoleType._(
    '109213',
  );

  /// value109214
  static final SecurityRoleType value109214 = SecurityRoleType._(
    '109214',
  );

  /// value109215
  static final SecurityRoleType value109215 = SecurityRoleType._(
    '109215',
  );

  /// value109216
  static final SecurityRoleType value109216 = SecurityRoleType._(
    '109216',
  );

  /// value109217
  static final SecurityRoleType value109217 = SecurityRoleType._(
    '109217',
  );

  /// value109218
  static final SecurityRoleType value109218 = SecurityRoleType._(
    '109218',
  );

  /// value109219
  static final SecurityRoleType value109219 = SecurityRoleType._(
    '109219',
  );

  /// value109220
  static final SecurityRoleType value109220 = SecurityRoleType._(
    '109220',
  );

  /// value109221
  static final SecurityRoleType value109221 = SecurityRoleType._(
    '109221',
  );

  /// value109222
  static final SecurityRoleType value109222 = SecurityRoleType._(
    '109222',
  );

  /// value109701
  static final SecurityRoleType value109701 = SecurityRoleType._(
    '109701',
  );

  /// value109702
  static final SecurityRoleType value109702 = SecurityRoleType._(
    '109702',
  );

  /// value109703
  static final SecurityRoleType value109703 = SecurityRoleType._(
    '109703',
  );

  /// value109704
  static final SecurityRoleType value109704 = SecurityRoleType._(
    '109704',
  );

  /// value109705
  static final SecurityRoleType value109705 = SecurityRoleType._(
    '109705',
  );

  /// value109706
  static final SecurityRoleType value109706 = SecurityRoleType._(
    '109706',
  );

  /// value109707
  static final SecurityRoleType value109707 = SecurityRoleType._(
    '109707',
  );

  /// value109708
  static final SecurityRoleType value109708 = SecurityRoleType._(
    '109708',
  );

  /// value109709
  static final SecurityRoleType value109709 = SecurityRoleType._(
    '109709',
  );

  /// value109710
  static final SecurityRoleType value109710 = SecurityRoleType._(
    '109710',
  );

  /// value109801
  static final SecurityRoleType value109801 = SecurityRoleType._(
    '109801',
  );

  /// value109802
  static final SecurityRoleType value109802 = SecurityRoleType._(
    '109802',
  );

  /// value109803
  static final SecurityRoleType value109803 = SecurityRoleType._(
    '109803',
  );

  /// value109804
  static final SecurityRoleType value109804 = SecurityRoleType._(
    '109804',
  );

  /// value109805
  static final SecurityRoleType value109805 = SecurityRoleType._(
    '109805',
  );

  /// value109806
  static final SecurityRoleType value109806 = SecurityRoleType._(
    '109806',
  );

  /// value109807
  static final SecurityRoleType value109807 = SecurityRoleType._(
    '109807',
  );

  /// value109808
  static final SecurityRoleType value109808 = SecurityRoleType._(
    '109808',
  );

  /// value109809
  static final SecurityRoleType value109809 = SecurityRoleType._(
    '109809',
  );

  /// value109810
  static final SecurityRoleType value109810 = SecurityRoleType._(
    '109810',
  );

  /// value109811
  static final SecurityRoleType value109811 = SecurityRoleType._(
    '109811',
  );

  /// value109812
  static final SecurityRoleType value109812 = SecurityRoleType._(
    '109812',
  );

  /// value109813
  static final SecurityRoleType value109813 = SecurityRoleType._(
    '109813',
  );

  /// value109814
  static final SecurityRoleType value109814 = SecurityRoleType._(
    '109814',
  );

  /// value109815
  static final SecurityRoleType value109815 = SecurityRoleType._(
    '109815',
  );

  /// value109816
  static final SecurityRoleType value109816 = SecurityRoleType._(
    '109816',
  );

  /// value109817
  static final SecurityRoleType value109817 = SecurityRoleType._(
    '109817',
  );

  /// value109818
  static final SecurityRoleType value109818 = SecurityRoleType._(
    '109818',
  );

  /// value109819
  static final SecurityRoleType value109819 = SecurityRoleType._(
    '109819',
  );

  /// value109820
  static final SecurityRoleType value109820 = SecurityRoleType._(
    '109820',
  );

  /// value109821
  static final SecurityRoleType value109821 = SecurityRoleType._(
    '109821',
  );

  /// value109822
  static final SecurityRoleType value109822 = SecurityRoleType._(
    '109822',
  );

  /// value109823
  static final SecurityRoleType value109823 = SecurityRoleType._(
    '109823',
  );

  /// value109824
  static final SecurityRoleType value109824 = SecurityRoleType._(
    '109824',
  );

  /// value109825
  static final SecurityRoleType value109825 = SecurityRoleType._(
    '109825',
  );

  /// value109826
  static final SecurityRoleType value109826 = SecurityRoleType._(
    '109826',
  );

  /// value109827
  static final SecurityRoleType value109827 = SecurityRoleType._(
    '109827',
  );

  /// value109828
  static final SecurityRoleType value109828 = SecurityRoleType._(
    '109828',
  );

  /// value109829
  static final SecurityRoleType value109829 = SecurityRoleType._(
    '109829',
  );

  /// value109830
  static final SecurityRoleType value109830 = SecurityRoleType._(
    '109830',
  );

  /// value109831
  static final SecurityRoleType value109831 = SecurityRoleType._(
    '109831',
  );

  /// value109832
  static final SecurityRoleType value109832 = SecurityRoleType._(
    '109832',
  );

  /// value109833
  static final SecurityRoleType value109833 = SecurityRoleType._(
    '109833',
  );

  /// value109834
  static final SecurityRoleType value109834 = SecurityRoleType._(
    '109834',
  );

  /// value109835
  static final SecurityRoleType value109835 = SecurityRoleType._(
    '109835',
  );

  /// value109836
  static final SecurityRoleType value109836 = SecurityRoleType._(
    '109836',
  );

  /// value109837
  static final SecurityRoleType value109837 = SecurityRoleType._(
    '109837',
  );

  /// value109838
  static final SecurityRoleType value109838 = SecurityRoleType._(
    '109838',
  );

  /// value109839
  static final SecurityRoleType value109839 = SecurityRoleType._(
    '109839',
  );

  /// value109840
  static final SecurityRoleType value109840 = SecurityRoleType._(
    '109840',
  );

  /// value109841
  static final SecurityRoleType value109841 = SecurityRoleType._(
    '109841',
  );

  /// value109842
  static final SecurityRoleType value109842 = SecurityRoleType._(
    '109842',
  );

  /// value109843
  static final SecurityRoleType value109843 = SecurityRoleType._(
    '109843',
  );

  /// value109844
  static final SecurityRoleType value109844 = SecurityRoleType._(
    '109844',
  );

  /// value109845
  static final SecurityRoleType value109845 = SecurityRoleType._(
    '109845',
  );

  /// value109846
  static final SecurityRoleType value109846 = SecurityRoleType._(
    '109846',
  );

  /// value109847
  static final SecurityRoleType value109847 = SecurityRoleType._(
    '109847',
  );

  /// value109848
  static final SecurityRoleType value109848 = SecurityRoleType._(
    '109848',
  );

  /// value109849
  static final SecurityRoleType value109849 = SecurityRoleType._(
    '109849',
  );

  /// value109850
  static final SecurityRoleType value109850 = SecurityRoleType._(
    '109850',
  );

  /// value109851
  static final SecurityRoleType value109851 = SecurityRoleType._(
    '109851',
  );

  /// value109852
  static final SecurityRoleType value109852 = SecurityRoleType._(
    '109852',
  );

  /// value109853
  static final SecurityRoleType value109853 = SecurityRoleType._(
    '109853',
  );

  /// value109854
  static final SecurityRoleType value109854 = SecurityRoleType._(
    '109854',
  );

  /// value109855
  static final SecurityRoleType value109855 = SecurityRoleType._(
    '109855',
  );

  /// value109856
  static final SecurityRoleType value109856 = SecurityRoleType._(
    '109856',
  );

  /// value109857
  static final SecurityRoleType value109857 = SecurityRoleType._(
    '109857',
  );

  /// value109858
  static final SecurityRoleType value109858 = SecurityRoleType._(
    '109858',
  );

  /// value109859
  static final SecurityRoleType value109859 = SecurityRoleType._(
    '109859',
  );

  /// value109860
  static final SecurityRoleType value109860 = SecurityRoleType._(
    '109860',
  );

  /// value109861
  static final SecurityRoleType value109861 = SecurityRoleType._(
    '109861',
  );

  /// value109862
  static final SecurityRoleType value109862 = SecurityRoleType._(
    '109862',
  );

  /// value109863
  static final SecurityRoleType value109863 = SecurityRoleType._(
    '109863',
  );

  /// value109864
  static final SecurityRoleType value109864 = SecurityRoleType._(
    '109864',
  );

  /// value109865
  static final SecurityRoleType value109865 = SecurityRoleType._(
    '109865',
  );

  /// value109866
  static final SecurityRoleType value109866 = SecurityRoleType._(
    '109866',
  );

  /// value109867
  static final SecurityRoleType value109867 = SecurityRoleType._(
    '109867',
  );

  /// value109868
  static final SecurityRoleType value109868 = SecurityRoleType._(
    '109868',
  );

  /// value109869
  static final SecurityRoleType value109869 = SecurityRoleType._(
    '109869',
  );

  /// value109870
  static final SecurityRoleType value109870 = SecurityRoleType._(
    '109870',
  );

  /// value109871
  static final SecurityRoleType value109871 = SecurityRoleType._(
    '109871',
  );

  /// value109872
  static final SecurityRoleType value109872 = SecurityRoleType._(
    '109872',
  );

  /// value109873
  static final SecurityRoleType value109873 = SecurityRoleType._(
    '109873',
  );

  /// value109874
  static final SecurityRoleType value109874 = SecurityRoleType._(
    '109874',
  );

  /// value109875
  static final SecurityRoleType value109875 = SecurityRoleType._(
    '109875',
  );

  /// value109876
  static final SecurityRoleType value109876 = SecurityRoleType._(
    '109876',
  );

  /// value109877
  static final SecurityRoleType value109877 = SecurityRoleType._(
    '109877',
  );

  /// value109878
  static final SecurityRoleType value109878 = SecurityRoleType._(
    '109878',
  );

  /// value109879
  static final SecurityRoleType value109879 = SecurityRoleType._(
    '109879',
  );

  /// value109880
  static final SecurityRoleType value109880 = SecurityRoleType._(
    '109880',
  );

  /// value109881
  static final SecurityRoleType value109881 = SecurityRoleType._(
    '109881',
  );

  /// value109901
  static final SecurityRoleType value109901 = SecurityRoleType._(
    '109901',
  );

  /// value109902
  static final SecurityRoleType value109902 = SecurityRoleType._(
    '109902',
  );

  /// value109903
  static final SecurityRoleType value109903 = SecurityRoleType._(
    '109903',
  );

  /// value109904
  static final SecurityRoleType value109904 = SecurityRoleType._(
    '109904',
  );

  /// value109905
  static final SecurityRoleType value109905 = SecurityRoleType._(
    '109905',
  );

  /// value109906
  static final SecurityRoleType value109906 = SecurityRoleType._(
    '109906',
  );

  /// value109907
  static final SecurityRoleType value109907 = SecurityRoleType._(
    '109907',
  );

  /// value109908
  static final SecurityRoleType value109908 = SecurityRoleType._(
    '109908',
  );

  /// value109909
  static final SecurityRoleType value109909 = SecurityRoleType._(
    '109909',
  );

  /// value109910
  static final SecurityRoleType value109910 = SecurityRoleType._(
    '109910',
  );

  /// value109911
  static final SecurityRoleType value109911 = SecurityRoleType._(
    '109911',
  );

  /// value109912
  static final SecurityRoleType value109912 = SecurityRoleType._(
    '109912',
  );

  /// value109913
  static final SecurityRoleType value109913 = SecurityRoleType._(
    '109913',
  );

  /// value109914
  static final SecurityRoleType value109914 = SecurityRoleType._(
    '109914',
  );

  /// value109915
  static final SecurityRoleType value109915 = SecurityRoleType._(
    '109915',
  );

  /// value109916
  static final SecurityRoleType value109916 = SecurityRoleType._(
    '109916',
  );

  /// value109917
  static final SecurityRoleType value109917 = SecurityRoleType._(
    '109917',
  );

  /// value109918
  static final SecurityRoleType value109918 = SecurityRoleType._(
    '109918',
  );

  /// value109919
  static final SecurityRoleType value109919 = SecurityRoleType._(
    '109919',
  );

  /// value109920
  static final SecurityRoleType value109920 = SecurityRoleType._(
    '109920',
  );

  /// value109921
  static final SecurityRoleType value109921 = SecurityRoleType._(
    '109921',
  );

  /// value109931
  static final SecurityRoleType value109931 = SecurityRoleType._(
    '109931',
  );

  /// value109932
  static final SecurityRoleType value109932 = SecurityRoleType._(
    '109932',
  );

  /// value109933
  static final SecurityRoleType value109933 = SecurityRoleType._(
    '109933',
  );

  /// value109941
  static final SecurityRoleType value109941 = SecurityRoleType._(
    '109941',
  );

  /// value109943
  static final SecurityRoleType value109943 = SecurityRoleType._(
    '109943',
  );

  /// value109991
  static final SecurityRoleType value109991 = SecurityRoleType._(
    '109991',
  );

  /// value109992
  static final SecurityRoleType value109992 = SecurityRoleType._(
    '109992',
  );

  /// value109993
  static final SecurityRoleType value109993 = SecurityRoleType._(
    '109993',
  );

  /// value109994
  static final SecurityRoleType value109994 = SecurityRoleType._(
    '109994',
  );

  /// value109995
  static final SecurityRoleType value109995 = SecurityRoleType._(
    '109995',
  );

  /// value109996
  static final SecurityRoleType value109996 = SecurityRoleType._(
    '109996',
  );

  /// value109997
  static final SecurityRoleType value109997 = SecurityRoleType._(
    '109997',
  );

  /// value109998
  static final SecurityRoleType value109998 = SecurityRoleType._(
    '109998',
  );

  /// value109999
  static final SecurityRoleType value109999 = SecurityRoleType._(
    '109999',
  );

  /// value110001
  static final SecurityRoleType value110001 = SecurityRoleType._(
    '110001',
  );

  /// value110002
  static final SecurityRoleType value110002 = SecurityRoleType._(
    '110002',
  );

  /// value110003
  static final SecurityRoleType value110003 = SecurityRoleType._(
    '110003',
  );

  /// value110004
  static final SecurityRoleType value110004 = SecurityRoleType._(
    '110004',
  );

  /// value110005
  static final SecurityRoleType value110005 = SecurityRoleType._(
    '110005',
  );

  /// value110006
  static final SecurityRoleType value110006 = SecurityRoleType._(
    '110006',
  );

  /// value110007
  static final SecurityRoleType value110007 = SecurityRoleType._(
    '110007',
  );

  /// value110008
  static final SecurityRoleType value110008 = SecurityRoleType._(
    '110008',
  );

  /// value110009
  static final SecurityRoleType value110009 = SecurityRoleType._(
    '110009',
  );

  /// value110010
  static final SecurityRoleType value110010 = SecurityRoleType._(
    '110010',
  );

  /// value110011
  static final SecurityRoleType value110011 = SecurityRoleType._(
    '110011',
  );

  /// value110012
  static final SecurityRoleType value110012 = SecurityRoleType._(
    '110012',
  );

  /// value110013
  static final SecurityRoleType value110013 = SecurityRoleType._(
    '110013',
  );

  /// value110020
  static final SecurityRoleType value110020 = SecurityRoleType._(
    '110020',
  );

  /// value110021
  static final SecurityRoleType value110021 = SecurityRoleType._(
    '110021',
  );

  /// value110022
  static final SecurityRoleType value110022 = SecurityRoleType._(
    '110022',
  );

  /// value110023
  static final SecurityRoleType value110023 = SecurityRoleType._(
    '110023',
  );

  /// value110024
  static final SecurityRoleType value110024 = SecurityRoleType._(
    '110024',
  );

  /// value110025
  static final SecurityRoleType value110025 = SecurityRoleType._(
    '110025',
  );

  /// value110026
  static final SecurityRoleType value110026 = SecurityRoleType._(
    '110026',
  );

  /// value110027
  static final SecurityRoleType value110027 = SecurityRoleType._(
    '110027',
  );

  /// value110028
  static final SecurityRoleType value110028 = SecurityRoleType._(
    '110028',
  );

  /// value110030
  static final SecurityRoleType value110030 = SecurityRoleType._(
    '110030',
  );

  /// value110031
  static final SecurityRoleType value110031 = SecurityRoleType._(
    '110031',
  );

  /// value110032
  static final SecurityRoleType value110032 = SecurityRoleType._(
    '110032',
  );

  /// value110033
  static final SecurityRoleType value110033 = SecurityRoleType._(
    '110033',
  );

  /// value110034
  static final SecurityRoleType value110034 = SecurityRoleType._(
    '110034',
  );

  /// value110035
  static final SecurityRoleType value110035 = SecurityRoleType._(
    '110035',
  );

  /// value110036
  static final SecurityRoleType value110036 = SecurityRoleType._(
    '110036',
  );

  /// value110037
  static final SecurityRoleType value110037 = SecurityRoleType._(
    '110037',
  );

  /// value110038
  static final SecurityRoleType value110038 = SecurityRoleType._(
    '110038',
  );

  /// value110100
  static final SecurityRoleType value110100 = SecurityRoleType._(
    '110100',
  );

  /// value110101
  static final SecurityRoleType value110101 = SecurityRoleType._(
    '110101',
  );

  /// value110102
  static final SecurityRoleType value110102 = SecurityRoleType._(
    '110102',
  );

  /// value110103
  static final SecurityRoleType value110103 = SecurityRoleType._(
    '110103',
  );

  /// value110104
  static final SecurityRoleType value110104 = SecurityRoleType._(
    '110104',
  );

  /// value110105
  static final SecurityRoleType value110105 = SecurityRoleType._(
    '110105',
  );

  /// value110106
  static final SecurityRoleType value110106 = SecurityRoleType._(
    '110106',
  );

  /// value110107
  static final SecurityRoleType value110107 = SecurityRoleType._(
    '110107',
  );

  /// value110108
  static final SecurityRoleType value110108 = SecurityRoleType._(
    '110108',
  );

  /// value110109
  static final SecurityRoleType value110109 = SecurityRoleType._(
    '110109',
  );

  /// value110110
  static final SecurityRoleType value110110 = SecurityRoleType._(
    '110110',
  );

  /// value110111
  static final SecurityRoleType value110111 = SecurityRoleType._(
    '110111',
  );

  /// value110112
  static final SecurityRoleType value110112 = SecurityRoleType._(
    '110112',
  );

  /// value110113
  static final SecurityRoleType value110113 = SecurityRoleType._(
    '110113',
  );

  /// value110114
  static final SecurityRoleType value110114 = SecurityRoleType._(
    '110114',
  );

  /// value110120
  static final SecurityRoleType value110120 = SecurityRoleType._(
    '110120',
  );

  /// value110121
  static final SecurityRoleType value110121 = SecurityRoleType._(
    '110121',
  );

  /// value110122
  static final SecurityRoleType value110122 = SecurityRoleType._(
    '110122',
  );

  /// value110123
  static final SecurityRoleType value110123 = SecurityRoleType._(
    '110123',
  );

  /// value110124
  static final SecurityRoleType value110124 = SecurityRoleType._(
    '110124',
  );

  /// value110125
  static final SecurityRoleType value110125 = SecurityRoleType._(
    '110125',
  );

  /// value110126
  static final SecurityRoleType value110126 = SecurityRoleType._(
    '110126',
  );

  /// value110127
  static final SecurityRoleType value110127 = SecurityRoleType._(
    '110127',
  );

  /// value110128
  static final SecurityRoleType value110128 = SecurityRoleType._(
    '110128',
  );

  /// value110129
  static final SecurityRoleType value110129 = SecurityRoleType._(
    '110129',
  );

  /// value110130
  static final SecurityRoleType value110130 = SecurityRoleType._(
    '110130',
  );

  /// value110131
  static final SecurityRoleType value110131 = SecurityRoleType._(
    '110131',
  );

  /// value110132
  static final SecurityRoleType value110132 = SecurityRoleType._(
    '110132',
  );

  /// value110133
  static final SecurityRoleType value110133 = SecurityRoleType._(
    '110133',
  );

  /// value110134
  static final SecurityRoleType value110134 = SecurityRoleType._(
    '110134',
  );

  /// value110135
  static final SecurityRoleType value110135 = SecurityRoleType._(
    '110135',
  );

  /// value110136
  static final SecurityRoleType value110136 = SecurityRoleType._(
    '110136',
  );

  /// value110137
  static final SecurityRoleType value110137 = SecurityRoleType._(
    '110137',
  );

  /// value110138
  static final SecurityRoleType value110138 = SecurityRoleType._(
    '110138',
  );

  /// value110139
  static final SecurityRoleType value110139 = SecurityRoleType._(
    '110139',
  );

  /// value110140
  static final SecurityRoleType value110140 = SecurityRoleType._(
    '110140',
  );

  /// value110141
  static final SecurityRoleType value110141 = SecurityRoleType._(
    '110141',
  );

  /// value110142
  static final SecurityRoleType value110142 = SecurityRoleType._(
    '110142',
  );

  /// value110150
  static final SecurityRoleType value110150 = SecurityRoleType._(
    '110150',
  );

  /// value110151
  static final SecurityRoleType value110151 = SecurityRoleType._(
    '110151',
  );

  /// value110152
  static final SecurityRoleType value110152 = SecurityRoleType._(
    '110152',
  );

  /// value110153
  static final SecurityRoleType value110153 = SecurityRoleType._(
    '110153',
  );

  /// value110154
  static final SecurityRoleType value110154 = SecurityRoleType._(
    '110154',
  );

  /// value110155
  static final SecurityRoleType value110155 = SecurityRoleType._(
    '110155',
  );

  /// value110180
  static final SecurityRoleType value110180 = SecurityRoleType._(
    '110180',
  );

  /// value110181
  static final SecurityRoleType value110181 = SecurityRoleType._(
    '110181',
  );

  /// value110182
  static final SecurityRoleType value110182 = SecurityRoleType._(
    '110182',
  );

  /// value110190
  static final SecurityRoleType value110190 = SecurityRoleType._(
    '110190',
  );

  /// value110500
  static final SecurityRoleType value110500 = SecurityRoleType._(
    '110500',
  );

  /// value110501
  static final SecurityRoleType value110501 = SecurityRoleType._(
    '110501',
  );

  /// value110502
  static final SecurityRoleType value110502 = SecurityRoleType._(
    '110502',
  );

  /// value110503
  static final SecurityRoleType value110503 = SecurityRoleType._(
    '110503',
  );

  /// value110504
  static final SecurityRoleType value110504 = SecurityRoleType._(
    '110504',
  );

  /// value110505
  static final SecurityRoleType value110505 = SecurityRoleType._(
    '110505',
  );

  /// value110506
  static final SecurityRoleType value110506 = SecurityRoleType._(
    '110506',
  );

  /// value110507
  static final SecurityRoleType value110507 = SecurityRoleType._(
    '110507',
  );

  /// value110508
  static final SecurityRoleType value110508 = SecurityRoleType._(
    '110508',
  );

  /// value110509
  static final SecurityRoleType value110509 = SecurityRoleType._(
    '110509',
  );

  /// value110510
  static final SecurityRoleType value110510 = SecurityRoleType._(
    '110510',
  );

  /// value110511
  static final SecurityRoleType value110511 = SecurityRoleType._(
    '110511',
  );

  /// value110512
  static final SecurityRoleType value110512 = SecurityRoleType._(
    '110512',
  );

  /// value110513
  static final SecurityRoleType value110513 = SecurityRoleType._(
    '110513',
  );

  /// value110514
  static final SecurityRoleType value110514 = SecurityRoleType._(
    '110514',
  );

  /// value110515
  static final SecurityRoleType value110515 = SecurityRoleType._(
    '110515',
  );

  /// value110516
  static final SecurityRoleType value110516 = SecurityRoleType._(
    '110516',
  );

  /// value110518
  static final SecurityRoleType value110518 = SecurityRoleType._(
    '110518',
  );

  /// value110519
  static final SecurityRoleType value110519 = SecurityRoleType._(
    '110519',
  );

  /// value110521
  static final SecurityRoleType value110521 = SecurityRoleType._(
    '110521',
  );

  /// value110522
  static final SecurityRoleType value110522 = SecurityRoleType._(
    '110522',
  );

  /// value110523
  static final SecurityRoleType value110523 = SecurityRoleType._(
    '110523',
  );

  /// value110524
  static final SecurityRoleType value110524 = SecurityRoleType._(
    '110524',
  );

  /// value110526
  static final SecurityRoleType value110526 = SecurityRoleType._(
    '110526',
  );

  /// value110527
  static final SecurityRoleType value110527 = SecurityRoleType._(
    '110527',
  );

  /// value110528
  static final SecurityRoleType value110528 = SecurityRoleType._(
    '110528',
  );

  /// value110529
  static final SecurityRoleType value110529 = SecurityRoleType._(
    '110529',
  );

  /// value110700
  static final SecurityRoleType value110700 = SecurityRoleType._(
    '110700',
  );

  /// value110701
  static final SecurityRoleType value110701 = SecurityRoleType._(
    '110701',
  );

  /// value110702
  static final SecurityRoleType value110702 = SecurityRoleType._(
    '110702',
  );

  /// value110703
  static final SecurityRoleType value110703 = SecurityRoleType._(
    '110703',
  );

  /// value110704
  static final SecurityRoleType value110704 = SecurityRoleType._(
    '110704',
  );

  /// value110705
  static final SecurityRoleType value110705 = SecurityRoleType._(
    '110705',
  );

  /// value110706
  static final SecurityRoleType value110706 = SecurityRoleType._(
    '110706',
  );

  /// value110800
  static final SecurityRoleType value110800 = SecurityRoleType._(
    '110800',
  );

  /// value110801
  static final SecurityRoleType value110801 = SecurityRoleType._(
    '110801',
  );

  /// value110802
  static final SecurityRoleType value110802 = SecurityRoleType._(
    '110802',
  );

  /// value110803
  static final SecurityRoleType value110803 = SecurityRoleType._(
    '110803',
  );

  /// value110804
  static final SecurityRoleType value110804 = SecurityRoleType._(
    '110804',
  );

  /// value110805
  static final SecurityRoleType value110805 = SecurityRoleType._(
    '110805',
  );

  /// value110806
  static final SecurityRoleType value110806 = SecurityRoleType._(
    '110806',
  );

  /// value110807
  static final SecurityRoleType value110807 = SecurityRoleType._(
    '110807',
  );

  /// value110808
  static final SecurityRoleType value110808 = SecurityRoleType._(
    '110808',
  );

  /// value110809
  static final SecurityRoleType value110809 = SecurityRoleType._(
    '110809',
  );

  /// value110810
  static final SecurityRoleType value110810 = SecurityRoleType._(
    '110810',
  );

  /// value110811
  static final SecurityRoleType value110811 = SecurityRoleType._(
    '110811',
  );

  /// value110812
  static final SecurityRoleType value110812 = SecurityRoleType._(
    '110812',
  );

  /// value110813
  static final SecurityRoleType value110813 = SecurityRoleType._(
    '110813',
  );

  /// value110814
  static final SecurityRoleType value110814 = SecurityRoleType._(
    '110814',
  );

  /// value110815
  static final SecurityRoleType value110815 = SecurityRoleType._(
    '110815',
  );

  /// value110816
  static final SecurityRoleType value110816 = SecurityRoleType._(
    '110816',
  );

  /// value110817
  static final SecurityRoleType value110817 = SecurityRoleType._(
    '110817',
  );

  /// value110818
  static final SecurityRoleType value110818 = SecurityRoleType._(
    '110818',
  );

  /// value110819
  static final SecurityRoleType value110819 = SecurityRoleType._(
    '110819',
  );

  /// value110820
  static final SecurityRoleType value110820 = SecurityRoleType._(
    '110820',
  );

  /// value110821
  static final SecurityRoleType value110821 = SecurityRoleType._(
    '110821',
  );

  /// value110822
  static final SecurityRoleType value110822 = SecurityRoleType._(
    '110822',
  );

  /// value110823
  static final SecurityRoleType value110823 = SecurityRoleType._(
    '110823',
  );

  /// value110824
  static final SecurityRoleType value110824 = SecurityRoleType._(
    '110824',
  );

  /// value110825
  static final SecurityRoleType value110825 = SecurityRoleType._(
    '110825',
  );

  /// value110826
  static final SecurityRoleType value110826 = SecurityRoleType._(
    '110826',
  );

  /// value110827
  static final SecurityRoleType value110827 = SecurityRoleType._(
    '110827',
  );

  /// value110828
  static final SecurityRoleType value110828 = SecurityRoleType._(
    '110828',
  );

  /// value110829
  static final SecurityRoleType value110829 = SecurityRoleType._(
    '110829',
  );

  /// value110830
  static final SecurityRoleType value110830 = SecurityRoleType._(
    '110830',
  );

  /// value110831
  static final SecurityRoleType value110831 = SecurityRoleType._(
    '110831',
  );

  /// value110832
  static final SecurityRoleType value110832 = SecurityRoleType._(
    '110832',
  );

  /// value110833
  static final SecurityRoleType value110833 = SecurityRoleType._(
    '110833',
  );

  /// value110834
  static final SecurityRoleType value110834 = SecurityRoleType._(
    '110834',
  );

  /// value110835
  static final SecurityRoleType value110835 = SecurityRoleType._(
    '110835',
  );

  /// value110836
  static final SecurityRoleType value110836 = SecurityRoleType._(
    '110836',
  );

  /// value110837
  static final SecurityRoleType value110837 = SecurityRoleType._(
    '110837',
  );

  /// value110838
  static final SecurityRoleType value110838 = SecurityRoleType._(
    '110838',
  );

  /// value110839
  static final SecurityRoleType value110839 = SecurityRoleType._(
    '110839',
  );

  /// value110840
  static final SecurityRoleType value110840 = SecurityRoleType._(
    '110840',
  );

  /// value110841
  static final SecurityRoleType value110841 = SecurityRoleType._(
    '110841',
  );

  /// value110842
  static final SecurityRoleType value110842 = SecurityRoleType._(
    '110842',
  );

  /// value110843
  static final SecurityRoleType value110843 = SecurityRoleType._(
    '110843',
  );

  /// value110844
  static final SecurityRoleType value110844 = SecurityRoleType._(
    '110844',
  );

  /// value110845
  static final SecurityRoleType value110845 = SecurityRoleType._(
    '110845',
  );

  /// value110846
  static final SecurityRoleType value110846 = SecurityRoleType._(
    '110846',
  );

  /// value110847
  static final SecurityRoleType value110847 = SecurityRoleType._(
    '110847',
  );

  /// value110848
  static final SecurityRoleType value110848 = SecurityRoleType._(
    '110848',
  );

  /// value110849
  static final SecurityRoleType value110849 = SecurityRoleType._(
    '110849',
  );

  /// value110850
  static final SecurityRoleType value110850 = SecurityRoleType._(
    '110850',
  );

  /// value110851
  static final SecurityRoleType value110851 = SecurityRoleType._(
    '110851',
  );

  /// value110852
  static final SecurityRoleType value110852 = SecurityRoleType._(
    '110852',
  );

  /// value110853
  static final SecurityRoleType value110853 = SecurityRoleType._(
    '110853',
  );

  /// value110854
  static final SecurityRoleType value110854 = SecurityRoleType._(
    '110854',
  );

  /// value110855
  static final SecurityRoleType value110855 = SecurityRoleType._(
    '110855',
  );

  /// value110856
  static final SecurityRoleType value110856 = SecurityRoleType._(
    '110856',
  );

  /// value110857
  static final SecurityRoleType value110857 = SecurityRoleType._(
    '110857',
  );

  /// value110858
  static final SecurityRoleType value110858 = SecurityRoleType._(
    '110858',
  );

  /// value110859
  static final SecurityRoleType value110859 = SecurityRoleType._(
    '110859',
  );

  /// value110860
  static final SecurityRoleType value110860 = SecurityRoleType._(
    '110860',
  );

  /// value110861
  static final SecurityRoleType value110861 = SecurityRoleType._(
    '110861',
  );

  /// value110862
  static final SecurityRoleType value110862 = SecurityRoleType._(
    '110862',
  );

  /// value110863
  static final SecurityRoleType value110863 = SecurityRoleType._(
    '110863',
  );

  /// value110864
  static final SecurityRoleType value110864 = SecurityRoleType._(
    '110864',
  );

  /// value110865
  static final SecurityRoleType value110865 = SecurityRoleType._(
    '110865',
  );

  /// value110866
  static final SecurityRoleType value110866 = SecurityRoleType._(
    '110866',
  );

  /// value110867
  static final SecurityRoleType value110867 = SecurityRoleType._(
    '110867',
  );

  /// value110868
  static final SecurityRoleType value110868 = SecurityRoleType._(
    '110868',
  );

  /// value110869
  static final SecurityRoleType value110869 = SecurityRoleType._(
    '110869',
  );

  /// value110870
  static final SecurityRoleType value110870 = SecurityRoleType._(
    '110870',
  );

  /// value110871
  static final SecurityRoleType value110871 = SecurityRoleType._(
    '110871',
  );

  /// value110872
  static final SecurityRoleType value110872 = SecurityRoleType._(
    '110872',
  );

  /// value110873
  static final SecurityRoleType value110873 = SecurityRoleType._(
    '110873',
  );

  /// value110874
  static final SecurityRoleType value110874 = SecurityRoleType._(
    '110874',
  );

  /// value110875
  static final SecurityRoleType value110875 = SecurityRoleType._(
    '110875',
  );

  /// value110876
  static final SecurityRoleType value110876 = SecurityRoleType._(
    '110876',
  );

  /// value110877
  static final SecurityRoleType value110877 = SecurityRoleType._(
    '110877',
  );

  /// value110901
  static final SecurityRoleType value110901 = SecurityRoleType._(
    '110901',
  );

  /// value110902
  static final SecurityRoleType value110902 = SecurityRoleType._(
    '110902',
  );

  /// value110903
  static final SecurityRoleType value110903 = SecurityRoleType._(
    '110903',
  );

  /// value110904
  static final SecurityRoleType value110904 = SecurityRoleType._(
    '110904',
  );

  /// value110905
  static final SecurityRoleType value110905 = SecurityRoleType._(
    '110905',
  );

  /// value110906
  static final SecurityRoleType value110906 = SecurityRoleType._(
    '110906',
  );

  /// value110907
  static final SecurityRoleType value110907 = SecurityRoleType._(
    '110907',
  );

  /// value110908
  static final SecurityRoleType value110908 = SecurityRoleType._(
    '110908',
  );

  /// value110909
  static final SecurityRoleType value110909 = SecurityRoleType._(
    '110909',
  );

  /// value110910
  static final SecurityRoleType value110910 = SecurityRoleType._(
    '110910',
  );

  /// value110911
  static final SecurityRoleType value110911 = SecurityRoleType._(
    '110911',
  );

  /// value111001
  static final SecurityRoleType value111001 = SecurityRoleType._(
    '111001',
  );

  /// value111002
  static final SecurityRoleType value111002 = SecurityRoleType._(
    '111002',
  );

  /// value111003
  static final SecurityRoleType value111003 = SecurityRoleType._(
    '111003',
  );

  /// value111004
  static final SecurityRoleType value111004 = SecurityRoleType._(
    '111004',
  );

  /// value111005
  static final SecurityRoleType value111005 = SecurityRoleType._(
    '111005',
  );

  /// value111006
  static final SecurityRoleType value111006 = SecurityRoleType._(
    '111006',
  );

  /// value111007
  static final SecurityRoleType value111007 = SecurityRoleType._(
    '111007',
  );

  /// value111008
  static final SecurityRoleType value111008 = SecurityRoleType._(
    '111008',
  );

  /// value111009
  static final SecurityRoleType value111009 = SecurityRoleType._(
    '111009',
  );

  /// value111010
  static final SecurityRoleType value111010 = SecurityRoleType._(
    '111010',
  );

  /// value111011
  static final SecurityRoleType value111011 = SecurityRoleType._(
    '111011',
  );

  /// value111012
  static final SecurityRoleType value111012 = SecurityRoleType._(
    '111012',
  );

  /// value111013
  static final SecurityRoleType value111013 = SecurityRoleType._(
    '111013',
  );

  /// value111014
  static final SecurityRoleType value111014 = SecurityRoleType._(
    '111014',
  );

  /// value111015
  static final SecurityRoleType value111015 = SecurityRoleType._(
    '111015',
  );

  /// value111016
  static final SecurityRoleType value111016 = SecurityRoleType._(
    '111016',
  );

  /// value111017
  static final SecurityRoleType value111017 = SecurityRoleType._(
    '111017',
  );

  /// value111018
  static final SecurityRoleType value111018 = SecurityRoleType._(
    '111018',
  );

  /// value111019
  static final SecurityRoleType value111019 = SecurityRoleType._(
    '111019',
  );

  /// value111020
  static final SecurityRoleType value111020 = SecurityRoleType._(
    '111020',
  );

  /// value111021
  static final SecurityRoleType value111021 = SecurityRoleType._(
    '111021',
  );

  /// value111022
  static final SecurityRoleType value111022 = SecurityRoleType._(
    '111022',
  );

  /// value111023
  static final SecurityRoleType value111023 = SecurityRoleType._(
    '111023',
  );

  /// value111024
  static final SecurityRoleType value111024 = SecurityRoleType._(
    '111024',
  );

  /// value111025
  static final SecurityRoleType value111025 = SecurityRoleType._(
    '111025',
  );

  /// value111026
  static final SecurityRoleType value111026 = SecurityRoleType._(
    '111026',
  );

  /// value111027
  static final SecurityRoleType value111027 = SecurityRoleType._(
    '111027',
  );

  /// value111028
  static final SecurityRoleType value111028 = SecurityRoleType._(
    '111028',
  );

  /// value111029
  static final SecurityRoleType value111029 = SecurityRoleType._(
    '111029',
  );

  /// value111030
  static final SecurityRoleType value111030 = SecurityRoleType._(
    '111030',
  );

  /// value111031
  static final SecurityRoleType value111031 = SecurityRoleType._(
    '111031',
  );

  /// value111032
  static final SecurityRoleType value111032 = SecurityRoleType._(
    '111032',
  );

  /// value111033
  static final SecurityRoleType value111033 = SecurityRoleType._(
    '111033',
  );

  /// value111034
  static final SecurityRoleType value111034 = SecurityRoleType._(
    '111034',
  );

  /// value111035
  static final SecurityRoleType value111035 = SecurityRoleType._(
    '111035',
  );

  /// value111036
  static final SecurityRoleType value111036 = SecurityRoleType._(
    '111036',
  );

  /// value111037
  static final SecurityRoleType value111037 = SecurityRoleType._(
    '111037',
  );

  /// value111038
  static final SecurityRoleType value111038 = SecurityRoleType._(
    '111038',
  );

  /// value111039
  static final SecurityRoleType value111039 = SecurityRoleType._(
    '111039',
  );

  /// value111040
  static final SecurityRoleType value111040 = SecurityRoleType._(
    '111040',
  );

  /// value111041
  static final SecurityRoleType value111041 = SecurityRoleType._(
    '111041',
  );

  /// value111042
  static final SecurityRoleType value111042 = SecurityRoleType._(
    '111042',
  );

  /// value111043
  static final SecurityRoleType value111043 = SecurityRoleType._(
    '111043',
  );

  /// value111044
  static final SecurityRoleType value111044 = SecurityRoleType._(
    '111044',
  );

  /// value111045
  static final SecurityRoleType value111045 = SecurityRoleType._(
    '111045',
  );

  /// value111046
  static final SecurityRoleType value111046 = SecurityRoleType._(
    '111046',
  );

  /// value111047
  static final SecurityRoleType value111047 = SecurityRoleType._(
    '111047',
  );

  /// value111048
  static final SecurityRoleType value111048 = SecurityRoleType._(
    '111048',
  );

  /// value111049
  static final SecurityRoleType value111049 = SecurityRoleType._(
    '111049',
  );

  /// value111050
  static final SecurityRoleType value111050 = SecurityRoleType._(
    '111050',
  );

  /// value111051
  static final SecurityRoleType value111051 = SecurityRoleType._(
    '111051',
  );

  /// value111052
  static final SecurityRoleType value111052 = SecurityRoleType._(
    '111052',
  );

  /// value111053
  static final SecurityRoleType value111053 = SecurityRoleType._(
    '111053',
  );

  /// value111054
  static final SecurityRoleType value111054 = SecurityRoleType._(
    '111054',
  );

  /// value111055
  static final SecurityRoleType value111055 = SecurityRoleType._(
    '111055',
  );

  /// value111056
  static final SecurityRoleType value111056 = SecurityRoleType._(
    '111056',
  );

  /// value111057
  static final SecurityRoleType value111057 = SecurityRoleType._(
    '111057',
  );

  /// value111058
  static final SecurityRoleType value111058 = SecurityRoleType._(
    '111058',
  );

  /// value111059
  static final SecurityRoleType value111059 = SecurityRoleType._(
    '111059',
  );

  /// value111060
  static final SecurityRoleType value111060 = SecurityRoleType._(
    '111060',
  );

  /// value111061
  static final SecurityRoleType value111061 = SecurityRoleType._(
    '111061',
  );

  /// value111062
  static final SecurityRoleType value111062 = SecurityRoleType._(
    '111062',
  );

  /// value111063
  static final SecurityRoleType value111063 = SecurityRoleType._(
    '111063',
  );

  /// value111064
  static final SecurityRoleType value111064 = SecurityRoleType._(
    '111064',
  );

  /// value111065
  static final SecurityRoleType value111065 = SecurityRoleType._(
    '111065',
  );

  /// value111066
  static final SecurityRoleType value111066 = SecurityRoleType._(
    '111066',
  );

  /// value111069
  static final SecurityRoleType value111069 = SecurityRoleType._(
    '111069',
  );

  /// value111071
  static final SecurityRoleType value111071 = SecurityRoleType._(
    '111071',
  );

  /// value111072
  static final SecurityRoleType value111072 = SecurityRoleType._(
    '111072',
  );

  /// value111081
  static final SecurityRoleType value111081 = SecurityRoleType._(
    '111081',
  );

  /// value111086
  static final SecurityRoleType value111086 = SecurityRoleType._(
    '111086',
  );

  /// value111087
  static final SecurityRoleType value111087 = SecurityRoleType._(
    '111087',
  );

  /// value111088
  static final SecurityRoleType value111088 = SecurityRoleType._(
    '111088',
  );

  /// value111089
  static final SecurityRoleType value111089 = SecurityRoleType._(
    '111089',
  );

  /// value111090
  static final SecurityRoleType value111090 = SecurityRoleType._(
    '111090',
  );

  /// value111091
  static final SecurityRoleType value111091 = SecurityRoleType._(
    '111091',
  );

  /// value111092
  static final SecurityRoleType value111092 = SecurityRoleType._(
    '111092',
  );

  /// value111093
  static final SecurityRoleType value111093 = SecurityRoleType._(
    '111093',
  );

  /// value111099
  static final SecurityRoleType value111099 = SecurityRoleType._(
    '111099',
  );

  /// value111100
  static final SecurityRoleType value111100 = SecurityRoleType._(
    '111100',
  );

  /// value111101
  static final SecurityRoleType value111101 = SecurityRoleType._(
    '111101',
  );

  /// value111102
  static final SecurityRoleType value111102 = SecurityRoleType._(
    '111102',
  );

  /// value111103
  static final SecurityRoleType value111103 = SecurityRoleType._(
    '111103',
  );

  /// value111104
  static final SecurityRoleType value111104 = SecurityRoleType._(
    '111104',
  );

  /// value111105
  static final SecurityRoleType value111105 = SecurityRoleType._(
    '111105',
  );

  /// value111111
  static final SecurityRoleType value111111 = SecurityRoleType._(
    '111111',
  );

  /// value111112
  static final SecurityRoleType value111112 = SecurityRoleType._(
    '111112',
  );

  /// value111113
  static final SecurityRoleType value111113 = SecurityRoleType._(
    '111113',
  );

  /// value111120
  static final SecurityRoleType value111120 = SecurityRoleType._(
    '111120',
  );

  /// value111121
  static final SecurityRoleType value111121 = SecurityRoleType._(
    '111121',
  );

  /// value111122
  static final SecurityRoleType value111122 = SecurityRoleType._(
    '111122',
  );

  /// value111123
  static final SecurityRoleType value111123 = SecurityRoleType._(
    '111123',
  );

  /// value111124
  static final SecurityRoleType value111124 = SecurityRoleType._(
    '111124',
  );

  /// value111125
  static final SecurityRoleType value111125 = SecurityRoleType._(
    '111125',
  );

  /// value111126
  static final SecurityRoleType value111126 = SecurityRoleType._(
    '111126',
  );

  /// value111127
  static final SecurityRoleType value111127 = SecurityRoleType._(
    '111127',
  );

  /// value111128
  static final SecurityRoleType value111128 = SecurityRoleType._(
    '111128',
  );

  /// value111129
  static final SecurityRoleType value111129 = SecurityRoleType._(
    '111129',
  );

  /// value111130
  static final SecurityRoleType value111130 = SecurityRoleType._(
    '111130',
  );

  /// value111135
  static final SecurityRoleType value111135 = SecurityRoleType._(
    '111135',
  );

  /// value111136
  static final SecurityRoleType value111136 = SecurityRoleType._(
    '111136',
  );

  /// value111137
  static final SecurityRoleType value111137 = SecurityRoleType._(
    '111137',
  );

  /// value111138
  static final SecurityRoleType value111138 = SecurityRoleType._(
    '111138',
  );

  /// value111139
  static final SecurityRoleType value111139 = SecurityRoleType._(
    '111139',
  );

  /// value111140
  static final SecurityRoleType value111140 = SecurityRoleType._(
    '111140',
  );

  /// value111141
  static final SecurityRoleType value111141 = SecurityRoleType._(
    '111141',
  );

  /// value111142
  static final SecurityRoleType value111142 = SecurityRoleType._(
    '111142',
  );

  /// value111143
  static final SecurityRoleType value111143 = SecurityRoleType._(
    '111143',
  );

  /// value111144
  static final SecurityRoleType value111144 = SecurityRoleType._(
    '111144',
  );

  /// value111145
  static final SecurityRoleType value111145 = SecurityRoleType._(
    '111145',
  );

  /// value111146
  static final SecurityRoleType value111146 = SecurityRoleType._(
    '111146',
  );

  /// value111147
  static final SecurityRoleType value111147 = SecurityRoleType._(
    '111147',
  );

  /// value111148
  static final SecurityRoleType value111148 = SecurityRoleType._(
    '111148',
  );

  /// value111149
  static final SecurityRoleType value111149 = SecurityRoleType._(
    '111149',
  );

  /// value111150
  static final SecurityRoleType value111150 = SecurityRoleType._(
    '111150',
  );

  /// value111151
  static final SecurityRoleType value111151 = SecurityRoleType._(
    '111151',
  );

  /// value111152
  static final SecurityRoleType value111152 = SecurityRoleType._(
    '111152',
  );

  /// value111153
  static final SecurityRoleType value111153 = SecurityRoleType._(
    '111153',
  );

  /// value111154
  static final SecurityRoleType value111154 = SecurityRoleType._(
    '111154',
  );

  /// value111155
  static final SecurityRoleType value111155 = SecurityRoleType._(
    '111155',
  );

  /// value111156
  static final SecurityRoleType value111156 = SecurityRoleType._(
    '111156',
  );

  /// value111157
  static final SecurityRoleType value111157 = SecurityRoleType._(
    '111157',
  );

  /// value111158
  static final SecurityRoleType value111158 = SecurityRoleType._(
    '111158',
  );

  /// value111159
  static final SecurityRoleType value111159 = SecurityRoleType._(
    '111159',
  );

  /// value111168
  static final SecurityRoleType value111168 = SecurityRoleType._(
    '111168',
  );

  /// value111170
  static final SecurityRoleType value111170 = SecurityRoleType._(
    '111170',
  );

  /// value111171
  static final SecurityRoleType value111171 = SecurityRoleType._(
    '111171',
  );

  /// value111172
  static final SecurityRoleType value111172 = SecurityRoleType._(
    '111172',
  );

  /// value111173
  static final SecurityRoleType value111173 = SecurityRoleType._(
    '111173',
  );

  /// value111174
  static final SecurityRoleType value111174 = SecurityRoleType._(
    '111174',
  );

  /// value111175
  static final SecurityRoleType value111175 = SecurityRoleType._(
    '111175',
  );

  /// value111176
  static final SecurityRoleType value111176 = SecurityRoleType._(
    '111176',
  );

  /// value111177
  static final SecurityRoleType value111177 = SecurityRoleType._(
    '111177',
  );

  /// value111178
  static final SecurityRoleType value111178 = SecurityRoleType._(
    '111178',
  );

  /// value111179
  static final SecurityRoleType value111179 = SecurityRoleType._(
    '111179',
  );

  /// value111180
  static final SecurityRoleType value111180 = SecurityRoleType._(
    '111180',
  );

  /// value111181
  static final SecurityRoleType value111181 = SecurityRoleType._(
    '111181',
  );

  /// value111182
  static final SecurityRoleType value111182 = SecurityRoleType._(
    '111182',
  );

  /// value111183
  static final SecurityRoleType value111183 = SecurityRoleType._(
    '111183',
  );

  /// value111184
  static final SecurityRoleType value111184 = SecurityRoleType._(
    '111184',
  );

  /// value111185
  static final SecurityRoleType value111185 = SecurityRoleType._(
    '111185',
  );

  /// value111186
  static final SecurityRoleType value111186 = SecurityRoleType._(
    '111186',
  );

  /// value111187
  static final SecurityRoleType value111187 = SecurityRoleType._(
    '111187',
  );

  /// value111188
  static final SecurityRoleType value111188 = SecurityRoleType._(
    '111188',
  );

  /// value111189
  static final SecurityRoleType value111189 = SecurityRoleType._(
    '111189',
  );

  /// value111190
  static final SecurityRoleType value111190 = SecurityRoleType._(
    '111190',
  );

  /// value111191
  static final SecurityRoleType value111191 = SecurityRoleType._(
    '111191',
  );

  /// value111192
  static final SecurityRoleType value111192 = SecurityRoleType._(
    '111192',
  );

  /// value111193
  static final SecurityRoleType value111193 = SecurityRoleType._(
    '111193',
  );

  /// value111194
  static final SecurityRoleType value111194 = SecurityRoleType._(
    '111194',
  );

  /// value111195
  static final SecurityRoleType value111195 = SecurityRoleType._(
    '111195',
  );

  /// value111196
  static final SecurityRoleType value111196 = SecurityRoleType._(
    '111196',
  );

  /// value111197
  static final SecurityRoleType value111197 = SecurityRoleType._(
    '111197',
  );

  /// value111198
  static final SecurityRoleType value111198 = SecurityRoleType._(
    '111198',
  );

  /// value111199
  static final SecurityRoleType value111199 = SecurityRoleType._(
    '111199',
  );

  /// value111200
  static final SecurityRoleType value111200 = SecurityRoleType._(
    '111200',
  );

  /// value111201
  static final SecurityRoleType value111201 = SecurityRoleType._(
    '111201',
  );

  /// value111202
  static final SecurityRoleType value111202 = SecurityRoleType._(
    '111202',
  );

  /// value111203
  static final SecurityRoleType value111203 = SecurityRoleType._(
    '111203',
  );

  /// value111204
  static final SecurityRoleType value111204 = SecurityRoleType._(
    '111204',
  );

  /// value111205
  static final SecurityRoleType value111205 = SecurityRoleType._(
    '111205',
  );

  /// value111206
  static final SecurityRoleType value111206 = SecurityRoleType._(
    '111206',
  );

  /// value111207
  static final SecurityRoleType value111207 = SecurityRoleType._(
    '111207',
  );

  /// value111208
  static final SecurityRoleType value111208 = SecurityRoleType._(
    '111208',
  );

  /// value111209
  static final SecurityRoleType value111209 = SecurityRoleType._(
    '111209',
  );

  /// value111210
  static final SecurityRoleType value111210 = SecurityRoleType._(
    '111210',
  );

  /// value111211
  static final SecurityRoleType value111211 = SecurityRoleType._(
    '111211',
  );

  /// value111212
  static final SecurityRoleType value111212 = SecurityRoleType._(
    '111212',
  );

  /// value111213
  static final SecurityRoleType value111213 = SecurityRoleType._(
    '111213',
  );

  /// value111214
  static final SecurityRoleType value111214 = SecurityRoleType._(
    '111214',
  );

  /// value111215
  static final SecurityRoleType value111215 = SecurityRoleType._(
    '111215',
  );

  /// value111216
  static final SecurityRoleType value111216 = SecurityRoleType._(
    '111216',
  );

  /// value111217
  static final SecurityRoleType value111217 = SecurityRoleType._(
    '111217',
  );

  /// value111218
  static final SecurityRoleType value111218 = SecurityRoleType._(
    '111218',
  );

  /// value111219
  static final SecurityRoleType value111219 = SecurityRoleType._(
    '111219',
  );

  /// value111220
  static final SecurityRoleType value111220 = SecurityRoleType._(
    '111220',
  );

  /// value111221
  static final SecurityRoleType value111221 = SecurityRoleType._(
    '111221',
  );

  /// value111222
  static final SecurityRoleType value111222 = SecurityRoleType._(
    '111222',
  );

  /// value111223
  static final SecurityRoleType value111223 = SecurityRoleType._(
    '111223',
  );

  /// value111224
  static final SecurityRoleType value111224 = SecurityRoleType._(
    '111224',
  );

  /// value111225
  static final SecurityRoleType value111225 = SecurityRoleType._(
    '111225',
  );

  /// value111233
  static final SecurityRoleType value111233 = SecurityRoleType._(
    '111233',
  );

  /// value111234
  static final SecurityRoleType value111234 = SecurityRoleType._(
    '111234',
  );

  /// value111235
  static final SecurityRoleType value111235 = SecurityRoleType._(
    '111235',
  );

  /// value111236
  static final SecurityRoleType value111236 = SecurityRoleType._(
    '111236',
  );

  /// value111237
  static final SecurityRoleType value111237 = SecurityRoleType._(
    '111237',
  );

  /// value111238
  static final SecurityRoleType value111238 = SecurityRoleType._(
    '111238',
  );

  /// value111239
  static final SecurityRoleType value111239 = SecurityRoleType._(
    '111239',
  );

  /// value111240
  static final SecurityRoleType value111240 = SecurityRoleType._(
    '111240',
  );

  /// value111241
  static final SecurityRoleType value111241 = SecurityRoleType._(
    '111241',
  );

  /// value111242
  static final SecurityRoleType value111242 = SecurityRoleType._(
    '111242',
  );

  /// value111243
  static final SecurityRoleType value111243 = SecurityRoleType._(
    '111243',
  );

  /// value111244
  static final SecurityRoleType value111244 = SecurityRoleType._(
    '111244',
  );

  /// value111245
  static final SecurityRoleType value111245 = SecurityRoleType._(
    '111245',
  );

  /// value111248
  static final SecurityRoleType value111248 = SecurityRoleType._(
    '111248',
  );

  /// value111249
  static final SecurityRoleType value111249 = SecurityRoleType._(
    '111249',
  );

  /// value111250
  static final SecurityRoleType value111250 = SecurityRoleType._(
    '111250',
  );

  /// value111251
  static final SecurityRoleType value111251 = SecurityRoleType._(
    '111251',
  );

  /// value111252
  static final SecurityRoleType value111252 = SecurityRoleType._(
    '111252',
  );

  /// value111253
  static final SecurityRoleType value111253 = SecurityRoleType._(
    '111253',
  );

  /// value111254
  static final SecurityRoleType value111254 = SecurityRoleType._(
    '111254',
  );

  /// value111255
  static final SecurityRoleType value111255 = SecurityRoleType._(
    '111255',
  );

  /// value111256
  static final SecurityRoleType value111256 = SecurityRoleType._(
    '111256',
  );

  /// value111257
  static final SecurityRoleType value111257 = SecurityRoleType._(
    '111257',
  );

  /// value111258
  static final SecurityRoleType value111258 = SecurityRoleType._(
    '111258',
  );

  /// value111259
  static final SecurityRoleType value111259 = SecurityRoleType._(
    '111259',
  );

  /// value111260
  static final SecurityRoleType value111260 = SecurityRoleType._(
    '111260',
  );

  /// value111262
  static final SecurityRoleType value111262 = SecurityRoleType._(
    '111262',
  );

  /// value111263
  static final SecurityRoleType value111263 = SecurityRoleType._(
    '111263',
  );

  /// value111264
  static final SecurityRoleType value111264 = SecurityRoleType._(
    '111264',
  );

  /// value111265
  static final SecurityRoleType value111265 = SecurityRoleType._(
    '111265',
  );

  /// value111269
  static final SecurityRoleType value111269 = SecurityRoleType._(
    '111269',
  );

  /// value111271
  static final SecurityRoleType value111271 = SecurityRoleType._(
    '111271',
  );

  /// value111273
  static final SecurityRoleType value111273 = SecurityRoleType._(
    '111273',
  );

  /// value111277
  static final SecurityRoleType value111277 = SecurityRoleType._(
    '111277',
  );

  /// value111278
  static final SecurityRoleType value111278 = SecurityRoleType._(
    '111278',
  );

  /// value111279
  static final SecurityRoleType value111279 = SecurityRoleType._(
    '111279',
  );

  /// value111281
  static final SecurityRoleType value111281 = SecurityRoleType._(
    '111281',
  );

  /// value111283
  static final SecurityRoleType value111283 = SecurityRoleType._(
    '111283',
  );

  /// value111284
  static final SecurityRoleType value111284 = SecurityRoleType._(
    '111284',
  );

  /// value111285
  static final SecurityRoleType value111285 = SecurityRoleType._(
    '111285',
  );

  /// value111286
  static final SecurityRoleType value111286 = SecurityRoleType._(
    '111286',
  );

  /// value111287
  static final SecurityRoleType value111287 = SecurityRoleType._(
    '111287',
  );

  /// value111288
  static final SecurityRoleType value111288 = SecurityRoleType._(
    '111288',
  );

  /// value111290
  static final SecurityRoleType value111290 = SecurityRoleType._(
    '111290',
  );

  /// value111291
  static final SecurityRoleType value111291 = SecurityRoleType._(
    '111291',
  );

  /// value111292
  static final SecurityRoleType value111292 = SecurityRoleType._(
    '111292',
  );

  /// value111293
  static final SecurityRoleType value111293 = SecurityRoleType._(
    '111293',
  );

  /// value111294
  static final SecurityRoleType value111294 = SecurityRoleType._(
    '111294',
  );

  /// value111296
  static final SecurityRoleType value111296 = SecurityRoleType._(
    '111296',
  );

  /// value111297
  static final SecurityRoleType value111297 = SecurityRoleType._(
    '111297',
  );

  /// value111298
  static final SecurityRoleType value111298 = SecurityRoleType._(
    '111298',
  );

  /// value111299
  static final SecurityRoleType value111299 = SecurityRoleType._(
    '111299',
  );

  /// value111300
  static final SecurityRoleType value111300 = SecurityRoleType._(
    '111300',
  );

  /// value111301
  static final SecurityRoleType value111301 = SecurityRoleType._(
    '111301',
  );

  /// value111302
  static final SecurityRoleType value111302 = SecurityRoleType._(
    '111302',
  );

  /// value111303
  static final SecurityRoleType value111303 = SecurityRoleType._(
    '111303',
  );

  /// value111304
  static final SecurityRoleType value111304 = SecurityRoleType._(
    '111304',
  );

  /// value111305
  static final SecurityRoleType value111305 = SecurityRoleType._(
    '111305',
  );

  /// value111306
  static final SecurityRoleType value111306 = SecurityRoleType._(
    '111306',
  );

  /// value111307
  static final SecurityRoleType value111307 = SecurityRoleType._(
    '111307',
  );

  /// value111308
  static final SecurityRoleType value111308 = SecurityRoleType._(
    '111308',
  );

  /// value111309
  static final SecurityRoleType value111309 = SecurityRoleType._(
    '111309',
  );

  /// value111310
  static final SecurityRoleType value111310 = SecurityRoleType._(
    '111310',
  );

  /// value111311
  static final SecurityRoleType value111311 = SecurityRoleType._(
    '111311',
  );

  /// value111312
  static final SecurityRoleType value111312 = SecurityRoleType._(
    '111312',
  );

  /// value111313
  static final SecurityRoleType value111313 = SecurityRoleType._(
    '111313',
  );

  /// value111314
  static final SecurityRoleType value111314 = SecurityRoleType._(
    '111314',
  );

  /// value111315
  static final SecurityRoleType value111315 = SecurityRoleType._(
    '111315',
  );

  /// value111316
  static final SecurityRoleType value111316 = SecurityRoleType._(
    '111316',
  );

  /// value111317
  static final SecurityRoleType value111317 = SecurityRoleType._(
    '111317',
  );

  /// value111318
  static final SecurityRoleType value111318 = SecurityRoleType._(
    '111318',
  );

  /// value111320
  static final SecurityRoleType value111320 = SecurityRoleType._(
    '111320',
  );

  /// value111321
  static final SecurityRoleType value111321 = SecurityRoleType._(
    '111321',
  );

  /// value111322
  static final SecurityRoleType value111322 = SecurityRoleType._(
    '111322',
  );

  /// value111323
  static final SecurityRoleType value111323 = SecurityRoleType._(
    '111323',
  );

  /// value111324
  static final SecurityRoleType value111324 = SecurityRoleType._(
    '111324',
  );

  /// value111325
  static final SecurityRoleType value111325 = SecurityRoleType._(
    '111325',
  );

  /// value111326
  static final SecurityRoleType value111326 = SecurityRoleType._(
    '111326',
  );

  /// value111327
  static final SecurityRoleType value111327 = SecurityRoleType._(
    '111327',
  );

  /// value111328
  static final SecurityRoleType value111328 = SecurityRoleType._(
    '111328',
  );

  /// value111329
  static final SecurityRoleType value111329 = SecurityRoleType._(
    '111329',
  );

  /// value111330
  static final SecurityRoleType value111330 = SecurityRoleType._(
    '111330',
  );

  /// value111331
  static final SecurityRoleType value111331 = SecurityRoleType._(
    '111331',
  );

  /// value111332
  static final SecurityRoleType value111332 = SecurityRoleType._(
    '111332',
  );

  /// value111333
  static final SecurityRoleType value111333 = SecurityRoleType._(
    '111333',
  );

  /// value111334
  static final SecurityRoleType value111334 = SecurityRoleType._(
    '111334',
  );

  /// value111335
  static final SecurityRoleType value111335 = SecurityRoleType._(
    '111335',
  );

  /// value111336
  static final SecurityRoleType value111336 = SecurityRoleType._(
    '111336',
  );

  /// value111338
  static final SecurityRoleType value111338 = SecurityRoleType._(
    '111338',
  );

  /// value111340
  static final SecurityRoleType value111340 = SecurityRoleType._(
    '111340',
  );

  /// value111341
  static final SecurityRoleType value111341 = SecurityRoleType._(
    '111341',
  );

  /// value111342
  static final SecurityRoleType value111342 = SecurityRoleType._(
    '111342',
  );

  /// value111343
  static final SecurityRoleType value111343 = SecurityRoleType._(
    '111343',
  );

  /// value111344
  static final SecurityRoleType value111344 = SecurityRoleType._(
    '111344',
  );

  /// value111345
  static final SecurityRoleType value111345 = SecurityRoleType._(
    '111345',
  );

  /// value111346
  static final SecurityRoleType value111346 = SecurityRoleType._(
    '111346',
  );

  /// value111347
  static final SecurityRoleType value111347 = SecurityRoleType._(
    '111347',
  );

  /// value111350
  static final SecurityRoleType value111350 = SecurityRoleType._(
    '111350',
  );

  /// value111351
  static final SecurityRoleType value111351 = SecurityRoleType._(
    '111351',
  );

  /// value111352
  static final SecurityRoleType value111352 = SecurityRoleType._(
    '111352',
  );

  /// value111353
  static final SecurityRoleType value111353 = SecurityRoleType._(
    '111353',
  );

  /// value111354
  static final SecurityRoleType value111354 = SecurityRoleType._(
    '111354',
  );

  /// value111355
  static final SecurityRoleType value111355 = SecurityRoleType._(
    '111355',
  );

  /// value111356
  static final SecurityRoleType value111356 = SecurityRoleType._(
    '111356',
  );

  /// value111357
  static final SecurityRoleType value111357 = SecurityRoleType._(
    '111357',
  );

  /// value111358
  static final SecurityRoleType value111358 = SecurityRoleType._(
    '111358',
  );

  /// value111359
  static final SecurityRoleType value111359 = SecurityRoleType._(
    '111359',
  );

  /// value111360
  static final SecurityRoleType value111360 = SecurityRoleType._(
    '111360',
  );

  /// value111361
  static final SecurityRoleType value111361 = SecurityRoleType._(
    '111361',
  );

  /// value111362
  static final SecurityRoleType value111362 = SecurityRoleType._(
    '111362',
  );

  /// value111363
  static final SecurityRoleType value111363 = SecurityRoleType._(
    '111363',
  );

  /// value111364
  static final SecurityRoleType value111364 = SecurityRoleType._(
    '111364',
  );

  /// value111365
  static final SecurityRoleType value111365 = SecurityRoleType._(
    '111365',
  );

  /// value111366
  static final SecurityRoleType value111366 = SecurityRoleType._(
    '111366',
  );

  /// value111367
  static final SecurityRoleType value111367 = SecurityRoleType._(
    '111367',
  );

  /// value111368
  static final SecurityRoleType value111368 = SecurityRoleType._(
    '111368',
  );

  /// value111369
  static final SecurityRoleType value111369 = SecurityRoleType._(
    '111369',
  );

  /// value111370
  static final SecurityRoleType value111370 = SecurityRoleType._(
    '111370',
  );

  /// value111371
  static final SecurityRoleType value111371 = SecurityRoleType._(
    '111371',
  );

  /// value111372
  static final SecurityRoleType value111372 = SecurityRoleType._(
    '111372',
  );

  /// value111373
  static final SecurityRoleType value111373 = SecurityRoleType._(
    '111373',
  );

  /// value111374
  static final SecurityRoleType value111374 = SecurityRoleType._(
    '111374',
  );

  /// value111375
  static final SecurityRoleType value111375 = SecurityRoleType._(
    '111375',
  );

  /// value111376
  static final SecurityRoleType value111376 = SecurityRoleType._(
    '111376',
  );

  /// value111377
  static final SecurityRoleType value111377 = SecurityRoleType._(
    '111377',
  );

  /// value111380
  static final SecurityRoleType value111380 = SecurityRoleType._(
    '111380',
  );

  /// value111381
  static final SecurityRoleType value111381 = SecurityRoleType._(
    '111381',
  );

  /// value111382
  static final SecurityRoleType value111382 = SecurityRoleType._(
    '111382',
  );

  /// value111383
  static final SecurityRoleType value111383 = SecurityRoleType._(
    '111383',
  );

  /// value111384
  static final SecurityRoleType value111384 = SecurityRoleType._(
    '111384',
  );

  /// value111385
  static final SecurityRoleType value111385 = SecurityRoleType._(
    '111385',
  );

  /// value111386
  static final SecurityRoleType value111386 = SecurityRoleType._(
    '111386',
  );

  /// value111387
  static final SecurityRoleType value111387 = SecurityRoleType._(
    '111387',
  );

  /// value111388
  static final SecurityRoleType value111388 = SecurityRoleType._(
    '111388',
  );

  /// value111389
  static final SecurityRoleType value111389 = SecurityRoleType._(
    '111389',
  );

  /// value111390
  static final SecurityRoleType value111390 = SecurityRoleType._(
    '111390',
  );

  /// value111391
  static final SecurityRoleType value111391 = SecurityRoleType._(
    '111391',
  );

  /// value111392
  static final SecurityRoleType value111392 = SecurityRoleType._(
    '111392',
  );

  /// value111393
  static final SecurityRoleType value111393 = SecurityRoleType._(
    '111393',
  );

  /// value111394
  static final SecurityRoleType value111394 = SecurityRoleType._(
    '111394',
  );

  /// value111395
  static final SecurityRoleType value111395 = SecurityRoleType._(
    '111395',
  );

  /// value111396
  static final SecurityRoleType value111396 = SecurityRoleType._(
    '111396',
  );

  /// value111397
  static final SecurityRoleType value111397 = SecurityRoleType._(
    '111397',
  );

  /// value111398
  static final SecurityRoleType value111398 = SecurityRoleType._(
    '111398',
  );

  /// value111399
  static final SecurityRoleType value111399 = SecurityRoleType._(
    '111399',
  );

  /// value111400
  static final SecurityRoleType value111400 = SecurityRoleType._(
    '111400',
  );

  /// value111401
  static final SecurityRoleType value111401 = SecurityRoleType._(
    '111401',
  );

  /// value111402
  static final SecurityRoleType value111402 = SecurityRoleType._(
    '111402',
  );

  /// value111403
  static final SecurityRoleType value111403 = SecurityRoleType._(
    '111403',
  );

  /// value111404
  static final SecurityRoleType value111404 = SecurityRoleType._(
    '111404',
  );

  /// value111405
  static final SecurityRoleType value111405 = SecurityRoleType._(
    '111405',
  );

  /// value111406
  static final SecurityRoleType value111406 = SecurityRoleType._(
    '111406',
  );

  /// value111407
  static final SecurityRoleType value111407 = SecurityRoleType._(
    '111407',
  );

  /// value111408
  static final SecurityRoleType value111408 = SecurityRoleType._(
    '111408',
  );

  /// value111409
  static final SecurityRoleType value111409 = SecurityRoleType._(
    '111409',
  );

  /// value111410
  static final SecurityRoleType value111410 = SecurityRoleType._(
    '111410',
  );

  /// value111411
  static final SecurityRoleType value111411 = SecurityRoleType._(
    '111411',
  );

  /// value111412
  static final SecurityRoleType value111412 = SecurityRoleType._(
    '111412',
  );

  /// value111413
  static final SecurityRoleType value111413 = SecurityRoleType._(
    '111413',
  );

  /// value111414
  static final SecurityRoleType value111414 = SecurityRoleType._(
    '111414',
  );

  /// value111415
  static final SecurityRoleType value111415 = SecurityRoleType._(
    '111415',
  );

  /// value111416
  static final SecurityRoleType value111416 = SecurityRoleType._(
    '111416',
  );

  /// value111417
  static final SecurityRoleType value111417 = SecurityRoleType._(
    '111417',
  );

  /// value111418
  static final SecurityRoleType value111418 = SecurityRoleType._(
    '111418',
  );

  /// value111419
  static final SecurityRoleType value111419 = SecurityRoleType._(
    '111419',
  );

  /// value111420
  static final SecurityRoleType value111420 = SecurityRoleType._(
    '111420',
  );

  /// value111421
  static final SecurityRoleType value111421 = SecurityRoleType._(
    '111421',
  );

  /// value111423
  static final SecurityRoleType value111423 = SecurityRoleType._(
    '111423',
  );

  /// value111424
  static final SecurityRoleType value111424 = SecurityRoleType._(
    '111424',
  );

  /// value111425
  static final SecurityRoleType value111425 = SecurityRoleType._(
    '111425',
  );

  /// value111426
  static final SecurityRoleType value111426 = SecurityRoleType._(
    '111426',
  );

  /// value111427
  static final SecurityRoleType value111427 = SecurityRoleType._(
    '111427',
  );

  /// value111428
  static final SecurityRoleType value111428 = SecurityRoleType._(
    '111428',
  );

  /// value111429
  static final SecurityRoleType value111429 = SecurityRoleType._(
    '111429',
  );

  /// value111430
  static final SecurityRoleType value111430 = SecurityRoleType._(
    '111430',
  );

  /// value111431
  static final SecurityRoleType value111431 = SecurityRoleType._(
    '111431',
  );

  /// value111432
  static final SecurityRoleType value111432 = SecurityRoleType._(
    '111432',
  );

  /// value111433
  static final SecurityRoleType value111433 = SecurityRoleType._(
    '111433',
  );

  /// value111434
  static final SecurityRoleType value111434 = SecurityRoleType._(
    '111434',
  );

  /// value111435
  static final SecurityRoleType value111435 = SecurityRoleType._(
    '111435',
  );

  /// value111436
  static final SecurityRoleType value111436 = SecurityRoleType._(
    '111436',
  );

  /// value111437
  static final SecurityRoleType value111437 = SecurityRoleType._(
    '111437',
  );

  /// value111438
  static final SecurityRoleType value111438 = SecurityRoleType._(
    '111438',
  );

  /// value111439
  static final SecurityRoleType value111439 = SecurityRoleType._(
    '111439',
  );

  /// value111440
  static final SecurityRoleType value111440 = SecurityRoleType._(
    '111440',
  );

  /// value111441
  static final SecurityRoleType value111441 = SecurityRoleType._(
    '111441',
  );

  /// value111442
  static final SecurityRoleType value111442 = SecurityRoleType._(
    '111442',
  );

  /// value111443
  static final SecurityRoleType value111443 = SecurityRoleType._(
    '111443',
  );

  /// value111444
  static final SecurityRoleType value111444 = SecurityRoleType._(
    '111444',
  );

  /// value111445
  static final SecurityRoleType value111445 = SecurityRoleType._(
    '111445',
  );

  /// value111446
  static final SecurityRoleType value111446 = SecurityRoleType._(
    '111446',
  );

  /// value111447
  static final SecurityRoleType value111447 = SecurityRoleType._(
    '111447',
  );

  /// value111448
  static final SecurityRoleType value111448 = SecurityRoleType._(
    '111448',
  );

  /// value111449
  static final SecurityRoleType value111449 = SecurityRoleType._(
    '111449',
  );

  /// value111450
  static final SecurityRoleType value111450 = SecurityRoleType._(
    '111450',
  );

  /// value111451
  static final SecurityRoleType value111451 = SecurityRoleType._(
    '111451',
  );

  /// value111452
  static final SecurityRoleType value111452 = SecurityRoleType._(
    '111452',
  );

  /// value111453
  static final SecurityRoleType value111453 = SecurityRoleType._(
    '111453',
  );

  /// value111454
  static final SecurityRoleType value111454 = SecurityRoleType._(
    '111454',
  );

  /// value111455
  static final SecurityRoleType value111455 = SecurityRoleType._(
    '111455',
  );

  /// value111456
  static final SecurityRoleType value111456 = SecurityRoleType._(
    '111456',
  );

  /// value111457
  static final SecurityRoleType value111457 = SecurityRoleType._(
    '111457',
  );

  /// value111458
  static final SecurityRoleType value111458 = SecurityRoleType._(
    '111458',
  );

  /// value111459
  static final SecurityRoleType value111459 = SecurityRoleType._(
    '111459',
  );

  /// value111460
  static final SecurityRoleType value111460 = SecurityRoleType._(
    '111460',
  );

  /// value111461
  static final SecurityRoleType value111461 = SecurityRoleType._(
    '111461',
  );

  /// value111462
  static final SecurityRoleType value111462 = SecurityRoleType._(
    '111462',
  );

  /// value111463
  static final SecurityRoleType value111463 = SecurityRoleType._(
    '111463',
  );

  /// value111464
  static final SecurityRoleType value111464 = SecurityRoleType._(
    '111464',
  );

  /// value111465
  static final SecurityRoleType value111465 = SecurityRoleType._(
    '111465',
  );

  /// value111466
  static final SecurityRoleType value111466 = SecurityRoleType._(
    '111466',
  );

  /// value111467
  static final SecurityRoleType value111467 = SecurityRoleType._(
    '111467',
  );

  /// value111468
  static final SecurityRoleType value111468 = SecurityRoleType._(
    '111468',
  );

  /// value111469
  static final SecurityRoleType value111469 = SecurityRoleType._(
    '111469',
  );

  /// value111470
  static final SecurityRoleType value111470 = SecurityRoleType._(
    '111470',
  );

  /// value111471
  static final SecurityRoleType value111471 = SecurityRoleType._(
    '111471',
  );

  /// value111472
  static final SecurityRoleType value111472 = SecurityRoleType._(
    '111472',
  );

  /// value111473
  static final SecurityRoleType value111473 = SecurityRoleType._(
    '111473',
  );

  /// value111474
  static final SecurityRoleType value111474 = SecurityRoleType._(
    '111474',
  );

  /// value111475
  static final SecurityRoleType value111475 = SecurityRoleType._(
    '111475',
  );

  /// value111476
  static final SecurityRoleType value111476 = SecurityRoleType._(
    '111476',
  );

  /// value111477
  static final SecurityRoleType value111477 = SecurityRoleType._(
    '111477',
  );

  /// value111478
  static final SecurityRoleType value111478 = SecurityRoleType._(
    '111478',
  );

  /// value111479
  static final SecurityRoleType value111479 = SecurityRoleType._(
    '111479',
  );

  /// value111480
  static final SecurityRoleType value111480 = SecurityRoleType._(
    '111480',
  );

  /// value111481
  static final SecurityRoleType value111481 = SecurityRoleType._(
    '111481',
  );

  /// value111482
  static final SecurityRoleType value111482 = SecurityRoleType._(
    '111482',
  );

  /// value111483
  static final SecurityRoleType value111483 = SecurityRoleType._(
    '111483',
  );

  /// value111484
  static final SecurityRoleType value111484 = SecurityRoleType._(
    '111484',
  );

  /// value111485
  static final SecurityRoleType value111485 = SecurityRoleType._(
    '111485',
  );

  /// value111486
  static final SecurityRoleType value111486 = SecurityRoleType._(
    '111486',
  );

  /// value111487
  static final SecurityRoleType value111487 = SecurityRoleType._(
    '111487',
  );

  /// value111488
  static final SecurityRoleType value111488 = SecurityRoleType._(
    '111488',
  );

  /// value111489
  static final SecurityRoleType value111489 = SecurityRoleType._(
    '111489',
  );

  /// value111490
  static final SecurityRoleType value111490 = SecurityRoleType._(
    '111490',
  );

  /// value111491
  static final SecurityRoleType value111491 = SecurityRoleType._(
    '111491',
  );

  /// value111492
  static final SecurityRoleType value111492 = SecurityRoleType._(
    '111492',
  );

  /// value111494
  static final SecurityRoleType value111494 = SecurityRoleType._(
    '111494',
  );

  /// value111495
  static final SecurityRoleType value111495 = SecurityRoleType._(
    '111495',
  );

  /// value111496
  static final SecurityRoleType value111496 = SecurityRoleType._(
    '111496',
  );

  /// value111497
  static final SecurityRoleType value111497 = SecurityRoleType._(
    '111497',
  );

  /// value111498
  static final SecurityRoleType value111498 = SecurityRoleType._(
    '111498',
  );

  /// value111499
  static final SecurityRoleType value111499 = SecurityRoleType._(
    '111499',
  );

  /// value111500
  static final SecurityRoleType value111500 = SecurityRoleType._(
    '111500',
  );

  /// value111501
  static final SecurityRoleType value111501 = SecurityRoleType._(
    '111501',
  );

  /// value111502
  static final SecurityRoleType value111502 = SecurityRoleType._(
    '111502',
  );

  /// value111503
  static final SecurityRoleType value111503 = SecurityRoleType._(
    '111503',
  );

  /// value111504
  static final SecurityRoleType value111504 = SecurityRoleType._(
    '111504',
  );

  /// value111505
  static final SecurityRoleType value111505 = SecurityRoleType._(
    '111505',
  );

  /// value111506
  static final SecurityRoleType value111506 = SecurityRoleType._(
    '111506',
  );

  /// value111507
  static final SecurityRoleType value111507 = SecurityRoleType._(
    '111507',
  );

  /// value111508
  static final SecurityRoleType value111508 = SecurityRoleType._(
    '111508',
  );

  /// value111509
  static final SecurityRoleType value111509 = SecurityRoleType._(
    '111509',
  );

  /// value111510
  static final SecurityRoleType value111510 = SecurityRoleType._(
    '111510',
  );

  /// value111511
  static final SecurityRoleType value111511 = SecurityRoleType._(
    '111511',
  );

  /// value111512
  static final SecurityRoleType value111512 = SecurityRoleType._(
    '111512',
  );

  /// value111513
  static final SecurityRoleType value111513 = SecurityRoleType._(
    '111513',
  );

  /// value111514
  static final SecurityRoleType value111514 = SecurityRoleType._(
    '111514',
  );

  /// value111515
  static final SecurityRoleType value111515 = SecurityRoleType._(
    '111515',
  );

  /// value111516
  static final SecurityRoleType value111516 = SecurityRoleType._(
    '111516',
  );

  /// value111517
  static final SecurityRoleType value111517 = SecurityRoleType._(
    '111517',
  );

  /// value111518
  static final SecurityRoleType value111518 = SecurityRoleType._(
    '111518',
  );

  /// value111519
  static final SecurityRoleType value111519 = SecurityRoleType._(
    '111519',
  );

  /// value111520
  static final SecurityRoleType value111520 = SecurityRoleType._(
    '111520',
  );

  /// value111521
  static final SecurityRoleType value111521 = SecurityRoleType._(
    '111521',
  );

  /// value111522
  static final SecurityRoleType value111522 = SecurityRoleType._(
    '111522',
  );

  /// value111523
  static final SecurityRoleType value111523 = SecurityRoleType._(
    '111523',
  );

  /// value111524
  static final SecurityRoleType value111524 = SecurityRoleType._(
    '111524',
  );

  /// value111525
  static final SecurityRoleType value111525 = SecurityRoleType._(
    '111525',
  );

  /// value111526
  static final SecurityRoleType value111526 = SecurityRoleType._(
    '111526',
  );

  /// value111527
  static final SecurityRoleType value111527 = SecurityRoleType._(
    '111527',
  );

  /// value111528
  static final SecurityRoleType value111528 = SecurityRoleType._(
    '111528',
  );

  /// value111529
  static final SecurityRoleType value111529 = SecurityRoleType._(
    '111529',
  );

  /// value111530
  static final SecurityRoleType value111530 = SecurityRoleType._(
    '111530',
  );

  /// value111531
  static final SecurityRoleType value111531 = SecurityRoleType._(
    '111531',
  );

  /// value111532
  static final SecurityRoleType value111532 = SecurityRoleType._(
    '111532',
  );

  /// value111533
  static final SecurityRoleType value111533 = SecurityRoleType._(
    '111533',
  );

  /// value111534
  static final SecurityRoleType value111534 = SecurityRoleType._(
    '111534',
  );

  /// value111535
  static final SecurityRoleType value111535 = SecurityRoleType._(
    '111535',
  );

  /// value111536
  static final SecurityRoleType value111536 = SecurityRoleType._(
    '111536',
  );

  /// value111537
  static final SecurityRoleType value111537 = SecurityRoleType._(
    '111537',
  );

  /// value111538
  static final SecurityRoleType value111538 = SecurityRoleType._(
    '111538',
  );

  /// value111539
  static final SecurityRoleType value111539 = SecurityRoleType._(
    '111539',
  );

  /// value111540
  static final SecurityRoleType value111540 = SecurityRoleType._(
    '111540',
  );

  /// value111541
  static final SecurityRoleType value111541 = SecurityRoleType._(
    '111541',
  );

  /// value111542
  static final SecurityRoleType value111542 = SecurityRoleType._(
    '111542',
  );

  /// value111543
  static final SecurityRoleType value111543 = SecurityRoleType._(
    '111543',
  );

  /// value111544
  static final SecurityRoleType value111544 = SecurityRoleType._(
    '111544',
  );

  /// value111545
  static final SecurityRoleType value111545 = SecurityRoleType._(
    '111545',
  );

  /// value111546
  static final SecurityRoleType value111546 = SecurityRoleType._(
    '111546',
  );

  /// value111547
  static final SecurityRoleType value111547 = SecurityRoleType._(
    '111547',
  );

  /// value111548
  static final SecurityRoleType value111548 = SecurityRoleType._(
    '111548',
  );

  /// value111549
  static final SecurityRoleType value111549 = SecurityRoleType._(
    '111549',
  );

  /// value111550
  static final SecurityRoleType value111550 = SecurityRoleType._(
    '111550',
  );

  /// value111551
  static final SecurityRoleType value111551 = SecurityRoleType._(
    '111551',
  );

  /// value111552
  static final SecurityRoleType value111552 = SecurityRoleType._(
    '111552',
  );

  /// value111553
  static final SecurityRoleType value111553 = SecurityRoleType._(
    '111553',
  );

  /// value111554
  static final SecurityRoleType value111554 = SecurityRoleType._(
    '111554',
  );

  /// value111555
  static final SecurityRoleType value111555 = SecurityRoleType._(
    '111555',
  );

  /// value111556
  static final SecurityRoleType value111556 = SecurityRoleType._(
    '111556',
  );

  /// value111557
  static final SecurityRoleType value111557 = SecurityRoleType._(
    '111557',
  );

  /// value111558
  static final SecurityRoleType value111558 = SecurityRoleType._(
    '111558',
  );

  /// value111559
  static final SecurityRoleType value111559 = SecurityRoleType._(
    '111559',
  );

  /// value111560
  static final SecurityRoleType value111560 = SecurityRoleType._(
    '111560',
  );

  /// value111561
  static final SecurityRoleType value111561 = SecurityRoleType._(
    '111561',
  );

  /// value111562
  static final SecurityRoleType value111562 = SecurityRoleType._(
    '111562',
  );

  /// value111563
  static final SecurityRoleType value111563 = SecurityRoleType._(
    '111563',
  );

  /// value111564
  static final SecurityRoleType value111564 = SecurityRoleType._(
    '111564',
  );

  /// value111565
  static final SecurityRoleType value111565 = SecurityRoleType._(
    '111565',
  );

  /// value111566
  static final SecurityRoleType value111566 = SecurityRoleType._(
    '111566',
  );

  /// value111567
  static final SecurityRoleType value111567 = SecurityRoleType._(
    '111567',
  );

  /// value111568
  static final SecurityRoleType value111568 = SecurityRoleType._(
    '111568',
  );

  /// value111569
  static final SecurityRoleType value111569 = SecurityRoleType._(
    '111569',
  );

  /// value111570
  static final SecurityRoleType value111570 = SecurityRoleType._(
    '111570',
  );

  /// value111571
  static final SecurityRoleType value111571 = SecurityRoleType._(
    '111571',
  );

  /// value111572
  static final SecurityRoleType value111572 = SecurityRoleType._(
    '111572',
  );

  /// value111573
  static final SecurityRoleType value111573 = SecurityRoleType._(
    '111573',
  );

  /// value111574
  static final SecurityRoleType value111574 = SecurityRoleType._(
    '111574',
  );

  /// value111575
  static final SecurityRoleType value111575 = SecurityRoleType._(
    '111575',
  );

  /// value111576
  static final SecurityRoleType value111576 = SecurityRoleType._(
    '111576',
  );

  /// value111577
  static final SecurityRoleType value111577 = SecurityRoleType._(
    '111577',
  );

  /// value111578
  static final SecurityRoleType value111578 = SecurityRoleType._(
    '111578',
  );

  /// value111579
  static final SecurityRoleType value111579 = SecurityRoleType._(
    '111579',
  );

  /// value111580
  static final SecurityRoleType value111580 = SecurityRoleType._(
    '111580',
  );

  /// value111581
  static final SecurityRoleType value111581 = SecurityRoleType._(
    '111581',
  );

  /// value111582
  static final SecurityRoleType value111582 = SecurityRoleType._(
    '111582',
  );

  /// value111583
  static final SecurityRoleType value111583 = SecurityRoleType._(
    '111583',
  );

  /// value111584
  static final SecurityRoleType value111584 = SecurityRoleType._(
    '111584',
  );

  /// value111585
  static final SecurityRoleType value111585 = SecurityRoleType._(
    '111585',
  );

  /// value111586
  static final SecurityRoleType value111586 = SecurityRoleType._(
    '111586',
  );

  /// value111587
  static final SecurityRoleType value111587 = SecurityRoleType._(
    '111587',
  );

  /// value111590
  static final SecurityRoleType value111590 = SecurityRoleType._(
    '111590',
  );

  /// value111591
  static final SecurityRoleType value111591 = SecurityRoleType._(
    '111591',
  );

  /// value111592
  static final SecurityRoleType value111592 = SecurityRoleType._(
    '111592',
  );

  /// value111593
  static final SecurityRoleType value111593 = SecurityRoleType._(
    '111593',
  );

  /// value111601
  static final SecurityRoleType value111601 = SecurityRoleType._(
    '111601',
  );

  /// value111602
  static final SecurityRoleType value111602 = SecurityRoleType._(
    '111602',
  );

  /// value111603
  static final SecurityRoleType value111603 = SecurityRoleType._(
    '111603',
  );

  /// value111604
  static final SecurityRoleType value111604 = SecurityRoleType._(
    '111604',
  );

  /// value111605
  static final SecurityRoleType value111605 = SecurityRoleType._(
    '111605',
  );

  /// value111606
  static final SecurityRoleType value111606 = SecurityRoleType._(
    '111606',
  );

  /// value111607
  static final SecurityRoleType value111607 = SecurityRoleType._(
    '111607',
  );

  /// value111609
  static final SecurityRoleType value111609 = SecurityRoleType._(
    '111609',
  );

  /// value111621
  static final SecurityRoleType value111621 = SecurityRoleType._(
    '111621',
  );

  /// value111622
  static final SecurityRoleType value111622 = SecurityRoleType._(
    '111622',
  );

  /// value111623
  static final SecurityRoleType value111623 = SecurityRoleType._(
    '111623',
  );

  /// value111625
  static final SecurityRoleType value111625 = SecurityRoleType._(
    '111625',
  );

  /// value111626
  static final SecurityRoleType value111626 = SecurityRoleType._(
    '111626',
  );

  /// value111627
  static final SecurityRoleType value111627 = SecurityRoleType._(
    '111627',
  );

  /// value111628
  static final SecurityRoleType value111628 = SecurityRoleType._(
    '111628',
  );

  /// value111629
  static final SecurityRoleType value111629 = SecurityRoleType._(
    '111629',
  );

  /// value111630
  static final SecurityRoleType value111630 = SecurityRoleType._(
    '111630',
  );

  /// value111631
  static final SecurityRoleType value111631 = SecurityRoleType._(
    '111631',
  );

  /// value111632
  static final SecurityRoleType value111632 = SecurityRoleType._(
    '111632',
  );

  /// value111633
  static final SecurityRoleType value111633 = SecurityRoleType._(
    '111633',
  );

  /// value111634
  static final SecurityRoleType value111634 = SecurityRoleType._(
    '111634',
  );

  /// value111635
  static final SecurityRoleType value111635 = SecurityRoleType._(
    '111635',
  );

  /// value111636
  static final SecurityRoleType value111636 = SecurityRoleType._(
    '111636',
  );

  /// value111637
  static final SecurityRoleType value111637 = SecurityRoleType._(
    '111637',
  );

  /// value111638
  static final SecurityRoleType value111638 = SecurityRoleType._(
    '111638',
  );

  /// value111641
  static final SecurityRoleType value111641 = SecurityRoleType._(
    '111641',
  );

  /// value111642
  static final SecurityRoleType value111642 = SecurityRoleType._(
    '111642',
  );

  /// value111643
  static final SecurityRoleType value111643 = SecurityRoleType._(
    '111643',
  );

  /// value111644
  static final SecurityRoleType value111644 = SecurityRoleType._(
    '111644',
  );

  /// value111645
  static final SecurityRoleType value111645 = SecurityRoleType._(
    '111645',
  );

  /// value111646
  static final SecurityRoleType value111646 = SecurityRoleType._(
    '111646',
  );

  /// value111671
  static final SecurityRoleType value111671 = SecurityRoleType._(
    '111671',
  );

  /// value111672
  static final SecurityRoleType value111672 = SecurityRoleType._(
    '111672',
  );

  /// value111673
  static final SecurityRoleType value111673 = SecurityRoleType._(
    '111673',
  );

  /// value111674
  static final SecurityRoleType value111674 = SecurityRoleType._(
    '111674',
  );

  /// value111675
  static final SecurityRoleType value111675 = SecurityRoleType._(
    '111675',
  );

  /// value111676
  static final SecurityRoleType value111676 = SecurityRoleType._(
    '111676',
  );

  /// value111677
  static final SecurityRoleType value111677 = SecurityRoleType._(
    '111677',
  );

  /// value111678
  static final SecurityRoleType value111678 = SecurityRoleType._(
    '111678',
  );

  /// value111679
  static final SecurityRoleType value111679 = SecurityRoleType._(
    '111679',
  );

  /// value111680
  static final SecurityRoleType value111680 = SecurityRoleType._(
    '111680',
  );

  /// value111685
  static final SecurityRoleType value111685 = SecurityRoleType._(
    '111685',
  );

  /// value111686
  static final SecurityRoleType value111686 = SecurityRoleType._(
    '111686',
  );

  /// value111687
  static final SecurityRoleType value111687 = SecurityRoleType._(
    '111687',
  );

  /// value111688
  static final SecurityRoleType value111688 = SecurityRoleType._(
    '111688',
  );

  /// value111689
  static final SecurityRoleType value111689 = SecurityRoleType._(
    '111689',
  );

  /// value111690
  static final SecurityRoleType value111690 = SecurityRoleType._(
    '111690',
  );

  /// value111691
  static final SecurityRoleType value111691 = SecurityRoleType._(
    '111691',
  );

  /// value111692
  static final SecurityRoleType value111692 = SecurityRoleType._(
    '111692',
  );

  /// value111693
  static final SecurityRoleType value111693 = SecurityRoleType._(
    '111693',
  );

  /// value111694
  static final SecurityRoleType value111694 = SecurityRoleType._(
    '111694',
  );

  /// value111695
  static final SecurityRoleType value111695 = SecurityRoleType._(
    '111695',
  );

  /// value111696
  static final SecurityRoleType value111696 = SecurityRoleType._(
    '111696',
  );

  /// value111697
  static final SecurityRoleType value111697 = SecurityRoleType._(
    '111697',
  );

  /// value111698
  static final SecurityRoleType value111698 = SecurityRoleType._(
    '111698',
  );

  /// value111700
  static final SecurityRoleType value111700 = SecurityRoleType._(
    '111700',
  );

  /// value111701
  static final SecurityRoleType value111701 = SecurityRoleType._(
    '111701',
  );

  /// value111702
  static final SecurityRoleType value111702 = SecurityRoleType._(
    '111702',
  );

  /// value111703
  static final SecurityRoleType value111703 = SecurityRoleType._(
    '111703',
  );

  /// value111704
  static final SecurityRoleType value111704 = SecurityRoleType._(
    '111704',
  );

  /// value111705
  static final SecurityRoleType value111705 = SecurityRoleType._(
    '111705',
  );

  /// value111706
  static final SecurityRoleType value111706 = SecurityRoleType._(
    '111706',
  );

  /// value111707
  static final SecurityRoleType value111707 = SecurityRoleType._(
    '111707',
  );

  /// value111708
  static final SecurityRoleType value111708 = SecurityRoleType._(
    '111708',
  );

  /// value111709
  static final SecurityRoleType value111709 = SecurityRoleType._(
    '111709',
  );

  /// value111710
  static final SecurityRoleType value111710 = SecurityRoleType._(
    '111710',
  );

  /// value111711
  static final SecurityRoleType value111711 = SecurityRoleType._(
    '111711',
  );

  /// value111712
  static final SecurityRoleType value111712 = SecurityRoleType._(
    '111712',
  );

  /// value111718
  static final SecurityRoleType value111718 = SecurityRoleType._(
    '111718',
  );

  /// value111719
  static final SecurityRoleType value111719 = SecurityRoleType._(
    '111719',
  );

  /// value111720
  static final SecurityRoleType value111720 = SecurityRoleType._(
    '111720',
  );

  /// value111721
  static final SecurityRoleType value111721 = SecurityRoleType._(
    '111721',
  );

  /// value111723
  static final SecurityRoleType value111723 = SecurityRoleType._(
    '111723',
  );

  /// value111724
  static final SecurityRoleType value111724 = SecurityRoleType._(
    '111724',
  );

  /// value111726
  static final SecurityRoleType value111726 = SecurityRoleType._(
    '111726',
  );

  /// value111727
  static final SecurityRoleType value111727 = SecurityRoleType._(
    '111727',
  );

  /// value111729
  static final SecurityRoleType value111729 = SecurityRoleType._(
    '111729',
  );

  /// value111741
  static final SecurityRoleType value111741 = SecurityRoleType._(
    '111741',
  );

  /// value111742
  static final SecurityRoleType value111742 = SecurityRoleType._(
    '111742',
  );

  /// value111743
  static final SecurityRoleType value111743 = SecurityRoleType._(
    '111743',
  );

  /// value111744
  static final SecurityRoleType value111744 = SecurityRoleType._(
    '111744',
  );

  /// value111745
  static final SecurityRoleType value111745 = SecurityRoleType._(
    '111745',
  );

  /// value111746
  static final SecurityRoleType value111746 = SecurityRoleType._(
    '111746',
  );

  /// value111747
  static final SecurityRoleType value111747 = SecurityRoleType._(
    '111747',
  );

  /// value111748
  static final SecurityRoleType value111748 = SecurityRoleType._(
    '111748',
  );

  /// value111749
  static final SecurityRoleType value111749 = SecurityRoleType._(
    '111749',
  );

  /// value111750
  static final SecurityRoleType value111750 = SecurityRoleType._(
    '111750',
  );

  /// value111751
  static final SecurityRoleType value111751 = SecurityRoleType._(
    '111751',
  );

  /// value111752
  static final SecurityRoleType value111752 = SecurityRoleType._(
    '111752',
  );

  /// value111753
  static final SecurityRoleType value111753 = SecurityRoleType._(
    '111753',
  );

  /// value111754
  static final SecurityRoleType value111754 = SecurityRoleType._(
    '111754',
  );

  /// value111755
  static final SecurityRoleType value111755 = SecurityRoleType._(
    '111755',
  );

  /// value111756
  static final SecurityRoleType value111756 = SecurityRoleType._(
    '111756',
  );

  /// value111760
  static final SecurityRoleType value111760 = SecurityRoleType._(
    '111760',
  );

  /// value111761
  static final SecurityRoleType value111761 = SecurityRoleType._(
    '111761',
  );

  /// value111762
  static final SecurityRoleType value111762 = SecurityRoleType._(
    '111762',
  );

  /// value111763
  static final SecurityRoleType value111763 = SecurityRoleType._(
    '111763',
  );

  /// value111764
  static final SecurityRoleType value111764 = SecurityRoleType._(
    '111764',
  );

  /// value111765
  static final SecurityRoleType value111765 = SecurityRoleType._(
    '111765',
  );

  /// value111766
  static final SecurityRoleType value111766 = SecurityRoleType._(
    '111766',
  );

  /// value111767
  static final SecurityRoleType value111767 = SecurityRoleType._(
    '111767',
  );

  /// value111768
  static final SecurityRoleType value111768 = SecurityRoleType._(
    '111768',
  );

  /// value111769
  static final SecurityRoleType value111769 = SecurityRoleType._(
    '111769',
  );

  /// value111770
  static final SecurityRoleType value111770 = SecurityRoleType._(
    '111770',
  );

  /// value111771
  static final SecurityRoleType value111771 = SecurityRoleType._(
    '111771',
  );

  /// value111772
  static final SecurityRoleType value111772 = SecurityRoleType._(
    '111772',
  );

  /// value111773
  static final SecurityRoleType value111773 = SecurityRoleType._(
    '111773',
  );

  /// value111776
  static final SecurityRoleType value111776 = SecurityRoleType._(
    '111776',
  );

  /// value111777
  static final SecurityRoleType value111777 = SecurityRoleType._(
    '111777',
  );

  /// value111778
  static final SecurityRoleType value111778 = SecurityRoleType._(
    '111778',
  );

  /// value111779
  static final SecurityRoleType value111779 = SecurityRoleType._(
    '111779',
  );

  /// value111780
  static final SecurityRoleType value111780 = SecurityRoleType._(
    '111780',
  );

  /// value111781
  static final SecurityRoleType value111781 = SecurityRoleType._(
    '111781',
  );

  /// value111782
  static final SecurityRoleType value111782 = SecurityRoleType._(
    '111782',
  );

  /// value111783
  static final SecurityRoleType value111783 = SecurityRoleType._(
    '111783',
  );

  /// value111786
  static final SecurityRoleType value111786 = SecurityRoleType._(
    '111786',
  );

  /// value111787
  static final SecurityRoleType value111787 = SecurityRoleType._(
    '111787',
  );

  /// value111791
  static final SecurityRoleType value111791 = SecurityRoleType._(
    '111791',
  );

  /// value111792
  static final SecurityRoleType value111792 = SecurityRoleType._(
    '111792',
  );

  /// value111800
  static final SecurityRoleType value111800 = SecurityRoleType._(
    '111800',
  );

  /// value111801
  static final SecurityRoleType value111801 = SecurityRoleType._(
    '111801',
  );

  /// value111802
  static final SecurityRoleType value111802 = SecurityRoleType._(
    '111802',
  );

  /// value111803
  static final SecurityRoleType value111803 = SecurityRoleType._(
    '111803',
  );

  /// value111804
  static final SecurityRoleType value111804 = SecurityRoleType._(
    '111804',
  );

  /// value111805
  static final SecurityRoleType value111805 = SecurityRoleType._(
    '111805',
  );

  /// value111806
  static final SecurityRoleType value111806 = SecurityRoleType._(
    '111806',
  );

  /// value111807
  static final SecurityRoleType value111807 = SecurityRoleType._(
    '111807',
  );

  /// value111808
  static final SecurityRoleType value111808 = SecurityRoleType._(
    '111808',
  );

  /// value111809
  static final SecurityRoleType value111809 = SecurityRoleType._(
    '111809',
  );

  /// value111810
  static final SecurityRoleType value111810 = SecurityRoleType._(
    '111810',
  );

  /// value111811
  static final SecurityRoleType value111811 = SecurityRoleType._(
    '111811',
  );

  /// value111812
  static final SecurityRoleType value111812 = SecurityRoleType._(
    '111812',
  );

  /// value111813
  static final SecurityRoleType value111813 = SecurityRoleType._(
    '111813',
  );

  /// value111814
  static final SecurityRoleType value111814 = SecurityRoleType._(
    '111814',
  );

  /// value111815
  static final SecurityRoleType value111815 = SecurityRoleType._(
    '111815',
  );

  /// value111816
  static final SecurityRoleType value111816 = SecurityRoleType._(
    '111816',
  );

  /// value111817
  static final SecurityRoleType value111817 = SecurityRoleType._(
    '111817',
  );

  /// value111818
  static final SecurityRoleType value111818 = SecurityRoleType._(
    '111818',
  );

  /// value111819
  static final SecurityRoleType value111819 = SecurityRoleType._(
    '111819',
  );

  /// value111820
  static final SecurityRoleType value111820 = SecurityRoleType._(
    '111820',
  );

  /// value111821
  static final SecurityRoleType value111821 = SecurityRoleType._(
    '111821',
  );

  /// value111822
  static final SecurityRoleType value111822 = SecurityRoleType._(
    '111822',
  );

  /// value111823
  static final SecurityRoleType value111823 = SecurityRoleType._(
    '111823',
  );

  /// value111824
  static final SecurityRoleType value111824 = SecurityRoleType._(
    '111824',
  );

  /// value111825
  static final SecurityRoleType value111825 = SecurityRoleType._(
    '111825',
  );

  /// value111826
  static final SecurityRoleType value111826 = SecurityRoleType._(
    '111826',
  );

  /// value111827
  static final SecurityRoleType value111827 = SecurityRoleType._(
    '111827',
  );

  /// value111828
  static final SecurityRoleType value111828 = SecurityRoleType._(
    '111828',
  );

  /// value111829
  static final SecurityRoleType value111829 = SecurityRoleType._(
    '111829',
  );

  /// value111830
  static final SecurityRoleType value111830 = SecurityRoleType._(
    '111830',
  );

  /// value111831
  static final SecurityRoleType value111831 = SecurityRoleType._(
    '111831',
  );

  /// value111832
  static final SecurityRoleType value111832 = SecurityRoleType._(
    '111832',
  );

  /// value111833
  static final SecurityRoleType value111833 = SecurityRoleType._(
    '111833',
  );

  /// value111834
  static final SecurityRoleType value111834 = SecurityRoleType._(
    '111834',
  );

  /// value111835
  static final SecurityRoleType value111835 = SecurityRoleType._(
    '111835',
  );

  /// value111836
  static final SecurityRoleType value111836 = SecurityRoleType._(
    '111836',
  );

  /// value111837
  static final SecurityRoleType value111837 = SecurityRoleType._(
    '111837',
  );

  /// value111838
  static final SecurityRoleType value111838 = SecurityRoleType._(
    '111838',
  );

  /// value111839
  static final SecurityRoleType value111839 = SecurityRoleType._(
    '111839',
  );

  /// value111840
  static final SecurityRoleType value111840 = SecurityRoleType._(
    '111840',
  );

  /// value111841
  static final SecurityRoleType value111841 = SecurityRoleType._(
    '111841',
  );

  /// value111842
  static final SecurityRoleType value111842 = SecurityRoleType._(
    '111842',
  );

  /// value111843
  static final SecurityRoleType value111843 = SecurityRoleType._(
    '111843',
  );

  /// value111844
  static final SecurityRoleType value111844 = SecurityRoleType._(
    '111844',
  );

  /// value111845
  static final SecurityRoleType value111845 = SecurityRoleType._(
    '111845',
  );

  /// value111846
  static final SecurityRoleType value111846 = SecurityRoleType._(
    '111846',
  );

  /// value111847
  static final SecurityRoleType value111847 = SecurityRoleType._(
    '111847',
  );

  /// value111848
  static final SecurityRoleType value111848 = SecurityRoleType._(
    '111848',
  );

  /// value111849
  static final SecurityRoleType value111849 = SecurityRoleType._(
    '111849',
  );

  /// value111850
  static final SecurityRoleType value111850 = SecurityRoleType._(
    '111850',
  );

  /// value111851
  static final SecurityRoleType value111851 = SecurityRoleType._(
    '111851',
  );

  /// value111852
  static final SecurityRoleType value111852 = SecurityRoleType._(
    '111852',
  );

  /// value111853
  static final SecurityRoleType value111853 = SecurityRoleType._(
    '111853',
  );

  /// value111854
  static final SecurityRoleType value111854 = SecurityRoleType._(
    '111854',
  );

  /// value111855
  static final SecurityRoleType value111855 = SecurityRoleType._(
    '111855',
  );

  /// value111856
  static final SecurityRoleType value111856 = SecurityRoleType._(
    '111856',
  );

  /// value111900
  static final SecurityRoleType value111900 = SecurityRoleType._(
    '111900',
  );

  /// value111901
  static final SecurityRoleType value111901 = SecurityRoleType._(
    '111901',
  );

  /// value111902
  static final SecurityRoleType value111902 = SecurityRoleType._(
    '111902',
  );

  /// value111903
  static final SecurityRoleType value111903 = SecurityRoleType._(
    '111903',
  );

  /// value111904
  static final SecurityRoleType value111904 = SecurityRoleType._(
    '111904',
  );

  /// value111905
  static final SecurityRoleType value111905 = SecurityRoleType._(
    '111905',
  );

  /// value111906
  static final SecurityRoleType value111906 = SecurityRoleType._(
    '111906',
  );

  /// value111907
  static final SecurityRoleType value111907 = SecurityRoleType._(
    '111907',
  );

  /// value111908
  static final SecurityRoleType value111908 = SecurityRoleType._(
    '111908',
  );

  /// value111909
  static final SecurityRoleType value111909 = SecurityRoleType._(
    '111909',
  );

  /// value111910
  static final SecurityRoleType value111910 = SecurityRoleType._(
    '111910',
  );

  /// value111911
  static final SecurityRoleType value111911 = SecurityRoleType._(
    '111911',
  );

  /// value111912
  static final SecurityRoleType value111912 = SecurityRoleType._(
    '111912',
  );

  /// value111913
  static final SecurityRoleType value111913 = SecurityRoleType._(
    '111913',
  );

  /// value111914
  static final SecurityRoleType value111914 = SecurityRoleType._(
    '111914',
  );

  /// value111915
  static final SecurityRoleType value111915 = SecurityRoleType._(
    '111915',
  );

  /// value111916
  static final SecurityRoleType value111916 = SecurityRoleType._(
    '111916',
  );

  /// value111917
  static final SecurityRoleType value111917 = SecurityRoleType._(
    '111917',
  );

  /// value111918
  static final SecurityRoleType value111918 = SecurityRoleType._(
    '111918',
  );

  /// value111919
  static final SecurityRoleType value111919 = SecurityRoleType._(
    '111919',
  );

  /// value111920
  static final SecurityRoleType value111920 = SecurityRoleType._(
    '111920',
  );

  /// value111921
  static final SecurityRoleType value111921 = SecurityRoleType._(
    '111921',
  );

  /// value111922
  static final SecurityRoleType value111922 = SecurityRoleType._(
    '111922',
  );

  /// value111923
  static final SecurityRoleType value111923 = SecurityRoleType._(
    '111923',
  );

  /// value111924
  static final SecurityRoleType value111924 = SecurityRoleType._(
    '111924',
  );

  /// value111925
  static final SecurityRoleType value111925 = SecurityRoleType._(
    '111925',
  );

  /// value111926
  static final SecurityRoleType value111926 = SecurityRoleType._(
    '111926',
  );

  /// value111927
  static final SecurityRoleType value111927 = SecurityRoleType._(
    '111927',
  );

  /// value111928
  static final SecurityRoleType value111928 = SecurityRoleType._(
    '111928',
  );

  /// value111929
  static final SecurityRoleType value111929 = SecurityRoleType._(
    '111929',
  );

  /// value111930
  static final SecurityRoleType value111930 = SecurityRoleType._(
    '111930',
  );

  /// value111931
  static final SecurityRoleType value111931 = SecurityRoleType._(
    '111931',
  );

  /// value111932
  static final SecurityRoleType value111932 = SecurityRoleType._(
    '111932',
  );

  /// value111933
  static final SecurityRoleType value111933 = SecurityRoleType._(
    '111933',
  );

  /// value111934
  static final SecurityRoleType value111934 = SecurityRoleType._(
    '111934',
  );

  /// value111935
  static final SecurityRoleType value111935 = SecurityRoleType._(
    '111935',
  );

  /// value111936
  static final SecurityRoleType value111936 = SecurityRoleType._(
    '111936',
  );

  /// value111937
  static final SecurityRoleType value111937 = SecurityRoleType._(
    '111937',
  );

  /// value111938
  static final SecurityRoleType value111938 = SecurityRoleType._(
    '111938',
  );

  /// value111939
  static final SecurityRoleType value111939 = SecurityRoleType._(
    '111939',
  );

  /// value111940
  static final SecurityRoleType value111940 = SecurityRoleType._(
    '111940',
  );

  /// value111941
  static final SecurityRoleType value111941 = SecurityRoleType._(
    '111941',
  );

  /// value111942
  static final SecurityRoleType value111942 = SecurityRoleType._(
    '111942',
  );

  /// value111943
  static final SecurityRoleType value111943 = SecurityRoleType._(
    '111943',
  );

  /// value111944
  static final SecurityRoleType value111944 = SecurityRoleType._(
    '111944',
  );

  /// value111945
  static final SecurityRoleType value111945 = SecurityRoleType._(
    '111945',
  );

  /// value111946
  static final SecurityRoleType value111946 = SecurityRoleType._(
    '111946',
  );

  /// value111947
  static final SecurityRoleType value111947 = SecurityRoleType._(
    '111947',
  );

  /// value112000
  static final SecurityRoleType value112000 = SecurityRoleType._(
    '112000',
  );

  /// value112001
  static final SecurityRoleType value112001 = SecurityRoleType._(
    '112001',
  );

  /// value112002
  static final SecurityRoleType value112002 = SecurityRoleType._(
    '112002',
  );

  /// value112003
  static final SecurityRoleType value112003 = SecurityRoleType._(
    '112003',
  );

  /// value112004
  static final SecurityRoleType value112004 = SecurityRoleType._(
    '112004',
  );

  /// value112005
  static final SecurityRoleType value112005 = SecurityRoleType._(
    '112005',
  );

  /// value112006
  static final SecurityRoleType value112006 = SecurityRoleType._(
    '112006',
  );

  /// value112007
  static final SecurityRoleType value112007 = SecurityRoleType._(
    '112007',
  );

  /// value112008
  static final SecurityRoleType value112008 = SecurityRoleType._(
    '112008',
  );

  /// value112009
  static final SecurityRoleType value112009 = SecurityRoleType._(
    '112009',
  );

  /// value112010
  static final SecurityRoleType value112010 = SecurityRoleType._(
    '112010',
  );

  /// value112011
  static final SecurityRoleType value112011 = SecurityRoleType._(
    '112011',
  );

  /// value112012
  static final SecurityRoleType value112012 = SecurityRoleType._(
    '112012',
  );

  /// value112013
  static final SecurityRoleType value112013 = SecurityRoleType._(
    '112013',
  );

  /// value112014
  static final SecurityRoleType value112014 = SecurityRoleType._(
    '112014',
  );

  /// value112015
  static final SecurityRoleType value112015 = SecurityRoleType._(
    '112015',
  );

  /// value112016
  static final SecurityRoleType value112016 = SecurityRoleType._(
    '112016',
  );

  /// value112017
  static final SecurityRoleType value112017 = SecurityRoleType._(
    '112017',
  );

  /// value112018
  static final SecurityRoleType value112018 = SecurityRoleType._(
    '112018',
  );

  /// value112019
  static final SecurityRoleType value112019 = SecurityRoleType._(
    '112019',
  );

  /// value112020
  static final SecurityRoleType value112020 = SecurityRoleType._(
    '112020',
  );

  /// value112021
  static final SecurityRoleType value112021 = SecurityRoleType._(
    '112021',
  );

  /// value112022
  static final SecurityRoleType value112022 = SecurityRoleType._(
    '112022',
  );

  /// value112023
  static final SecurityRoleType value112023 = SecurityRoleType._(
    '112023',
  );

  /// value112024
  static final SecurityRoleType value112024 = SecurityRoleType._(
    '112024',
  );

  /// value112025
  static final SecurityRoleType value112025 = SecurityRoleType._(
    '112025',
  );

  /// value112026
  static final SecurityRoleType value112026 = SecurityRoleType._(
    '112026',
  );

  /// value112027
  static final SecurityRoleType value112027 = SecurityRoleType._(
    '112027',
  );

  /// value112028
  static final SecurityRoleType value112028 = SecurityRoleType._(
    '112028',
  );

  /// value112029
  static final SecurityRoleType value112029 = SecurityRoleType._(
    '112029',
  );

  /// value112030
  static final SecurityRoleType value112030 = SecurityRoleType._(
    '112030',
  );

  /// value112031
  static final SecurityRoleType value112031 = SecurityRoleType._(
    '112031',
  );

  /// value112032
  static final SecurityRoleType value112032 = SecurityRoleType._(
    '112032',
  );

  /// value112033
  static final SecurityRoleType value112033 = SecurityRoleType._(
    '112033',
  );

  /// value112034
  static final SecurityRoleType value112034 = SecurityRoleType._(
    '112034',
  );

  /// value112035
  static final SecurityRoleType value112035 = SecurityRoleType._(
    '112035',
  );

  /// value112036
  static final SecurityRoleType value112036 = SecurityRoleType._(
    '112036',
  );

  /// value112037
  static final SecurityRoleType value112037 = SecurityRoleType._(
    '112037',
  );

  /// value112038
  static final SecurityRoleType value112038 = SecurityRoleType._(
    '112038',
  );

  /// value112039
  static final SecurityRoleType value112039 = SecurityRoleType._(
    '112039',
  );

  /// value112040
  static final SecurityRoleType value112040 = SecurityRoleType._(
    '112040',
  );

  /// value112041
  static final SecurityRoleType value112041 = SecurityRoleType._(
    '112041',
  );

  /// value112042
  static final SecurityRoleType value112042 = SecurityRoleType._(
    '112042',
  );

  /// value112043
  static final SecurityRoleType value112043 = SecurityRoleType._(
    '112043',
  );

  /// value112044
  static final SecurityRoleType value112044 = SecurityRoleType._(
    '112044',
  );

  /// value112045
  static final SecurityRoleType value112045 = SecurityRoleType._(
    '112045',
  );

  /// value112046
  static final SecurityRoleType value112046 = SecurityRoleType._(
    '112046',
  );

  /// value112047
  static final SecurityRoleType value112047 = SecurityRoleType._(
    '112047',
  );

  /// value112048
  static final SecurityRoleType value112048 = SecurityRoleType._(
    '112048',
  );

  /// value112049
  static final SecurityRoleType value112049 = SecurityRoleType._(
    '112049',
  );

  /// value112050
  static final SecurityRoleType value112050 = SecurityRoleType._(
    '112050',
  );

  /// value112051
  static final SecurityRoleType value112051 = SecurityRoleType._(
    '112051',
  );

  /// value112052
  static final SecurityRoleType value112052 = SecurityRoleType._(
    '112052',
  );

  /// value112053
  static final SecurityRoleType value112053 = SecurityRoleType._(
    '112053',
  );

  /// value112054
  static final SecurityRoleType value112054 = SecurityRoleType._(
    '112054',
  );

  /// value112055
  static final SecurityRoleType value112055 = SecurityRoleType._(
    '112055',
  );

  /// value112056
  static final SecurityRoleType value112056 = SecurityRoleType._(
    '112056',
  );

  /// value112057
  static final SecurityRoleType value112057 = SecurityRoleType._(
    '112057',
  );

  /// value112058
  static final SecurityRoleType value112058 = SecurityRoleType._(
    '112058',
  );

  /// value112059
  static final SecurityRoleType value112059 = SecurityRoleType._(
    '112059',
  );

  /// value112060
  static final SecurityRoleType value112060 = SecurityRoleType._(
    '112060',
  );

  /// value112061
  static final SecurityRoleType value112061 = SecurityRoleType._(
    '112061',
  );

  /// value112062
  static final SecurityRoleType value112062 = SecurityRoleType._(
    '112062',
  );

  /// value112063
  static final SecurityRoleType value112063 = SecurityRoleType._(
    '112063',
  );

  /// value112064
  static final SecurityRoleType value112064 = SecurityRoleType._(
    '112064',
  );

  /// value112065
  static final SecurityRoleType value112065 = SecurityRoleType._(
    '112065',
  );

  /// value112066
  static final SecurityRoleType value112066 = SecurityRoleType._(
    '112066',
  );

  /// value112067
  static final SecurityRoleType value112067 = SecurityRoleType._(
    '112067',
  );

  /// value112068
  static final SecurityRoleType value112068 = SecurityRoleType._(
    '112068',
  );

  /// value112069
  static final SecurityRoleType value112069 = SecurityRoleType._(
    '112069',
  );

  /// value112070
  static final SecurityRoleType value112070 = SecurityRoleType._(
    '112070',
  );

  /// value112071
  static final SecurityRoleType value112071 = SecurityRoleType._(
    '112071',
  );

  /// value112072
  static final SecurityRoleType value112072 = SecurityRoleType._(
    '112072',
  );

  /// value112073
  static final SecurityRoleType value112073 = SecurityRoleType._(
    '112073',
  );

  /// value112074
  static final SecurityRoleType value112074 = SecurityRoleType._(
    '112074',
  );

  /// value112075
  static final SecurityRoleType value112075 = SecurityRoleType._(
    '112075',
  );

  /// value112076
  static final SecurityRoleType value112076 = SecurityRoleType._(
    '112076',
  );

  /// value112077
  static final SecurityRoleType value112077 = SecurityRoleType._(
    '112077',
  );

  /// value112078
  static final SecurityRoleType value112078 = SecurityRoleType._(
    '112078',
  );

  /// value112079
  static final SecurityRoleType value112079 = SecurityRoleType._(
    '112079',
  );

  /// value112080
  static final SecurityRoleType value112080 = SecurityRoleType._(
    '112080',
  );

  /// value112081
  static final SecurityRoleType value112081 = SecurityRoleType._(
    '112081',
  );

  /// value112082
  static final SecurityRoleType value112082 = SecurityRoleType._(
    '112082',
  );

  /// value112083
  static final SecurityRoleType value112083 = SecurityRoleType._(
    '112083',
  );

  /// value112084
  static final SecurityRoleType value112084 = SecurityRoleType._(
    '112084',
  );

  /// value112085
  static final SecurityRoleType value112085 = SecurityRoleType._(
    '112085',
  );

  /// value112086
  static final SecurityRoleType value112086 = SecurityRoleType._(
    '112086',
  );

  /// value112087
  static final SecurityRoleType value112087 = SecurityRoleType._(
    '112087',
  );

  /// value112088
  static final SecurityRoleType value112088 = SecurityRoleType._(
    '112088',
  );

  /// value112089
  static final SecurityRoleType value112089 = SecurityRoleType._(
    '112089',
  );

  /// value112090
  static final SecurityRoleType value112090 = SecurityRoleType._(
    '112090',
  );

  /// value112091
  static final SecurityRoleType value112091 = SecurityRoleType._(
    '112091',
  );

  /// value112092
  static final SecurityRoleType value112092 = SecurityRoleType._(
    '112092',
  );

  /// value112093
  static final SecurityRoleType value112093 = SecurityRoleType._(
    '112093',
  );

  /// value112094
  static final SecurityRoleType value112094 = SecurityRoleType._(
    '112094',
  );

  /// value112095
  static final SecurityRoleType value112095 = SecurityRoleType._(
    '112095',
  );

  /// value112096
  static final SecurityRoleType value112096 = SecurityRoleType._(
    '112096',
  );

  /// value112097
  static final SecurityRoleType value112097 = SecurityRoleType._(
    '112097',
  );

  /// value112098
  static final SecurityRoleType value112098 = SecurityRoleType._(
    '112098',
  );

  /// value112099
  static final SecurityRoleType value112099 = SecurityRoleType._(
    '112099',
  );

  /// value112100
  static final SecurityRoleType value112100 = SecurityRoleType._(
    '112100',
  );

  /// value112101
  static final SecurityRoleType value112101 = SecurityRoleType._(
    '112101',
  );

  /// value112102
  static final SecurityRoleType value112102 = SecurityRoleType._(
    '112102',
  );

  /// value112103
  static final SecurityRoleType value112103 = SecurityRoleType._(
    '112103',
  );

  /// value112104
  static final SecurityRoleType value112104 = SecurityRoleType._(
    '112104',
  );

  /// value112105
  static final SecurityRoleType value112105 = SecurityRoleType._(
    '112105',
  );

  /// value112106
  static final SecurityRoleType value112106 = SecurityRoleType._(
    '112106',
  );

  /// value112107
  static final SecurityRoleType value112107 = SecurityRoleType._(
    '112107',
  );

  /// value112108
  static final SecurityRoleType value112108 = SecurityRoleType._(
    '112108',
  );

  /// value112109
  static final SecurityRoleType value112109 = SecurityRoleType._(
    '112109',
  );

  /// value112110
  static final SecurityRoleType value112110 = SecurityRoleType._(
    '112110',
  );

  /// value112111
  static final SecurityRoleType value112111 = SecurityRoleType._(
    '112111',
  );

  /// value112112
  static final SecurityRoleType value112112 = SecurityRoleType._(
    '112112',
  );

  /// value112113
  static final SecurityRoleType value112113 = SecurityRoleType._(
    '112113',
  );

  /// value112114
  static final SecurityRoleType value112114 = SecurityRoleType._(
    '112114',
  );

  /// value112115
  static final SecurityRoleType value112115 = SecurityRoleType._(
    '112115',
  );

  /// value112116
  static final SecurityRoleType value112116 = SecurityRoleType._(
    '112116',
  );

  /// value112117
  static final SecurityRoleType value112117 = SecurityRoleType._(
    '112117',
  );

  /// value112118
  static final SecurityRoleType value112118 = SecurityRoleType._(
    '112118',
  );

  /// value112119
  static final SecurityRoleType value112119 = SecurityRoleType._(
    '112119',
  );

  /// value112120
  static final SecurityRoleType value112120 = SecurityRoleType._(
    '112120',
  );

  /// value112121
  static final SecurityRoleType value112121 = SecurityRoleType._(
    '112121',
  );

  /// value112122
  static final SecurityRoleType value112122 = SecurityRoleType._(
    '112122',
  );

  /// value112123
  static final SecurityRoleType value112123 = SecurityRoleType._(
    '112123',
  );

  /// value112124
  static final SecurityRoleType value112124 = SecurityRoleType._(
    '112124',
  );

  /// value112125
  static final SecurityRoleType value112125 = SecurityRoleType._(
    '112125',
  );

  /// value112126
  static final SecurityRoleType value112126 = SecurityRoleType._(
    '112126',
  );

  /// value112127
  static final SecurityRoleType value112127 = SecurityRoleType._(
    '112127',
  );

  /// value112128
  static final SecurityRoleType value112128 = SecurityRoleType._(
    '112128',
  );

  /// value112129
  static final SecurityRoleType value112129 = SecurityRoleType._(
    '112129',
  );

  /// value112130
  static final SecurityRoleType value112130 = SecurityRoleType._(
    '112130',
  );

  /// value112131
  static final SecurityRoleType value112131 = SecurityRoleType._(
    '112131',
  );

  /// value112132
  static final SecurityRoleType value112132 = SecurityRoleType._(
    '112132',
  );

  /// value112133
  static final SecurityRoleType value112133 = SecurityRoleType._(
    '112133',
  );

  /// value112134
  static final SecurityRoleType value112134 = SecurityRoleType._(
    '112134',
  );

  /// value112135
  static final SecurityRoleType value112135 = SecurityRoleType._(
    '112135',
  );

  /// value112136
  static final SecurityRoleType value112136 = SecurityRoleType._(
    '112136',
  );

  /// value112137
  static final SecurityRoleType value112137 = SecurityRoleType._(
    '112137',
  );

  /// value112138
  static final SecurityRoleType value112138 = SecurityRoleType._(
    '112138',
  );

  /// value112139
  static final SecurityRoleType value112139 = SecurityRoleType._(
    '112139',
  );

  /// value112140
  static final SecurityRoleType value112140 = SecurityRoleType._(
    '112140',
  );

  /// value112141
  static final SecurityRoleType value112141 = SecurityRoleType._(
    '112141',
  );

  /// value112142
  static final SecurityRoleType value112142 = SecurityRoleType._(
    '112142',
  );

  /// value112143
  static final SecurityRoleType value112143 = SecurityRoleType._(
    '112143',
  );

  /// value112144
  static final SecurityRoleType value112144 = SecurityRoleType._(
    '112144',
  );

  /// value112145
  static final SecurityRoleType value112145 = SecurityRoleType._(
    '112145',
  );

  /// value112146
  static final SecurityRoleType value112146 = SecurityRoleType._(
    '112146',
  );

  /// value112147
  static final SecurityRoleType value112147 = SecurityRoleType._(
    '112147',
  );

  /// value112148
  static final SecurityRoleType value112148 = SecurityRoleType._(
    '112148',
  );

  /// value112149
  static final SecurityRoleType value112149 = SecurityRoleType._(
    '112149',
  );

  /// value112150
  static final SecurityRoleType value112150 = SecurityRoleType._(
    '112150',
  );

  /// value112151
  static final SecurityRoleType value112151 = SecurityRoleType._(
    '112151',
  );

  /// value112152
  static final SecurityRoleType value112152 = SecurityRoleType._(
    '112152',
  );

  /// value112153
  static final SecurityRoleType value112153 = SecurityRoleType._(
    '112153',
  );

  /// value112154
  static final SecurityRoleType value112154 = SecurityRoleType._(
    '112154',
  );

  /// value112155
  static final SecurityRoleType value112155 = SecurityRoleType._(
    '112155',
  );

  /// value112156
  static final SecurityRoleType value112156 = SecurityRoleType._(
    '112156',
  );

  /// value112157
  static final SecurityRoleType value112157 = SecurityRoleType._(
    '112157',
  );

  /// value112158
  static final SecurityRoleType value112158 = SecurityRoleType._(
    '112158',
  );

  /// value112159
  static final SecurityRoleType value112159 = SecurityRoleType._(
    '112159',
  );

  /// value112160
  static final SecurityRoleType value112160 = SecurityRoleType._(
    '112160',
  );

  /// value112161
  static final SecurityRoleType value112161 = SecurityRoleType._(
    '112161',
  );

  /// value112162
  static final SecurityRoleType value112162 = SecurityRoleType._(
    '112162',
  );

  /// value112163
  static final SecurityRoleType value112163 = SecurityRoleType._(
    '112163',
  );

  /// value112164
  static final SecurityRoleType value112164 = SecurityRoleType._(
    '112164',
  );

  /// value112165
  static final SecurityRoleType value112165 = SecurityRoleType._(
    '112165',
  );

  /// value112166
  static final SecurityRoleType value112166 = SecurityRoleType._(
    '112166',
  );

  /// value112167
  static final SecurityRoleType value112167 = SecurityRoleType._(
    '112167',
  );

  /// value112168
  static final SecurityRoleType value112168 = SecurityRoleType._(
    '112168',
  );

  /// value112169
  static final SecurityRoleType value112169 = SecurityRoleType._(
    '112169',
  );

  /// value112170
  static final SecurityRoleType value112170 = SecurityRoleType._(
    '112170',
  );

  /// value112171
  static final SecurityRoleType value112171 = SecurityRoleType._(
    '112171',
  );

  /// value112172
  static final SecurityRoleType value112172 = SecurityRoleType._(
    '112172',
  );

  /// value112173
  static final SecurityRoleType value112173 = SecurityRoleType._(
    '112173',
  );

  /// value112174
  static final SecurityRoleType value112174 = SecurityRoleType._(
    '112174',
  );

  /// value112175
  static final SecurityRoleType value112175 = SecurityRoleType._(
    '112175',
  );

  /// value112176
  static final SecurityRoleType value112176 = SecurityRoleType._(
    '112176',
  );

  /// value112177
  static final SecurityRoleType value112177 = SecurityRoleType._(
    '112177',
  );

  /// value112178
  static final SecurityRoleType value112178 = SecurityRoleType._(
    '112178',
  );

  /// value112179
  static final SecurityRoleType value112179 = SecurityRoleType._(
    '112179',
  );

  /// value112180
  static final SecurityRoleType value112180 = SecurityRoleType._(
    '112180',
  );

  /// value112181
  static final SecurityRoleType value112181 = SecurityRoleType._(
    '112181',
  );

  /// value112182
  static final SecurityRoleType value112182 = SecurityRoleType._(
    '112182',
  );

  /// value112183
  static final SecurityRoleType value112183 = SecurityRoleType._(
    '112183',
  );

  /// value112184
  static final SecurityRoleType value112184 = SecurityRoleType._(
    '112184',
  );

  /// value112185
  static final SecurityRoleType value112185 = SecurityRoleType._(
    '112185',
  );

  /// value112186
  static final SecurityRoleType value112186 = SecurityRoleType._(
    '112186',
  );

  /// value112187
  static final SecurityRoleType value112187 = SecurityRoleType._(
    '112187',
  );

  /// value112188
  static final SecurityRoleType value112188 = SecurityRoleType._(
    '112188',
  );

  /// value112189
  static final SecurityRoleType value112189 = SecurityRoleType._(
    '112189',
  );

  /// value112191
  static final SecurityRoleType value112191 = SecurityRoleType._(
    '112191',
  );

  /// value112192
  static final SecurityRoleType value112192 = SecurityRoleType._(
    '112192',
  );

  /// value112193
  static final SecurityRoleType value112193 = SecurityRoleType._(
    '112193',
  );

  /// value112194
  static final SecurityRoleType value112194 = SecurityRoleType._(
    '112194',
  );

  /// value112195
  static final SecurityRoleType value112195 = SecurityRoleType._(
    '112195',
  );

  /// value112196
  static final SecurityRoleType value112196 = SecurityRoleType._(
    '112196',
  );

  /// value112197
  static final SecurityRoleType value112197 = SecurityRoleType._(
    '112197',
  );

  /// value112198
  static final SecurityRoleType value112198 = SecurityRoleType._(
    '112198',
  );

  /// value112199
  static final SecurityRoleType value112199 = SecurityRoleType._(
    '112199',
  );

  /// value112200
  static final SecurityRoleType value112200 = SecurityRoleType._(
    '112200',
  );

  /// value112201
  static final SecurityRoleType value112201 = SecurityRoleType._(
    '112201',
  );

  /// value112220
  static final SecurityRoleType value112220 = SecurityRoleType._(
    '112220',
  );

  /// value112222
  static final SecurityRoleType value112222 = SecurityRoleType._(
    '112222',
  );

  /// value112224
  static final SecurityRoleType value112224 = SecurityRoleType._(
    '112224',
  );

  /// value112225
  static final SecurityRoleType value112225 = SecurityRoleType._(
    '112225',
  );

  /// value112226
  static final SecurityRoleType value112226 = SecurityRoleType._(
    '112226',
  );

  /// value112227
  static final SecurityRoleType value112227 = SecurityRoleType._(
    '112227',
  );

  /// value112228
  static final SecurityRoleType value112228 = SecurityRoleType._(
    '112228',
  );

  /// value112229
  static final SecurityRoleType value112229 = SecurityRoleType._(
    '112229',
  );

  /// value112232
  static final SecurityRoleType value112232 = SecurityRoleType._(
    '112232',
  );

  /// value112233
  static final SecurityRoleType value112233 = SecurityRoleType._(
    '112233',
  );

  /// value112238
  static final SecurityRoleType value112238 = SecurityRoleType._(
    '112238',
  );

  /// value112240
  static final SecurityRoleType value112240 = SecurityRoleType._(
    '112240',
  );

  /// value112241
  static final SecurityRoleType value112241 = SecurityRoleType._(
    '112241',
  );

  /// value112242
  static final SecurityRoleType value112242 = SecurityRoleType._(
    '112242',
  );

  /// value112243
  static final SecurityRoleType value112243 = SecurityRoleType._(
    '112243',
  );

  /// value112244
  static final SecurityRoleType value112244 = SecurityRoleType._(
    '112244',
  );

  /// value112248
  static final SecurityRoleType value112248 = SecurityRoleType._(
    '112248',
  );

  /// value112249
  static final SecurityRoleType value112249 = SecurityRoleType._(
    '112249',
  );

  /// value112300
  static final SecurityRoleType value112300 = SecurityRoleType._(
    '112300',
  );

  /// value112301
  static final SecurityRoleType value112301 = SecurityRoleType._(
    '112301',
  );

  /// value112302
  static final SecurityRoleType value112302 = SecurityRoleType._(
    '112302',
  );

  /// value112303
  static final SecurityRoleType value112303 = SecurityRoleType._(
    '112303',
  );

  /// value112304
  static final SecurityRoleType value112304 = SecurityRoleType._(
    '112304',
  );

  /// value112305
  static final SecurityRoleType value112305 = SecurityRoleType._(
    '112305',
  );

  /// value112306
  static final SecurityRoleType value112306 = SecurityRoleType._(
    '112306',
  );

  /// value112307
  static final SecurityRoleType value112307 = SecurityRoleType._(
    '112307',
  );

  /// value112308
  static final SecurityRoleType value112308 = SecurityRoleType._(
    '112308',
  );

  /// value112309
  static final SecurityRoleType value112309 = SecurityRoleType._(
    '112309',
  );

  /// value112310
  static final SecurityRoleType value112310 = SecurityRoleType._(
    '112310',
  );

  /// value112311
  static final SecurityRoleType value112311 = SecurityRoleType._(
    '112311',
  );

  /// value112312
  static final SecurityRoleType value112312 = SecurityRoleType._(
    '112312',
  );

  /// value112313
  static final SecurityRoleType value112313 = SecurityRoleType._(
    '112313',
  );

  /// value112314
  static final SecurityRoleType value112314 = SecurityRoleType._(
    '112314',
  );

  /// value112315
  static final SecurityRoleType value112315 = SecurityRoleType._(
    '112315',
  );

  /// value112316
  static final SecurityRoleType value112316 = SecurityRoleType._(
    '112316',
  );

  /// value112317
  static final SecurityRoleType value112317 = SecurityRoleType._(
    '112317',
  );

  /// value112318
  static final SecurityRoleType value112318 = SecurityRoleType._(
    '112318',
  );

  /// value112319
  static final SecurityRoleType value112319 = SecurityRoleType._(
    '112319',
  );

  /// value112320
  static final SecurityRoleType value112320 = SecurityRoleType._(
    '112320',
  );

  /// value112321
  static final SecurityRoleType value112321 = SecurityRoleType._(
    '112321',
  );

  /// value112325
  static final SecurityRoleType value112325 = SecurityRoleType._(
    '112325',
  );

  /// value112340
  static final SecurityRoleType value112340 = SecurityRoleType._(
    '112340',
  );

  /// value112341
  static final SecurityRoleType value112341 = SecurityRoleType._(
    '112341',
  );

  /// value112342
  static final SecurityRoleType value112342 = SecurityRoleType._(
    '112342',
  );

  /// value112343
  static final SecurityRoleType value112343 = SecurityRoleType._(
    '112343',
  );

  /// value112344
  static final SecurityRoleType value112344 = SecurityRoleType._(
    '112344',
  );

  /// value112345
  static final SecurityRoleType value112345 = SecurityRoleType._(
    '112345',
  );

  /// value112346
  static final SecurityRoleType value112346 = SecurityRoleType._(
    '112346',
  );

  /// value112347
  static final SecurityRoleType value112347 = SecurityRoleType._(
    '112347',
  );

  /// value112348
  static final SecurityRoleType value112348 = SecurityRoleType._(
    '112348',
  );

  /// value112350
  static final SecurityRoleType value112350 = SecurityRoleType._(
    '112350',
  );

  /// value112351
  static final SecurityRoleType value112351 = SecurityRoleType._(
    '112351',
  );

  /// value112352
  static final SecurityRoleType value112352 = SecurityRoleType._(
    '112352',
  );

  /// value112353
  static final SecurityRoleType value112353 = SecurityRoleType._(
    '112353',
  );

  /// value112354
  static final SecurityRoleType value112354 = SecurityRoleType._(
    '112354',
  );

  /// value112355
  static final SecurityRoleType value112355 = SecurityRoleType._(
    '112355',
  );

  /// value112356
  static final SecurityRoleType value112356 = SecurityRoleType._(
    '112356',
  );

  /// value112357
  static final SecurityRoleType value112357 = SecurityRoleType._(
    '112357',
  );

  /// value112358
  static final SecurityRoleType value112358 = SecurityRoleType._(
    '112358',
  );

  /// value112359
  static final SecurityRoleType value112359 = SecurityRoleType._(
    '112359',
  );

  /// value112360
  static final SecurityRoleType value112360 = SecurityRoleType._(
    '112360',
  );

  /// value112361
  static final SecurityRoleType value112361 = SecurityRoleType._(
    '112361',
  );

  /// value112362
  static final SecurityRoleType value112362 = SecurityRoleType._(
    '112362',
  );

  /// value112363
  static final SecurityRoleType value112363 = SecurityRoleType._(
    '112363',
  );

  /// value112364
  static final SecurityRoleType value112364 = SecurityRoleType._(
    '112364',
  );

  /// value112365
  static final SecurityRoleType value112365 = SecurityRoleType._(
    '112365',
  );

  /// value112366
  static final SecurityRoleType value112366 = SecurityRoleType._(
    '112366',
  );

  /// value112367
  static final SecurityRoleType value112367 = SecurityRoleType._(
    '112367',
  );

  /// value112368
  static final SecurityRoleType value112368 = SecurityRoleType._(
    '112368',
  );

  /// value112369
  static final SecurityRoleType value112369 = SecurityRoleType._(
    '112369',
  );

  /// value112370
  static final SecurityRoleType value112370 = SecurityRoleType._(
    '112370',
  );

  /// value112371
  static final SecurityRoleType value112371 = SecurityRoleType._(
    '112371',
  );

  /// value112372
  static final SecurityRoleType value112372 = SecurityRoleType._(
    '112372',
  );

  /// value112373
  static final SecurityRoleType value112373 = SecurityRoleType._(
    '112373',
  );

  /// value112374
  static final SecurityRoleType value112374 = SecurityRoleType._(
    '112374',
  );

  /// value112375
  static final SecurityRoleType value112375 = SecurityRoleType._(
    '112375',
  );

  /// value112376
  static final SecurityRoleType value112376 = SecurityRoleType._(
    '112376',
  );

  /// value112377
  static final SecurityRoleType value112377 = SecurityRoleType._(
    '112377',
  );

  /// value112378
  static final SecurityRoleType value112378 = SecurityRoleType._(
    '112378',
  );

  /// value112379
  static final SecurityRoleType value112379 = SecurityRoleType._(
    '112379',
  );

  /// value112380
  static final SecurityRoleType value112380 = SecurityRoleType._(
    '112380',
  );

  /// value112381
  static final SecurityRoleType value112381 = SecurityRoleType._(
    '112381',
  );

  /// value112700
  static final SecurityRoleType value112700 = SecurityRoleType._(
    '112700',
  );

  /// value112701
  static final SecurityRoleType value112701 = SecurityRoleType._(
    '112701',
  );

  /// value112702
  static final SecurityRoleType value112702 = SecurityRoleType._(
    '112702',
  );

  /// value112703
  static final SecurityRoleType value112703 = SecurityRoleType._(
    '112703',
  );

  /// value112704
  static final SecurityRoleType value112704 = SecurityRoleType._(
    '112704',
  );

  /// value112705
  static final SecurityRoleType value112705 = SecurityRoleType._(
    '112705',
  );

  /// value112706
  static final SecurityRoleType value112706 = SecurityRoleType._(
    '112706',
  );

  /// value112707
  static final SecurityRoleType value112707 = SecurityRoleType._(
    '112707',
  );

  /// value112708
  static final SecurityRoleType value112708 = SecurityRoleType._(
    '112708',
  );

  /// value112709
  static final SecurityRoleType value112709 = SecurityRoleType._(
    '112709',
  );

  /// value112710
  static final SecurityRoleType value112710 = SecurityRoleType._(
    '112710',
  );

  /// value112711
  static final SecurityRoleType value112711 = SecurityRoleType._(
    '112711',
  );

  /// value112712
  static final SecurityRoleType value112712 = SecurityRoleType._(
    '112712',
  );

  /// value112713
  static final SecurityRoleType value112713 = SecurityRoleType._(
    '112713',
  );

  /// value112714
  static final SecurityRoleType value112714 = SecurityRoleType._(
    '112714',
  );

  /// value112715
  static final SecurityRoleType value112715 = SecurityRoleType._(
    '112715',
  );

  /// value112716
  static final SecurityRoleType value112716 = SecurityRoleType._(
    '112716',
  );

  /// value112717
  static final SecurityRoleType value112717 = SecurityRoleType._(
    '112717',
  );

  /// value112718
  static final SecurityRoleType value112718 = SecurityRoleType._(
    '112718',
  );

  /// value112719
  static final SecurityRoleType value112719 = SecurityRoleType._(
    '112719',
  );

  /// value112720
  static final SecurityRoleType value112720 = SecurityRoleType._(
    '112720',
  );

  /// value112721
  static final SecurityRoleType value112721 = SecurityRoleType._(
    '112721',
  );

  /// value113000
  static final SecurityRoleType value113000 = SecurityRoleType._(
    '113000',
  );

  /// value113001
  static final SecurityRoleType value113001 = SecurityRoleType._(
    '113001',
  );

  /// value113002
  static final SecurityRoleType value113002 = SecurityRoleType._(
    '113002',
  );

  /// value113003
  static final SecurityRoleType value113003 = SecurityRoleType._(
    '113003',
  );

  /// value113004
  static final SecurityRoleType value113004 = SecurityRoleType._(
    '113004',
  );

  /// value113005
  static final SecurityRoleType value113005 = SecurityRoleType._(
    '113005',
  );

  /// value113006
  static final SecurityRoleType value113006 = SecurityRoleType._(
    '113006',
  );

  /// value113007
  static final SecurityRoleType value113007 = SecurityRoleType._(
    '113007',
  );

  /// value113008
  static final SecurityRoleType value113008 = SecurityRoleType._(
    '113008',
  );

  /// value113009
  static final SecurityRoleType value113009 = SecurityRoleType._(
    '113009',
  );

  /// value113010
  static final SecurityRoleType value113010 = SecurityRoleType._(
    '113010',
  );

  /// value113011
  static final SecurityRoleType value113011 = SecurityRoleType._(
    '113011',
  );

  /// value113012
  static final SecurityRoleType value113012 = SecurityRoleType._(
    '113012',
  );

  /// value113013
  static final SecurityRoleType value113013 = SecurityRoleType._(
    '113013',
  );

  /// value113014
  static final SecurityRoleType value113014 = SecurityRoleType._(
    '113014',
  );

  /// value113015
  static final SecurityRoleType value113015 = SecurityRoleType._(
    '113015',
  );

  /// value113016
  static final SecurityRoleType value113016 = SecurityRoleType._(
    '113016',
  );

  /// value113017
  static final SecurityRoleType value113017 = SecurityRoleType._(
    '113017',
  );

  /// value113018
  static final SecurityRoleType value113018 = SecurityRoleType._(
    '113018',
  );

  /// value113020
  static final SecurityRoleType value113020 = SecurityRoleType._(
    '113020',
  );

  /// value113021
  static final SecurityRoleType value113021 = SecurityRoleType._(
    '113021',
  );

  /// value113026
  static final SecurityRoleType value113026 = SecurityRoleType._(
    '113026',
  );

  /// value113030
  static final SecurityRoleType value113030 = SecurityRoleType._(
    '113030',
  );

  /// value113031
  static final SecurityRoleType value113031 = SecurityRoleType._(
    '113031',
  );

  /// value113032
  static final SecurityRoleType value113032 = SecurityRoleType._(
    '113032',
  );

  /// value113033
  static final SecurityRoleType value113033 = SecurityRoleType._(
    '113033',
  );

  /// value113034
  static final SecurityRoleType value113034 = SecurityRoleType._(
    '113034',
  );

  /// value113035
  static final SecurityRoleType value113035 = SecurityRoleType._(
    '113035',
  );

  /// value113036
  static final SecurityRoleType value113036 = SecurityRoleType._(
    '113036',
  );

  /// value113037
  static final SecurityRoleType value113037 = SecurityRoleType._(
    '113037',
  );

  /// value113038
  static final SecurityRoleType value113038 = SecurityRoleType._(
    '113038',
  );

  /// value113039
  static final SecurityRoleType value113039 = SecurityRoleType._(
    '113039',
  );

  /// value113040
  static final SecurityRoleType value113040 = SecurityRoleType._(
    '113040',
  );

  /// value113041
  static final SecurityRoleType value113041 = SecurityRoleType._(
    '113041',
  );

  /// value113042
  static final SecurityRoleType value113042 = SecurityRoleType._(
    '113042',
  );

  /// value113043
  static final SecurityRoleType value113043 = SecurityRoleType._(
    '113043',
  );

  /// value113044
  static final SecurityRoleType value113044 = SecurityRoleType._(
    '113044',
  );

  /// value113045
  static final SecurityRoleType value113045 = SecurityRoleType._(
    '113045',
  );

  /// value113046
  static final SecurityRoleType value113046 = SecurityRoleType._(
    '113046',
  );

  /// value113047
  static final SecurityRoleType value113047 = SecurityRoleType._(
    '113047',
  );

  /// value113048
  static final SecurityRoleType value113048 = SecurityRoleType._(
    '113048',
  );

  /// value113049
  static final SecurityRoleType value113049 = SecurityRoleType._(
    '113049',
  );

  /// value113050
  static final SecurityRoleType value113050 = SecurityRoleType._(
    '113050',
  );

  /// value113051
  static final SecurityRoleType value113051 = SecurityRoleType._(
    '113051',
  );

  /// value113052
  static final SecurityRoleType value113052 = SecurityRoleType._(
    '113052',
  );

  /// value113053
  static final SecurityRoleType value113053 = SecurityRoleType._(
    '113053',
  );

  /// value113054
  static final SecurityRoleType value113054 = SecurityRoleType._(
    '113054',
  );

  /// value113055
  static final SecurityRoleType value113055 = SecurityRoleType._(
    '113055',
  );

  /// value113056
  static final SecurityRoleType value113056 = SecurityRoleType._(
    '113056',
  );

  /// value113057
  static final SecurityRoleType value113057 = SecurityRoleType._(
    '113057',
  );

  /// value113058
  static final SecurityRoleType value113058 = SecurityRoleType._(
    '113058',
  );

  /// value113059
  static final SecurityRoleType value113059 = SecurityRoleType._(
    '113059',
  );

  /// value113060
  static final SecurityRoleType value113060 = SecurityRoleType._(
    '113060',
  );

  /// value113061
  static final SecurityRoleType value113061 = SecurityRoleType._(
    '113061',
  );

  /// value113062
  static final SecurityRoleType value113062 = SecurityRoleType._(
    '113062',
  );

  /// value113063
  static final SecurityRoleType value113063 = SecurityRoleType._(
    '113063',
  );

  /// value113064
  static final SecurityRoleType value113064 = SecurityRoleType._(
    '113064',
  );

  /// value113065
  static final SecurityRoleType value113065 = SecurityRoleType._(
    '113065',
  );

  /// value113066
  static final SecurityRoleType value113066 = SecurityRoleType._(
    '113066',
  );

  /// value113067
  static final SecurityRoleType value113067 = SecurityRoleType._(
    '113067',
  );

  /// value113068
  static final SecurityRoleType value113068 = SecurityRoleType._(
    '113068',
  );

  /// value113069
  static final SecurityRoleType value113069 = SecurityRoleType._(
    '113069',
  );

  /// value113070
  static final SecurityRoleType value113070 = SecurityRoleType._(
    '113070',
  );

  /// value113071
  static final SecurityRoleType value113071 = SecurityRoleType._(
    '113071',
  );

  /// value113072
  static final SecurityRoleType value113072 = SecurityRoleType._(
    '113072',
  );

  /// value113073
  static final SecurityRoleType value113073 = SecurityRoleType._(
    '113073',
  );

  /// value113074
  static final SecurityRoleType value113074 = SecurityRoleType._(
    '113074',
  );

  /// value113075
  static final SecurityRoleType value113075 = SecurityRoleType._(
    '113075',
  );

  /// value113076
  static final SecurityRoleType value113076 = SecurityRoleType._(
    '113076',
  );

  /// value113077
  static final SecurityRoleType value113077 = SecurityRoleType._(
    '113077',
  );

  /// value113078
  static final SecurityRoleType value113078 = SecurityRoleType._(
    '113078',
  );

  /// value113079
  static final SecurityRoleType value113079 = SecurityRoleType._(
    '113079',
  );

  /// value113080
  static final SecurityRoleType value113080 = SecurityRoleType._(
    '113080',
  );

  /// value113081
  static final SecurityRoleType value113081 = SecurityRoleType._(
    '113081',
  );

  /// value113082
  static final SecurityRoleType value113082 = SecurityRoleType._(
    '113082',
  );

  /// value113083
  static final SecurityRoleType value113083 = SecurityRoleType._(
    '113083',
  );

  /// value113085
  static final SecurityRoleType value113085 = SecurityRoleType._(
    '113085',
  );

  /// value113086
  static final SecurityRoleType value113086 = SecurityRoleType._(
    '113086',
  );

  /// value113087
  static final SecurityRoleType value113087 = SecurityRoleType._(
    '113087',
  );

  /// value113088
  static final SecurityRoleType value113088 = SecurityRoleType._(
    '113088',
  );

  /// value113089
  static final SecurityRoleType value113089 = SecurityRoleType._(
    '113089',
  );

  /// value113090
  static final SecurityRoleType value113090 = SecurityRoleType._(
    '113090',
  );

  /// value113091
  static final SecurityRoleType value113091 = SecurityRoleType._(
    '113091',
  );

  /// value113092
  static final SecurityRoleType value113092 = SecurityRoleType._(
    '113092',
  );

  /// value113093
  static final SecurityRoleType value113093 = SecurityRoleType._(
    '113093',
  );

  /// value113094
  static final SecurityRoleType value113094 = SecurityRoleType._(
    '113094',
  );

  /// value113095
  static final SecurityRoleType value113095 = SecurityRoleType._(
    '113095',
  );

  /// value113096
  static final SecurityRoleType value113096 = SecurityRoleType._(
    '113096',
  );

  /// value113097
  static final SecurityRoleType value113097 = SecurityRoleType._(
    '113097',
  );

  /// value113100
  static final SecurityRoleType value113100 = SecurityRoleType._(
    '113100',
  );

  /// value113101
  static final SecurityRoleType value113101 = SecurityRoleType._(
    '113101',
  );

  /// value113102
  static final SecurityRoleType value113102 = SecurityRoleType._(
    '113102',
  );

  /// value113103
  static final SecurityRoleType value113103 = SecurityRoleType._(
    '113103',
  );

  /// value113104
  static final SecurityRoleType value113104 = SecurityRoleType._(
    '113104',
  );

  /// value113105
  static final SecurityRoleType value113105 = SecurityRoleType._(
    '113105',
  );

  /// value113106
  static final SecurityRoleType value113106 = SecurityRoleType._(
    '113106',
  );

  /// value113107
  static final SecurityRoleType value113107 = SecurityRoleType._(
    '113107',
  );

  /// value113108
  static final SecurityRoleType value113108 = SecurityRoleType._(
    '113108',
  );

  /// value113109
  static final SecurityRoleType value113109 = SecurityRoleType._(
    '113109',
  );

  /// value113110
  static final SecurityRoleType value113110 = SecurityRoleType._(
    '113110',
  );

  /// value113111
  static final SecurityRoleType value113111 = SecurityRoleType._(
    '113111',
  );

  /// value113500
  static final SecurityRoleType value113500 = SecurityRoleType._(
    '113500',
  );

  /// value113502
  static final SecurityRoleType value113502 = SecurityRoleType._(
    '113502',
  );

  /// value113503
  static final SecurityRoleType value113503 = SecurityRoleType._(
    '113503',
  );

  /// value113505
  static final SecurityRoleType value113505 = SecurityRoleType._(
    '113505',
  );

  /// value113506
  static final SecurityRoleType value113506 = SecurityRoleType._(
    '113506',
  );

  /// value113507
  static final SecurityRoleType value113507 = SecurityRoleType._(
    '113507',
  );

  /// value113508
  static final SecurityRoleType value113508 = SecurityRoleType._(
    '113508',
  );

  /// value113509
  static final SecurityRoleType value113509 = SecurityRoleType._(
    '113509',
  );

  /// value113510
  static final SecurityRoleType value113510 = SecurityRoleType._(
    '113510',
  );

  /// value113511
  static final SecurityRoleType value113511 = SecurityRoleType._(
    '113511',
  );

  /// value113512
  static final SecurityRoleType value113512 = SecurityRoleType._(
    '113512',
  );

  /// value113513
  static final SecurityRoleType value113513 = SecurityRoleType._(
    '113513',
  );

  /// value113514
  static final SecurityRoleType value113514 = SecurityRoleType._(
    '113514',
  );

  /// value113516
  static final SecurityRoleType value113516 = SecurityRoleType._(
    '113516',
  );

  /// value113517
  static final SecurityRoleType value113517 = SecurityRoleType._(
    '113517',
  );

  /// value113518
  static final SecurityRoleType value113518 = SecurityRoleType._(
    '113518',
  );

  /// value113520
  static final SecurityRoleType value113520 = SecurityRoleType._(
    '113520',
  );

  /// value113521
  static final SecurityRoleType value113521 = SecurityRoleType._(
    '113521',
  );

  /// value113522
  static final SecurityRoleType value113522 = SecurityRoleType._(
    '113522',
  );

  /// value113523
  static final SecurityRoleType value113523 = SecurityRoleType._(
    '113523',
  );

  /// value113526
  static final SecurityRoleType value113526 = SecurityRoleType._(
    '113526',
  );

  /// value113527
  static final SecurityRoleType value113527 = SecurityRoleType._(
    '113527',
  );

  /// value113528
  static final SecurityRoleType value113528 = SecurityRoleType._(
    '113528',
  );

  /// value113529
  static final SecurityRoleType value113529 = SecurityRoleType._(
    '113529',
  );

  /// value113530
  static final SecurityRoleType value113530 = SecurityRoleType._(
    '113530',
  );

  /// value113540
  static final SecurityRoleType value113540 = SecurityRoleType._(
    '113540',
  );

  /// value113541
  static final SecurityRoleType value113541 = SecurityRoleType._(
    '113541',
  );

  /// value113542
  static final SecurityRoleType value113542 = SecurityRoleType._(
    '113542',
  );

  /// value113543
  static final SecurityRoleType value113543 = SecurityRoleType._(
    '113543',
  );

  /// value113550
  static final SecurityRoleType value113550 = SecurityRoleType._(
    '113550',
  );

  /// value113551
  static final SecurityRoleType value113551 = SecurityRoleType._(
    '113551',
  );

  /// value113552
  static final SecurityRoleType value113552 = SecurityRoleType._(
    '113552',
  );

  /// value113560
  static final SecurityRoleType value113560 = SecurityRoleType._(
    '113560',
  );

  /// value113561
  static final SecurityRoleType value113561 = SecurityRoleType._(
    '113561',
  );

  /// value113562
  static final SecurityRoleType value113562 = SecurityRoleType._(
    '113562',
  );

  /// value113563
  static final SecurityRoleType value113563 = SecurityRoleType._(
    '113563',
  );

  /// value113568
  static final SecurityRoleType value113568 = SecurityRoleType._(
    '113568',
  );

  /// value113570
  static final SecurityRoleType value113570 = SecurityRoleType._(
    '113570',
  );

  /// value113571
  static final SecurityRoleType value113571 = SecurityRoleType._(
    '113571',
  );

  /// value113572
  static final SecurityRoleType value113572 = SecurityRoleType._(
    '113572',
  );

  /// value113573
  static final SecurityRoleType value113573 = SecurityRoleType._(
    '113573',
  );

  /// value113574
  static final SecurityRoleType value113574 = SecurityRoleType._(
    '113574',
  );

  /// value113575
  static final SecurityRoleType value113575 = SecurityRoleType._(
    '113575',
  );

  /// value113576
  static final SecurityRoleType value113576 = SecurityRoleType._(
    '113576',
  );

  /// value113577
  static final SecurityRoleType value113577 = SecurityRoleType._(
    '113577',
  );

  /// value113601
  static final SecurityRoleType value113601 = SecurityRoleType._(
    '113601',
  );

  /// value113602
  static final SecurityRoleType value113602 = SecurityRoleType._(
    '113602',
  );

  /// value113603
  static final SecurityRoleType value113603 = SecurityRoleType._(
    '113603',
  );

  /// value113605
  static final SecurityRoleType value113605 = SecurityRoleType._(
    '113605',
  );

  /// value113606
  static final SecurityRoleType value113606 = SecurityRoleType._(
    '113606',
  );

  /// value113607
  static final SecurityRoleType value113607 = SecurityRoleType._(
    '113607',
  );

  /// value113608
  static final SecurityRoleType value113608 = SecurityRoleType._(
    '113608',
  );

  /// value113609
  static final SecurityRoleType value113609 = SecurityRoleType._(
    '113609',
  );

  /// value113611
  static final SecurityRoleType value113611 = SecurityRoleType._(
    '113611',
  );

  /// value113612
  static final SecurityRoleType value113612 = SecurityRoleType._(
    '113612',
  );

  /// value113613
  static final SecurityRoleType value113613 = SecurityRoleType._(
    '113613',
  );

  /// value113620
  static final SecurityRoleType value113620 = SecurityRoleType._(
    '113620',
  );

  /// value113621
  static final SecurityRoleType value113621 = SecurityRoleType._(
    '113621',
  );

  /// value113622
  static final SecurityRoleType value113622 = SecurityRoleType._(
    '113622',
  );

  /// value113630
  static final SecurityRoleType value113630 = SecurityRoleType._(
    '113630',
  );

  /// value113631
  static final SecurityRoleType value113631 = SecurityRoleType._(
    '113631',
  );

  /// value113650
  static final SecurityRoleType value113650 = SecurityRoleType._(
    '113650',
  );

  /// value113651
  static final SecurityRoleType value113651 = SecurityRoleType._(
    '113651',
  );

  /// value113652
  static final SecurityRoleType value113652 = SecurityRoleType._(
    '113652',
  );

  /// value113653
  static final SecurityRoleType value113653 = SecurityRoleType._(
    '113653',
  );

  /// value113661
  static final SecurityRoleType value113661 = SecurityRoleType._(
    '113661',
  );

  /// value113662
  static final SecurityRoleType value113662 = SecurityRoleType._(
    '113662',
  );

  /// value113663
  static final SecurityRoleType value113663 = SecurityRoleType._(
    '113663',
  );

  /// value113664
  static final SecurityRoleType value113664 = SecurityRoleType._(
    '113664',
  );

  /// value113665
  static final SecurityRoleType value113665 = SecurityRoleType._(
    '113665',
  );

  /// value113666
  static final SecurityRoleType value113666 = SecurityRoleType._(
    '113666',
  );

  /// value113669
  static final SecurityRoleType value113669 = SecurityRoleType._(
    '113669',
  );

  /// value113670
  static final SecurityRoleType value113670 = SecurityRoleType._(
    '113670',
  );

  /// value113671
  static final SecurityRoleType value113671 = SecurityRoleType._(
    '113671',
  );

  /// value113680
  static final SecurityRoleType value113680 = SecurityRoleType._(
    '113680',
  );

  /// value113681
  static final SecurityRoleType value113681 = SecurityRoleType._(
    '113681',
  );

  /// value113682
  static final SecurityRoleType value113682 = SecurityRoleType._(
    '113682',
  );

  /// value113683
  static final SecurityRoleType value113683 = SecurityRoleType._(
    '113683',
  );

  /// value113684
  static final SecurityRoleType value113684 = SecurityRoleType._(
    '113684',
  );

  /// value113685
  static final SecurityRoleType value113685 = SecurityRoleType._(
    '113685',
  );

  /// value113686
  static final SecurityRoleType value113686 = SecurityRoleType._(
    '113686',
  );

  /// value113687
  static final SecurityRoleType value113687 = SecurityRoleType._(
    '113687',
  );

  /// value113688
  static final SecurityRoleType value113688 = SecurityRoleType._(
    '113688',
  );

  /// value113689
  static final SecurityRoleType value113689 = SecurityRoleType._(
    '113689',
  );

  /// value113690
  static final SecurityRoleType value113690 = SecurityRoleType._(
    '113690',
  );

  /// value113691
  static final SecurityRoleType value113691 = SecurityRoleType._(
    '113691',
  );

  /// value113692
  static final SecurityRoleType value113692 = SecurityRoleType._(
    '113692',
  );

  /// value113701
  static final SecurityRoleType value113701 = SecurityRoleType._(
    '113701',
  );

  /// value113702
  static final SecurityRoleType value113702 = SecurityRoleType._(
    '113702',
  );

  /// value113704
  static final SecurityRoleType value113704 = SecurityRoleType._(
    '113704',
  );

  /// value113705
  static final SecurityRoleType value113705 = SecurityRoleType._(
    '113705',
  );

  /// value113706
  static final SecurityRoleType value113706 = SecurityRoleType._(
    '113706',
  );

  /// value113710
  static final SecurityRoleType value113710 = SecurityRoleType._(
    '113710',
  );

  /// value113711
  static final SecurityRoleType value113711 = SecurityRoleType._(
    '113711',
  );

  /// value113720
  static final SecurityRoleType value113720 = SecurityRoleType._(
    '113720',
  );

  /// value113721
  static final SecurityRoleType value113721 = SecurityRoleType._(
    '113721',
  );

  /// value113722
  static final SecurityRoleType value113722 = SecurityRoleType._(
    '113722',
  );

  /// value113723
  static final SecurityRoleType value113723 = SecurityRoleType._(
    '113723',
  );

  /// value113724
  static final SecurityRoleType value113724 = SecurityRoleType._(
    '113724',
  );

  /// value113725
  static final SecurityRoleType value113725 = SecurityRoleType._(
    '113725',
  );

  /// value113726
  static final SecurityRoleType value113726 = SecurityRoleType._(
    '113726',
  );

  /// value113727
  static final SecurityRoleType value113727 = SecurityRoleType._(
    '113727',
  );

  /// value113728
  static final SecurityRoleType value113728 = SecurityRoleType._(
    '113728',
  );

  /// value113729
  static final SecurityRoleType value113729 = SecurityRoleType._(
    '113729',
  );

  /// value113730
  static final SecurityRoleType value113730 = SecurityRoleType._(
    '113730',
  );

  /// value113731
  static final SecurityRoleType value113731 = SecurityRoleType._(
    '113731',
  );

  /// value113732
  static final SecurityRoleType value113732 = SecurityRoleType._(
    '113732',
  );

  /// value113733
  static final SecurityRoleType value113733 = SecurityRoleType._(
    '113733',
  );

  /// value113734
  static final SecurityRoleType value113734 = SecurityRoleType._(
    '113734',
  );

  /// value113735
  static final SecurityRoleType value113735 = SecurityRoleType._(
    '113735',
  );

  /// value113736
  static final SecurityRoleType value113736 = SecurityRoleType._(
    '113736',
  );

  /// value113737
  static final SecurityRoleType value113737 = SecurityRoleType._(
    '113737',
  );

  /// value113738
  static final SecurityRoleType value113738 = SecurityRoleType._(
    '113738',
  );

  /// value113739
  static final SecurityRoleType value113739 = SecurityRoleType._(
    '113739',
  );

  /// value113740
  static final SecurityRoleType value113740 = SecurityRoleType._(
    '113740',
  );

  /// value113742
  static final SecurityRoleType value113742 = SecurityRoleType._(
    '113742',
  );

  /// value113743
  static final SecurityRoleType value113743 = SecurityRoleType._(
    '113743',
  );

  /// value113744
  static final SecurityRoleType value113744 = SecurityRoleType._(
    '113744',
  );

  /// value113745
  static final SecurityRoleType value113745 = SecurityRoleType._(
    '113745',
  );

  /// value113748
  static final SecurityRoleType value113748 = SecurityRoleType._(
    '113748',
  );

  /// value113750
  static final SecurityRoleType value113750 = SecurityRoleType._(
    '113750',
  );

  /// value113751
  static final SecurityRoleType value113751 = SecurityRoleType._(
    '113751',
  );

  /// value113752
  static final SecurityRoleType value113752 = SecurityRoleType._(
    '113752',
  );

  /// value113753
  static final SecurityRoleType value113753 = SecurityRoleType._(
    '113753',
  );

  /// value113754
  static final SecurityRoleType value113754 = SecurityRoleType._(
    '113754',
  );

  /// value113755
  static final SecurityRoleType value113755 = SecurityRoleType._(
    '113755',
  );

  /// value113756
  static final SecurityRoleType value113756 = SecurityRoleType._(
    '113756',
  );

  /// value113757
  static final SecurityRoleType value113757 = SecurityRoleType._(
    '113757',
  );

  /// value113758
  static final SecurityRoleType value113758 = SecurityRoleType._(
    '113758',
  );

  /// value113759
  static final SecurityRoleType value113759 = SecurityRoleType._(
    '113759',
  );

  /// value113760
  static final SecurityRoleType value113760 = SecurityRoleType._(
    '113760',
  );

  /// value113761
  static final SecurityRoleType value113761 = SecurityRoleType._(
    '113761',
  );

  /// value113763
  static final SecurityRoleType value113763 = SecurityRoleType._(
    '113763',
  );

  /// value113764
  static final SecurityRoleType value113764 = SecurityRoleType._(
    '113764',
  );

  /// value113766
  static final SecurityRoleType value113766 = SecurityRoleType._(
    '113766',
  );

  /// value113767
  static final SecurityRoleType value113767 = SecurityRoleType._(
    '113767',
  );

  /// value113768
  static final SecurityRoleType value113768 = SecurityRoleType._(
    '113768',
  );

  /// value113769
  static final SecurityRoleType value113769 = SecurityRoleType._(
    '113769',
  );

  /// value113770
  static final SecurityRoleType value113770 = SecurityRoleType._(
    '113770',
  );

  /// value113771
  static final SecurityRoleType value113771 = SecurityRoleType._(
    '113771',
  );

  /// value113772
  static final SecurityRoleType value113772 = SecurityRoleType._(
    '113772',
  );

  /// value113773
  static final SecurityRoleType value113773 = SecurityRoleType._(
    '113773',
  );

  /// value113780
  static final SecurityRoleType value113780 = SecurityRoleType._(
    '113780',
  );

  /// value113788
  static final SecurityRoleType value113788 = SecurityRoleType._(
    '113788',
  );

  /// value113789
  static final SecurityRoleType value113789 = SecurityRoleType._(
    '113789',
  );

  /// value113790
  static final SecurityRoleType value113790 = SecurityRoleType._(
    '113790',
  );

  /// value113791
  static final SecurityRoleType value113791 = SecurityRoleType._(
    '113791',
  );

  /// value113792
  static final SecurityRoleType value113792 = SecurityRoleType._(
    '113792',
  );

  /// value113793
  static final SecurityRoleType value113793 = SecurityRoleType._(
    '113793',
  );

  /// value113794
  static final SecurityRoleType value113794 = SecurityRoleType._(
    '113794',
  );

  /// value113795
  static final SecurityRoleType value113795 = SecurityRoleType._(
    '113795',
  );

  /// value113800
  static final SecurityRoleType value113800 = SecurityRoleType._(
    '113800',
  );

  /// value113801
  static final SecurityRoleType value113801 = SecurityRoleType._(
    '113801',
  );

  /// value113802
  static final SecurityRoleType value113802 = SecurityRoleType._(
    '113802',
  );

  /// value113803
  static final SecurityRoleType value113803 = SecurityRoleType._(
    '113803',
  );

  /// value113804
  static final SecurityRoleType value113804 = SecurityRoleType._(
    '113804',
  );

  /// value113805
  static final SecurityRoleType value113805 = SecurityRoleType._(
    '113805',
  );

  /// value113806
  static final SecurityRoleType value113806 = SecurityRoleType._(
    '113806',
  );

  /// value113807
  static final SecurityRoleType value113807 = SecurityRoleType._(
    '113807',
  );

  /// value113808
  static final SecurityRoleType value113808 = SecurityRoleType._(
    '113808',
  );

  /// value113809
  static final SecurityRoleType value113809 = SecurityRoleType._(
    '113809',
  );

  /// value113810
  static final SecurityRoleType value113810 = SecurityRoleType._(
    '113810',
  );

  /// value113811
  static final SecurityRoleType value113811 = SecurityRoleType._(
    '113811',
  );

  /// value113812
  static final SecurityRoleType value113812 = SecurityRoleType._(
    '113812',
  );

  /// value113813
  static final SecurityRoleType value113813 = SecurityRoleType._(
    '113813',
  );

  /// value113814
  static final SecurityRoleType value113814 = SecurityRoleType._(
    '113814',
  );

  /// value113815
  static final SecurityRoleType value113815 = SecurityRoleType._(
    '113815',
  );

  /// value113816
  static final SecurityRoleType value113816 = SecurityRoleType._(
    '113816',
  );

  /// value113817
  static final SecurityRoleType value113817 = SecurityRoleType._(
    '113817',
  );

  /// value113818
  static final SecurityRoleType value113818 = SecurityRoleType._(
    '113818',
  );

  /// value113819
  static final SecurityRoleType value113819 = SecurityRoleType._(
    '113819',
  );

  /// value113820
  static final SecurityRoleType value113820 = SecurityRoleType._(
    '113820',
  );

  /// value113821
  static final SecurityRoleType value113821 = SecurityRoleType._(
    '113821',
  );

  /// value113822
  static final SecurityRoleType value113822 = SecurityRoleType._(
    '113822',
  );

  /// value113823
  static final SecurityRoleType value113823 = SecurityRoleType._(
    '113823',
  );

  /// value113824
  static final SecurityRoleType value113824 = SecurityRoleType._(
    '113824',
  );

  /// value113825
  static final SecurityRoleType value113825 = SecurityRoleType._(
    '113825',
  );

  /// value113826
  static final SecurityRoleType value113826 = SecurityRoleType._(
    '113826',
  );

  /// value113827
  static final SecurityRoleType value113827 = SecurityRoleType._(
    '113827',
  );

  /// value113828
  static final SecurityRoleType value113828 = SecurityRoleType._(
    '113828',
  );

  /// value113829
  static final SecurityRoleType value113829 = SecurityRoleType._(
    '113829',
  );

  /// value113830
  static final SecurityRoleType value113830 = SecurityRoleType._(
    '113830',
  );

  /// value113831
  static final SecurityRoleType value113831 = SecurityRoleType._(
    '113831',
  );

  /// value113832
  static final SecurityRoleType value113832 = SecurityRoleType._(
    '113832',
  );

  /// value113833
  static final SecurityRoleType value113833 = SecurityRoleType._(
    '113833',
  );

  /// value113834
  static final SecurityRoleType value113834 = SecurityRoleType._(
    '113834',
  );

  /// value113835
  static final SecurityRoleType value113835 = SecurityRoleType._(
    '113835',
  );

  /// value113836
  static final SecurityRoleType value113836 = SecurityRoleType._(
    '113836',
  );

  /// value113837
  static final SecurityRoleType value113837 = SecurityRoleType._(
    '113837',
  );

  /// value113838
  static final SecurityRoleType value113838 = SecurityRoleType._(
    '113838',
  );

  /// value113839
  static final SecurityRoleType value113839 = SecurityRoleType._(
    '113839',
  );

  /// value113840
  static final SecurityRoleType value113840 = SecurityRoleType._(
    '113840',
  );

  /// value113841
  static final SecurityRoleType value113841 = SecurityRoleType._(
    '113841',
  );

  /// value113842
  static final SecurityRoleType value113842 = SecurityRoleType._(
    '113842',
  );

  /// value113845
  static final SecurityRoleType value113845 = SecurityRoleType._(
    '113845',
  );

  /// value113846
  static final SecurityRoleType value113846 = SecurityRoleType._(
    '113846',
  );

  /// value113847
  static final SecurityRoleType value113847 = SecurityRoleType._(
    '113847',
  );

  /// value113850
  static final SecurityRoleType value113850 = SecurityRoleType._(
    '113850',
  );

  /// value113851
  static final SecurityRoleType value113851 = SecurityRoleType._(
    '113851',
  );

  /// value113852
  static final SecurityRoleType value113852 = SecurityRoleType._(
    '113852',
  );

  /// value113853
  static final SecurityRoleType value113853 = SecurityRoleType._(
    '113853',
  );

  /// value113854
  static final SecurityRoleType value113854 = SecurityRoleType._(
    '113854',
  );

  /// value113855
  static final SecurityRoleType value113855 = SecurityRoleType._(
    '113855',
  );

  /// value113856
  static final SecurityRoleType value113856 = SecurityRoleType._(
    '113856',
  );

  /// value113857
  static final SecurityRoleType value113857 = SecurityRoleType._(
    '113857',
  );

  /// value113858
  static final SecurityRoleType value113858 = SecurityRoleType._(
    '113858',
  );

  /// value113859
  static final SecurityRoleType value113859 = SecurityRoleType._(
    '113859',
  );

  /// value113860
  static final SecurityRoleType value113860 = SecurityRoleType._(
    '113860',
  );

  /// value113861
  static final SecurityRoleType value113861 = SecurityRoleType._(
    '113861',
  );

  /// value113862
  static final SecurityRoleType value113862 = SecurityRoleType._(
    '113862',
  );

  /// value113863
  static final SecurityRoleType value113863 = SecurityRoleType._(
    '113863',
  );

  /// value113864
  static final SecurityRoleType value113864 = SecurityRoleType._(
    '113864',
  );

  /// value113865
  static final SecurityRoleType value113865 = SecurityRoleType._(
    '113865',
  );

  /// value113866
  static final SecurityRoleType value113866 = SecurityRoleType._(
    '113866',
  );

  /// value113867
  static final SecurityRoleType value113867 = SecurityRoleType._(
    '113867',
  );

  /// value113868
  static final SecurityRoleType value113868 = SecurityRoleType._(
    '113868',
  );

  /// value113870
  static final SecurityRoleType value113870 = SecurityRoleType._(
    '113870',
  );

  /// value113871
  static final SecurityRoleType value113871 = SecurityRoleType._(
    '113871',
  );

  /// value113872
  static final SecurityRoleType value113872 = SecurityRoleType._(
    '113872',
  );

  /// value113873
  static final SecurityRoleType value113873 = SecurityRoleType._(
    '113873',
  );

  /// value113874
  static final SecurityRoleType value113874 = SecurityRoleType._(
    '113874',
  );

  /// value113875
  static final SecurityRoleType value113875 = SecurityRoleType._(
    '113875',
  );

  /// value113876
  static final SecurityRoleType value113876 = SecurityRoleType._(
    '113876',
  );

  /// value113877
  static final SecurityRoleType value113877 = SecurityRoleType._(
    '113877',
  );

  /// value113878
  static final SecurityRoleType value113878 = SecurityRoleType._(
    '113878',
  );

  /// value113879
  static final SecurityRoleType value113879 = SecurityRoleType._(
    '113879',
  );

  /// value113880
  static final SecurityRoleType value113880 = SecurityRoleType._(
    '113880',
  );

  /// value113890
  static final SecurityRoleType value113890 = SecurityRoleType._(
    '113890',
  );

  /// value113893
  static final SecurityRoleType value113893 = SecurityRoleType._(
    '113893',
  );

  /// value113895
  static final SecurityRoleType value113895 = SecurityRoleType._(
    '113895',
  );

  /// value113896
  static final SecurityRoleType value113896 = SecurityRoleType._(
    '113896',
  );

  /// value113897
  static final SecurityRoleType value113897 = SecurityRoleType._(
    '113897',
  );

  /// value113898
  static final SecurityRoleType value113898 = SecurityRoleType._(
    '113898',
  );

  /// value113899
  static final SecurityRoleType value113899 = SecurityRoleType._(
    '113899',
  );

  /// value113900
  static final SecurityRoleType value113900 = SecurityRoleType._(
    '113900',
  );

  /// value113901
  static final SecurityRoleType value113901 = SecurityRoleType._(
    '113901',
  );

  /// value113902
  static final SecurityRoleType value113902 = SecurityRoleType._(
    '113902',
  );

  /// value113903
  static final SecurityRoleType value113903 = SecurityRoleType._(
    '113903',
  );

  /// value113904
  static final SecurityRoleType value113904 = SecurityRoleType._(
    '113904',
  );

  /// value113905
  static final SecurityRoleType value113905 = SecurityRoleType._(
    '113905',
  );

  /// value113906
  static final SecurityRoleType value113906 = SecurityRoleType._(
    '113906',
  );

  /// value113907
  static final SecurityRoleType value113907 = SecurityRoleType._(
    '113907',
  );

  /// value113908
  static final SecurityRoleType value113908 = SecurityRoleType._(
    '113908',
  );

  /// value113909
  static final SecurityRoleType value113909 = SecurityRoleType._(
    '113909',
  );

  /// value113910
  static final SecurityRoleType value113910 = SecurityRoleType._(
    '113910',
  );

  /// value113911
  static final SecurityRoleType value113911 = SecurityRoleType._(
    '113911',
  );

  /// value113912
  static final SecurityRoleType value113912 = SecurityRoleType._(
    '113912',
  );

  /// value113913
  static final SecurityRoleType value113913 = SecurityRoleType._(
    '113913',
  );

  /// value113914
  static final SecurityRoleType value113914 = SecurityRoleType._(
    '113914',
  );

  /// value113921
  static final SecurityRoleType value113921 = SecurityRoleType._(
    '113921',
  );

  /// value113922
  static final SecurityRoleType value113922 = SecurityRoleType._(
    '113922',
  );

  /// value113923
  static final SecurityRoleType value113923 = SecurityRoleType._(
    '113923',
  );

  /// value113930
  static final SecurityRoleType value113930 = SecurityRoleType._(
    '113930',
  );

  /// value113931
  static final SecurityRoleType value113931 = SecurityRoleType._(
    '113931',
  );

  /// value113932
  static final SecurityRoleType value113932 = SecurityRoleType._(
    '113932',
  );

  /// value113933
  static final SecurityRoleType value113933 = SecurityRoleType._(
    '113933',
  );

  /// value113934
  static final SecurityRoleType value113934 = SecurityRoleType._(
    '113934',
  );

  /// value113935
  static final SecurityRoleType value113935 = SecurityRoleType._(
    '113935',
  );

  /// value113936
  static final SecurityRoleType value113936 = SecurityRoleType._(
    '113936',
  );

  /// value113937
  static final SecurityRoleType value113937 = SecurityRoleType._(
    '113937',
  );

  /// value113940
  static final SecurityRoleType value113940 = SecurityRoleType._(
    '113940',
  );

  /// value113941
  static final SecurityRoleType value113941 = SecurityRoleType._(
    '113941',
  );

  /// value113942
  static final SecurityRoleType value113942 = SecurityRoleType._(
    '113942',
  );

  /// value113943
  static final SecurityRoleType value113943 = SecurityRoleType._(
    '113943',
  );

  /// value113944
  static final SecurityRoleType value113944 = SecurityRoleType._(
    '113944',
  );

  /// value113945
  static final SecurityRoleType value113945 = SecurityRoleType._(
    '113945',
  );

  /// value113946
  static final SecurityRoleType value113946 = SecurityRoleType._(
    '113946',
  );

  /// value113947
  static final SecurityRoleType value113947 = SecurityRoleType._(
    '113947',
  );

  /// value113948
  static final SecurityRoleType value113948 = SecurityRoleType._(
    '113948',
  );

  /// value113949
  static final SecurityRoleType value113949 = SecurityRoleType._(
    '113949',
  );

  /// value113950
  static final SecurityRoleType value113950 = SecurityRoleType._(
    '113950',
  );

  /// value113951
  static final SecurityRoleType value113951 = SecurityRoleType._(
    '113951',
  );

  /// value113952
  static final SecurityRoleType value113952 = SecurityRoleType._(
    '113952',
  );

  /// value113953
  static final SecurityRoleType value113953 = SecurityRoleType._(
    '113953',
  );

  /// value113954
  static final SecurityRoleType value113954 = SecurityRoleType._(
    '113954',
  );

  /// value113955
  static final SecurityRoleType value113955 = SecurityRoleType._(
    '113955',
  );

  /// value113956
  static final SecurityRoleType value113956 = SecurityRoleType._(
    '113956',
  );

  /// value113957
  static final SecurityRoleType value113957 = SecurityRoleType._(
    '113957',
  );

  /// value113958
  static final SecurityRoleType value113958 = SecurityRoleType._(
    '113958',
  );

  /// value113959
  static final SecurityRoleType value113959 = SecurityRoleType._(
    '113959',
  );

  /// value113961
  static final SecurityRoleType value113961 = SecurityRoleType._(
    '113961',
  );

  /// value113962
  static final SecurityRoleType value113962 = SecurityRoleType._(
    '113962',
  );

  /// value113963
  static final SecurityRoleType value113963 = SecurityRoleType._(
    '113963',
  );

  /// value113970
  static final SecurityRoleType value113970 = SecurityRoleType._(
    '113970',
  );

  /// value114000
  static final SecurityRoleType value114000 = SecurityRoleType._(
    '114000',
  );

  /// value114001
  static final SecurityRoleType value114001 = SecurityRoleType._(
    '114001',
  );

  /// value114002
  static final SecurityRoleType value114002 = SecurityRoleType._(
    '114002',
  );

  /// value114003
  static final SecurityRoleType value114003 = SecurityRoleType._(
    '114003',
  );

  /// value114004
  static final SecurityRoleType value114004 = SecurityRoleType._(
    '114004',
  );

  /// value114005
  static final SecurityRoleType value114005 = SecurityRoleType._(
    '114005',
  );

  /// value114006
  static final SecurityRoleType value114006 = SecurityRoleType._(
    '114006',
  );

  /// value114007
  static final SecurityRoleType value114007 = SecurityRoleType._(
    '114007',
  );

  /// value114008
  static final SecurityRoleType value114008 = SecurityRoleType._(
    '114008',
  );

  /// value114009
  static final SecurityRoleType value114009 = SecurityRoleType._(
    '114009',
  );

  /// value114010
  static final SecurityRoleType value114010 = SecurityRoleType._(
    '114010',
  );

  /// value114011
  static final SecurityRoleType value114011 = SecurityRoleType._(
    '114011',
  );

  /// value114201
  static final SecurityRoleType value114201 = SecurityRoleType._(
    '114201',
  );

  /// value114202
  static final SecurityRoleType value114202 = SecurityRoleType._(
    '114202',
  );

  /// value114203
  static final SecurityRoleType value114203 = SecurityRoleType._(
    '114203',
  );

  /// value114204
  static final SecurityRoleType value114204 = SecurityRoleType._(
    '114204',
  );

  /// value114205
  static final SecurityRoleType value114205 = SecurityRoleType._(
    '114205',
  );

  /// value114206
  static final SecurityRoleType value114206 = SecurityRoleType._(
    '114206',
  );

  /// value114207
  static final SecurityRoleType value114207 = SecurityRoleType._(
    '114207',
  );

  /// value114208
  static final SecurityRoleType value114208 = SecurityRoleType._(
    '114208',
  );

  /// value114209
  static final SecurityRoleType value114209 = SecurityRoleType._(
    '114209',
  );

  /// value114210
  static final SecurityRoleType value114210 = SecurityRoleType._(
    '114210',
  );

  /// value114211
  static final SecurityRoleType value114211 = SecurityRoleType._(
    '114211',
  );

  /// value114213
  static final SecurityRoleType value114213 = SecurityRoleType._(
    '114213',
  );

  /// value114215
  static final SecurityRoleType value114215 = SecurityRoleType._(
    '114215',
  );

  /// value114216
  static final SecurityRoleType value114216 = SecurityRoleType._(
    '114216',
  );

  /// value121001
  static final SecurityRoleType value121001 = SecurityRoleType._(
    '121001',
  );

  /// value121002
  static final SecurityRoleType value121002 = SecurityRoleType._(
    '121002',
  );

  /// value121003
  static final SecurityRoleType value121003 = SecurityRoleType._(
    '121003',
  );

  /// value121004
  static final SecurityRoleType value121004 = SecurityRoleType._(
    '121004',
  );

  /// value121005
  static final SecurityRoleType value121005 = SecurityRoleType._(
    '121005',
  );

  /// value121006
  static final SecurityRoleType value121006 = SecurityRoleType._(
    '121006',
  );

  /// value121007
  static final SecurityRoleType value121007 = SecurityRoleType._(
    '121007',
  );

  /// value121008
  static final SecurityRoleType value121008 = SecurityRoleType._(
    '121008',
  );

  /// value121009
  static final SecurityRoleType value121009 = SecurityRoleType._(
    '121009',
  );

  /// value121010
  static final SecurityRoleType value121010 = SecurityRoleType._(
    '121010',
  );

  /// value121011
  static final SecurityRoleType value121011 = SecurityRoleType._(
    '121011',
  );

  /// value121012
  static final SecurityRoleType value121012 = SecurityRoleType._(
    '121012',
  );

  /// value121013
  static final SecurityRoleType value121013 = SecurityRoleType._(
    '121013',
  );

  /// value121014
  static final SecurityRoleType value121014 = SecurityRoleType._(
    '121014',
  );

  /// value121015
  static final SecurityRoleType value121015 = SecurityRoleType._(
    '121015',
  );

  /// value121016
  static final SecurityRoleType value121016 = SecurityRoleType._(
    '121016',
  );

  /// value121017
  static final SecurityRoleType value121017 = SecurityRoleType._(
    '121017',
  );

  /// value121018
  static final SecurityRoleType value121018 = SecurityRoleType._(
    '121018',
  );

  /// value121019
  static final SecurityRoleType value121019 = SecurityRoleType._(
    '121019',
  );

  /// value121020
  static final SecurityRoleType value121020 = SecurityRoleType._(
    '121020',
  );

  /// value121021
  static final SecurityRoleType value121021 = SecurityRoleType._(
    '121021',
  );

  /// value121022
  static final SecurityRoleType value121022 = SecurityRoleType._(
    '121022',
  );

  /// value121023
  static final SecurityRoleType value121023 = SecurityRoleType._(
    '121023',
  );

  /// value121024
  static final SecurityRoleType value121024 = SecurityRoleType._(
    '121024',
  );

  /// value121025
  static final SecurityRoleType value121025 = SecurityRoleType._(
    '121025',
  );

  /// value121026
  static final SecurityRoleType value121026 = SecurityRoleType._(
    '121026',
  );

  /// value121027
  static final SecurityRoleType value121027 = SecurityRoleType._(
    '121027',
  );

  /// value121028
  static final SecurityRoleType value121028 = SecurityRoleType._(
    '121028',
  );

  /// value121029
  static final SecurityRoleType value121029 = SecurityRoleType._(
    '121029',
  );

  /// value121030
  static final SecurityRoleType value121030 = SecurityRoleType._(
    '121030',
  );

  /// value121031
  static final SecurityRoleType value121031 = SecurityRoleType._(
    '121031',
  );

  /// value121032
  static final SecurityRoleType value121032 = SecurityRoleType._(
    '121032',
  );

  /// value121033
  static final SecurityRoleType value121033 = SecurityRoleType._(
    '121033',
  );

  /// value121034
  static final SecurityRoleType value121034 = SecurityRoleType._(
    '121034',
  );

  /// value121035
  static final SecurityRoleType value121035 = SecurityRoleType._(
    '121035',
  );

  /// value121036
  static final SecurityRoleType value121036 = SecurityRoleType._(
    '121036',
  );

  /// value121037
  static final SecurityRoleType value121037 = SecurityRoleType._(
    '121037',
  );

  /// value121038
  static final SecurityRoleType value121038 = SecurityRoleType._(
    '121038',
  );

  /// value121039
  static final SecurityRoleType value121039 = SecurityRoleType._(
    '121039',
  );

  /// value121040
  static final SecurityRoleType value121040 = SecurityRoleType._(
    '121040',
  );

  /// value121041
  static final SecurityRoleType value121041 = SecurityRoleType._(
    '121041',
  );

  /// value121042
  static final SecurityRoleType value121042 = SecurityRoleType._(
    '121042',
  );

  /// value121043
  static final SecurityRoleType value121043 = SecurityRoleType._(
    '121043',
  );

  /// value121044
  static final SecurityRoleType value121044 = SecurityRoleType._(
    '121044',
  );

  /// value121045
  static final SecurityRoleType value121045 = SecurityRoleType._(
    '121045',
  );

  /// value121046
  static final SecurityRoleType value121046 = SecurityRoleType._(
    '121046',
  );

  /// value121047
  static final SecurityRoleType value121047 = SecurityRoleType._(
    '121047',
  );

  /// value121048
  static final SecurityRoleType value121048 = SecurityRoleType._(
    '121048',
  );

  /// value121049
  static final SecurityRoleType value121049 = SecurityRoleType._(
    '121049',
  );

  /// value121050
  static final SecurityRoleType value121050 = SecurityRoleType._(
    '121050',
  );

  /// value121051
  static final SecurityRoleType value121051 = SecurityRoleType._(
    '121051',
  );

  /// value121052
  static final SecurityRoleType value121052 = SecurityRoleType._(
    '121052',
  );

  /// value121053
  static final SecurityRoleType value121053 = SecurityRoleType._(
    '121053',
  );

  /// value121054
  static final SecurityRoleType value121054 = SecurityRoleType._(
    '121054',
  );

  /// value121055
  static final SecurityRoleType value121055 = SecurityRoleType._(
    '121055',
  );

  /// value121056
  static final SecurityRoleType value121056 = SecurityRoleType._(
    '121056',
  );

  /// value121057
  static final SecurityRoleType value121057 = SecurityRoleType._(
    '121057',
  );

  /// value121058
  static final SecurityRoleType value121058 = SecurityRoleType._(
    '121058',
  );

  /// value121059
  static final SecurityRoleType value121059 = SecurityRoleType._(
    '121059',
  );

  /// value121060
  static final SecurityRoleType value121060 = SecurityRoleType._(
    '121060',
  );

  /// value121062
  static final SecurityRoleType value121062 = SecurityRoleType._(
    '121062',
  );

  /// value121064
  static final SecurityRoleType value121064 = SecurityRoleType._(
    '121064',
  );

  /// value121065
  static final SecurityRoleType value121065 = SecurityRoleType._(
    '121065',
  );

  /// value121066
  static final SecurityRoleType value121066 = SecurityRoleType._(
    '121066',
  );

  /// value121068
  static final SecurityRoleType value121068 = SecurityRoleType._(
    '121068',
  );

  /// value121069
  static final SecurityRoleType value121069 = SecurityRoleType._(
    '121069',
  );

  /// value121070
  static final SecurityRoleType value121070 = SecurityRoleType._(
    '121070',
  );

  /// value121071
  static final SecurityRoleType value121071 = SecurityRoleType._(
    '121071',
  );

  /// value121072
  static final SecurityRoleType value121072 = SecurityRoleType._(
    '121072',
  );

  /// value121073
  static final SecurityRoleType value121073 = SecurityRoleType._(
    '121073',
  );

  /// value121074
  static final SecurityRoleType value121074 = SecurityRoleType._(
    '121074',
  );

  /// value121075
  static final SecurityRoleType value121075 = SecurityRoleType._(
    '121075',
  );

  /// value121076
  static final SecurityRoleType value121076 = SecurityRoleType._(
    '121076',
  );

  /// value121077
  static final SecurityRoleType value121077 = SecurityRoleType._(
    '121077',
  );

  /// value121078
  static final SecurityRoleType value121078 = SecurityRoleType._(
    '121078',
  );

  /// value121079
  static final SecurityRoleType value121079 = SecurityRoleType._(
    '121079',
  );

  /// value121080
  static final SecurityRoleType value121080 = SecurityRoleType._(
    '121080',
  );

  /// value121081
  static final SecurityRoleType value121081 = SecurityRoleType._(
    '121081',
  );

  /// value121082
  static final SecurityRoleType value121082 = SecurityRoleType._(
    '121082',
  );

  /// value121083
  static final SecurityRoleType value121083 = SecurityRoleType._(
    '121083',
  );

  /// value121084
  static final SecurityRoleType value121084 = SecurityRoleType._(
    '121084',
  );

  /// value121085
  static final SecurityRoleType value121085 = SecurityRoleType._(
    '121085',
  );

  /// value121086
  static final SecurityRoleType value121086 = SecurityRoleType._(
    '121086',
  );

  /// value121087
  static final SecurityRoleType value121087 = SecurityRoleType._(
    '121087',
  );

  /// value121088
  static final SecurityRoleType value121088 = SecurityRoleType._(
    '121088',
  );

  /// value121089
  static final SecurityRoleType value121089 = SecurityRoleType._(
    '121089',
  );

  /// value121090
  static final SecurityRoleType value121090 = SecurityRoleType._(
    '121090',
  );

  /// value121091
  static final SecurityRoleType value121091 = SecurityRoleType._(
    '121091',
  );

  /// value121092
  static final SecurityRoleType value121092 = SecurityRoleType._(
    '121092',
  );

  /// value121093
  static final SecurityRoleType value121093 = SecurityRoleType._(
    '121093',
  );

  /// value121094
  static final SecurityRoleType value121094 = SecurityRoleType._(
    '121094',
  );

  /// value121095
  static final SecurityRoleType value121095 = SecurityRoleType._(
    '121095',
  );

  /// value121096
  static final SecurityRoleType value121096 = SecurityRoleType._(
    '121096',
  );

  /// value121097
  static final SecurityRoleType value121097 = SecurityRoleType._(
    '121097',
  );

  /// value121098
  static final SecurityRoleType value121098 = SecurityRoleType._(
    '121098',
  );

  /// value121099
  static final SecurityRoleType value121099 = SecurityRoleType._(
    '121099',
  );

  /// value121100
  static final SecurityRoleType value121100 = SecurityRoleType._(
    '121100',
  );

  /// value121101
  static final SecurityRoleType value121101 = SecurityRoleType._(
    '121101',
  );

  /// value121102
  static final SecurityRoleType value121102 = SecurityRoleType._(
    '121102',
  );

  /// value121103
  static final SecurityRoleType value121103 = SecurityRoleType._(
    '121103',
  );

  /// value121104
  static final SecurityRoleType value121104 = SecurityRoleType._(
    '121104',
  );

  /// value121105
  static final SecurityRoleType value121105 = SecurityRoleType._(
    '121105',
  );

  /// value121106
  static final SecurityRoleType value121106 = SecurityRoleType._(
    '121106',
  );

  /// value121109
  static final SecurityRoleType value121109 = SecurityRoleType._(
    '121109',
  );

  /// value121110
  static final SecurityRoleType value121110 = SecurityRoleType._(
    '121110',
  );

  /// value121111
  static final SecurityRoleType value121111 = SecurityRoleType._(
    '121111',
  );

  /// value121112
  static final SecurityRoleType value121112 = SecurityRoleType._(
    '121112',
  );

  /// value121113
  static final SecurityRoleType value121113 = SecurityRoleType._(
    '121113',
  );

  /// value121114
  static final SecurityRoleType value121114 = SecurityRoleType._(
    '121114',
  );

  /// value121115
  static final SecurityRoleType value121115 = SecurityRoleType._(
    '121115',
  );

  /// value121116
  static final SecurityRoleType value121116 = SecurityRoleType._(
    '121116',
  );

  /// value121117
  static final SecurityRoleType value121117 = SecurityRoleType._(
    '121117',
  );

  /// value121118
  static final SecurityRoleType value121118 = SecurityRoleType._(
    '121118',
  );

  /// value121120
  static final SecurityRoleType value121120 = SecurityRoleType._(
    '121120',
  );

  /// value121121
  static final SecurityRoleType value121121 = SecurityRoleType._(
    '121121',
  );

  /// value121122
  static final SecurityRoleType value121122 = SecurityRoleType._(
    '121122',
  );

  /// value121123
  static final SecurityRoleType value121123 = SecurityRoleType._(
    '121123',
  );

  /// value121124
  static final SecurityRoleType value121124 = SecurityRoleType._(
    '121124',
  );

  /// value121125
  static final SecurityRoleType value121125 = SecurityRoleType._(
    '121125',
  );

  /// value121126
  static final SecurityRoleType value121126 = SecurityRoleType._(
    '121126',
  );

  /// value121127
  static final SecurityRoleType value121127 = SecurityRoleType._(
    '121127',
  );

  /// value121128
  static final SecurityRoleType value121128 = SecurityRoleType._(
    '121128',
  );

  /// value121130
  static final SecurityRoleType value121130 = SecurityRoleType._(
    '121130',
  );

  /// value121131
  static final SecurityRoleType value121131 = SecurityRoleType._(
    '121131',
  );

  /// value121132
  static final SecurityRoleType value121132 = SecurityRoleType._(
    '121132',
  );

  /// value121133
  static final SecurityRoleType value121133 = SecurityRoleType._(
    '121133',
  );

  /// value121135
  static final SecurityRoleType value121135 = SecurityRoleType._(
    '121135',
  );

  /// value121136
  static final SecurityRoleType value121136 = SecurityRoleType._(
    '121136',
  );

  /// value121137
  static final SecurityRoleType value121137 = SecurityRoleType._(
    '121137',
  );

  /// value121138
  static final SecurityRoleType value121138 = SecurityRoleType._(
    '121138',
  );

  /// value121139
  static final SecurityRoleType value121139 = SecurityRoleType._(
    '121139',
  );

  /// value121140
  static final SecurityRoleType value121140 = SecurityRoleType._(
    '121140',
  );

  /// value121141
  static final SecurityRoleType value121141 = SecurityRoleType._(
    '121141',
  );

  /// value121142
  static final SecurityRoleType value121142 = SecurityRoleType._(
    '121142',
  );

  /// value121143
  static final SecurityRoleType value121143 = SecurityRoleType._(
    '121143',
  );

  /// value121144
  static final SecurityRoleType value121144 = SecurityRoleType._(
    '121144',
  );

  /// value121145
  static final SecurityRoleType value121145 = SecurityRoleType._(
    '121145',
  );

  /// value121146
  static final SecurityRoleType value121146 = SecurityRoleType._(
    '121146',
  );

  /// value121147
  static final SecurityRoleType value121147 = SecurityRoleType._(
    '121147',
  );

  /// value121148
  static final SecurityRoleType value121148 = SecurityRoleType._(
    '121148',
  );

  /// value121149
  static final SecurityRoleType value121149 = SecurityRoleType._(
    '121149',
  );

  /// value121150
  static final SecurityRoleType value121150 = SecurityRoleType._(
    '121150',
  );

  /// value121151
  static final SecurityRoleType value121151 = SecurityRoleType._(
    '121151',
  );

  /// value121152
  static final SecurityRoleType value121152 = SecurityRoleType._(
    '121152',
  );

  /// value121153
  static final SecurityRoleType value121153 = SecurityRoleType._(
    '121153',
  );

  /// value121154
  static final SecurityRoleType value121154 = SecurityRoleType._(
    '121154',
  );

  /// value121155
  static final SecurityRoleType value121155 = SecurityRoleType._(
    '121155',
  );

  /// value121156
  static final SecurityRoleType value121156 = SecurityRoleType._(
    '121156',
  );

  /// value121157
  static final SecurityRoleType value121157 = SecurityRoleType._(
    '121157',
  );

  /// value121158
  static final SecurityRoleType value121158 = SecurityRoleType._(
    '121158',
  );

  /// value121160
  static final SecurityRoleType value121160 = SecurityRoleType._(
    '121160',
  );

  /// value121161
  static final SecurityRoleType value121161 = SecurityRoleType._(
    '121161',
  );

  /// value121162
  static final SecurityRoleType value121162 = SecurityRoleType._(
    '121162',
  );

  /// value121163
  static final SecurityRoleType value121163 = SecurityRoleType._(
    '121163',
  );

  /// value121165
  static final SecurityRoleType value121165 = SecurityRoleType._(
    '121165',
  );

  /// value121166
  static final SecurityRoleType value121166 = SecurityRoleType._(
    '121166',
  );

  /// value121167
  static final SecurityRoleType value121167 = SecurityRoleType._(
    '121167',
  );

  /// value121168
  static final SecurityRoleType value121168 = SecurityRoleType._(
    '121168',
  );

  /// value121169
  static final SecurityRoleType value121169 = SecurityRoleType._(
    '121169',
  );

  /// value121171
  static final SecurityRoleType value121171 = SecurityRoleType._(
    '121171',
  );

  /// value121172
  static final SecurityRoleType value121172 = SecurityRoleType._(
    '121172',
  );

  /// value121173
  static final SecurityRoleType value121173 = SecurityRoleType._(
    '121173',
  );

  /// value121174
  static final SecurityRoleType value121174 = SecurityRoleType._(
    '121174',
  );

  /// value121180
  static final SecurityRoleType value121180 = SecurityRoleType._(
    '121180',
  );

  /// value121181
  static final SecurityRoleType value121181 = SecurityRoleType._(
    '121181',
  );

  /// value121190
  static final SecurityRoleType value121190 = SecurityRoleType._(
    '121190',
  );

  /// value121191
  static final SecurityRoleType value121191 = SecurityRoleType._(
    '121191',
  );

  /// value121192
  static final SecurityRoleType value121192 = SecurityRoleType._(
    '121192',
  );

  /// value121193
  static final SecurityRoleType value121193 = SecurityRoleType._(
    '121193',
  );

  /// value121194
  static final SecurityRoleType value121194 = SecurityRoleType._(
    '121194',
  );

  /// value121195
  static final SecurityRoleType value121195 = SecurityRoleType._(
    '121195',
  );

  /// value121196
  static final SecurityRoleType value121196 = SecurityRoleType._(
    '121196',
  );

  /// value121197
  static final SecurityRoleType value121197 = SecurityRoleType._(
    '121197',
  );

  /// value121198
  static final SecurityRoleType value121198 = SecurityRoleType._(
    '121198',
  );

  /// value121200
  static final SecurityRoleType value121200 = SecurityRoleType._(
    '121200',
  );

  /// value121201
  static final SecurityRoleType value121201 = SecurityRoleType._(
    '121201',
  );

  /// value121202
  static final SecurityRoleType value121202 = SecurityRoleType._(
    '121202',
  );

  /// value121206
  static final SecurityRoleType value121206 = SecurityRoleType._(
    '121206',
  );

  /// value121207
  static final SecurityRoleType value121207 = SecurityRoleType._(
    '121207',
  );

  /// value121208
  static final SecurityRoleType value121208 = SecurityRoleType._(
    '121208',
  );

  /// value121210
  static final SecurityRoleType value121210 = SecurityRoleType._(
    '121210',
  );

  /// value121211
  static final SecurityRoleType value121211 = SecurityRoleType._(
    '121211',
  );

  /// value121213
  static final SecurityRoleType value121213 = SecurityRoleType._(
    '121213',
  );

  /// value121214
  static final SecurityRoleType value121214 = SecurityRoleType._(
    '121214',
  );

  /// value121216
  static final SecurityRoleType value121216 = SecurityRoleType._(
    '121216',
  );

  /// value121217
  static final SecurityRoleType value121217 = SecurityRoleType._(
    '121217',
  );

  /// value121218
  static final SecurityRoleType value121218 = SecurityRoleType._(
    '121218',
  );

  /// value121219
  static final SecurityRoleType value121219 = SecurityRoleType._(
    '121219',
  );

  /// value121220
  static final SecurityRoleType value121220 = SecurityRoleType._(
    '121220',
  );

  /// value121221
  static final SecurityRoleType value121221 = SecurityRoleType._(
    '121221',
  );

  /// value121222
  static final SecurityRoleType value121222 = SecurityRoleType._(
    '121222',
  );

  /// value121230
  static final SecurityRoleType value121230 = SecurityRoleType._(
    '121230',
  );

  /// value121231
  static final SecurityRoleType value121231 = SecurityRoleType._(
    '121231',
  );

  /// value121232
  static final SecurityRoleType value121232 = SecurityRoleType._(
    '121232',
  );

  /// value121233
  static final SecurityRoleType value121233 = SecurityRoleType._(
    '121233',
  );

  /// value121242
  static final SecurityRoleType value121242 = SecurityRoleType._(
    '121242',
  );

  /// value121243
  static final SecurityRoleType value121243 = SecurityRoleType._(
    '121243',
  );

  /// value121244
  static final SecurityRoleType value121244 = SecurityRoleType._(
    '121244',
  );

  /// value121290
  static final SecurityRoleType value121290 = SecurityRoleType._(
    '121290',
  );

  /// value121291
  static final SecurityRoleType value121291 = SecurityRoleType._(
    '121291',
  );

  /// value121301
  static final SecurityRoleType value121301 = SecurityRoleType._(
    '121301',
  );

  /// value121302
  static final SecurityRoleType value121302 = SecurityRoleType._(
    '121302',
  );

  /// value121303
  static final SecurityRoleType value121303 = SecurityRoleType._(
    '121303',
  );

  /// value121304
  static final SecurityRoleType value121304 = SecurityRoleType._(
    '121304',
  );

  /// value121305
  static final SecurityRoleType value121305 = SecurityRoleType._(
    '121305',
  );

  /// value121306
  static final SecurityRoleType value121306 = SecurityRoleType._(
    '121306',
  );

  /// value121307
  static final SecurityRoleType value121307 = SecurityRoleType._(
    '121307',
  );

  /// value121311
  static final SecurityRoleType value121311 = SecurityRoleType._(
    '121311',
  );

  /// value121312
  static final SecurityRoleType value121312 = SecurityRoleType._(
    '121312',
  );

  /// value121313
  static final SecurityRoleType value121313 = SecurityRoleType._(
    '121313',
  );

  /// value121314
  static final SecurityRoleType value121314 = SecurityRoleType._(
    '121314',
  );

  /// value121315
  static final SecurityRoleType value121315 = SecurityRoleType._(
    '121315',
  );

  /// value121316
  static final SecurityRoleType value121316 = SecurityRoleType._(
    '121316',
  );

  /// value121317
  static final SecurityRoleType value121317 = SecurityRoleType._(
    '121317',
  );

  /// value121318
  static final SecurityRoleType value121318 = SecurityRoleType._(
    '121318',
  );

  /// value121320
  static final SecurityRoleType value121320 = SecurityRoleType._(
    '121320',
  );

  /// value121321
  static final SecurityRoleType value121321 = SecurityRoleType._(
    '121321',
  );

  /// value121322
  static final SecurityRoleType value121322 = SecurityRoleType._(
    '121322',
  );

  /// value121323
  static final SecurityRoleType value121323 = SecurityRoleType._(
    '121323',
  );

  /// value121324
  static final SecurityRoleType value121324 = SecurityRoleType._(
    '121324',
  );

  /// value121325
  static final SecurityRoleType value121325 = SecurityRoleType._(
    '121325',
  );

  /// value121326
  static final SecurityRoleType value121326 = SecurityRoleType._(
    '121326',
  );

  /// value121327
  static final SecurityRoleType value121327 = SecurityRoleType._(
    '121327',
  );

  /// value121328
  static final SecurityRoleType value121328 = SecurityRoleType._(
    '121328',
  );

  /// value121329
  static final SecurityRoleType value121329 = SecurityRoleType._(
    '121329',
  );

  /// value121330
  static final SecurityRoleType value121330 = SecurityRoleType._(
    '121330',
  );

  /// value121331
  static final SecurityRoleType value121331 = SecurityRoleType._(
    '121331',
  );

  /// value121332
  static final SecurityRoleType value121332 = SecurityRoleType._(
    '121332',
  );

  /// value121333
  static final SecurityRoleType value121333 = SecurityRoleType._(
    '121333',
  );

  /// value121334
  static final SecurityRoleType value121334 = SecurityRoleType._(
    '121334',
  );

  /// value121335
  static final SecurityRoleType value121335 = SecurityRoleType._(
    '121335',
  );

  /// value121338
  static final SecurityRoleType value121338 = SecurityRoleType._(
    '121338',
  );

  /// value121339
  static final SecurityRoleType value121339 = SecurityRoleType._(
    '121339',
  );

  /// value121340
  static final SecurityRoleType value121340 = SecurityRoleType._(
    '121340',
  );

  /// value121341
  static final SecurityRoleType value121341 = SecurityRoleType._(
    '121341',
  );

  /// value121342
  static final SecurityRoleType value121342 = SecurityRoleType._(
    '121342',
  );

  /// value121346
  static final SecurityRoleType value121346 = SecurityRoleType._(
    '121346',
  );

  /// value121347
  static final SecurityRoleType value121347 = SecurityRoleType._(
    '121347',
  );

  /// value121348
  static final SecurityRoleType value121348 = SecurityRoleType._(
    '121348',
  );

  /// value121349
  static final SecurityRoleType value121349 = SecurityRoleType._(
    '121349',
  );

  /// value121350
  static final SecurityRoleType value121350 = SecurityRoleType._(
    '121350',
  );

  /// value121351
  static final SecurityRoleType value121351 = SecurityRoleType._(
    '121351',
  );

  /// value121352
  static final SecurityRoleType value121352 = SecurityRoleType._(
    '121352',
  );

  /// value121353
  static final SecurityRoleType value121353 = SecurityRoleType._(
    '121353',
  );

  /// value121354
  static final SecurityRoleType value121354 = SecurityRoleType._(
    '121354',
  );

  /// value121358
  static final SecurityRoleType value121358 = SecurityRoleType._(
    '121358',
  );

  /// value121360
  static final SecurityRoleType value121360 = SecurityRoleType._(
    '121360',
  );

  /// value121361
  static final SecurityRoleType value121361 = SecurityRoleType._(
    '121361',
  );

  /// value121362
  static final SecurityRoleType value121362 = SecurityRoleType._(
    '121362',
  );

  /// value121363
  static final SecurityRoleType value121363 = SecurityRoleType._(
    '121363',
  );

  /// value121370
  static final SecurityRoleType value121370 = SecurityRoleType._(
    '121370',
  );

  /// value121371
  static final SecurityRoleType value121371 = SecurityRoleType._(
    '121371',
  );

  /// value121372
  static final SecurityRoleType value121372 = SecurityRoleType._(
    '121372',
  );

  /// value121380
  static final SecurityRoleType value121380 = SecurityRoleType._(
    '121380',
  );

  /// value121381
  static final SecurityRoleType value121381 = SecurityRoleType._(
    '121381',
  );

  /// value121382
  static final SecurityRoleType value121382 = SecurityRoleType._(
    '121382',
  );

  /// value121383
  static final SecurityRoleType value121383 = SecurityRoleType._(
    '121383',
  );

  /// value121401
  static final SecurityRoleType value121401 = SecurityRoleType._(
    '121401',
  );

  /// value121402
  static final SecurityRoleType value121402 = SecurityRoleType._(
    '121402',
  );

  /// value121403
  static final SecurityRoleType value121403 = SecurityRoleType._(
    '121403',
  );

  /// value121404
  static final SecurityRoleType value121404 = SecurityRoleType._(
    '121404',
  );

  /// value121405
  static final SecurityRoleType value121405 = SecurityRoleType._(
    '121405',
  );

  /// value121406
  static final SecurityRoleType value121406 = SecurityRoleType._(
    '121406',
  );

  /// value121407
  static final SecurityRoleType value121407 = SecurityRoleType._(
    '121407',
  );

  /// value121408
  static final SecurityRoleType value121408 = SecurityRoleType._(
    '121408',
  );

  /// value121410
  static final SecurityRoleType value121410 = SecurityRoleType._(
    '121410',
  );

  /// value121411
  static final SecurityRoleType value121411 = SecurityRoleType._(
    '121411',
  );

  /// value121412
  static final SecurityRoleType value121412 = SecurityRoleType._(
    '121412',
  );

  /// value121414
  static final SecurityRoleType value121414 = SecurityRoleType._(
    '121414',
  );

  /// value121415
  static final SecurityRoleType value121415 = SecurityRoleType._(
    '121415',
  );

  /// value121416
  static final SecurityRoleType value121416 = SecurityRoleType._(
    '121416',
  );

  /// value121417
  static final SecurityRoleType value121417 = SecurityRoleType._(
    '121417',
  );

  /// value121420
  static final SecurityRoleType value121420 = SecurityRoleType._(
    '121420',
  );

  /// value121421
  static final SecurityRoleType value121421 = SecurityRoleType._(
    '121421',
  );

  /// value121422
  static final SecurityRoleType value121422 = SecurityRoleType._(
    '121422',
  );

  /// value121423
  static final SecurityRoleType value121423 = SecurityRoleType._(
    '121423',
  );

  /// value121424
  static final SecurityRoleType value121424 = SecurityRoleType._(
    '121424',
  );

  /// value121425
  static final SecurityRoleType value121425 = SecurityRoleType._(
    '121425',
  );

  /// value121427
  static final SecurityRoleType value121427 = SecurityRoleType._(
    '121427',
  );

  /// value121428
  static final SecurityRoleType value121428 = SecurityRoleType._(
    '121428',
  );

  /// value121430
  static final SecurityRoleType value121430 = SecurityRoleType._(
    '121430',
  );

  /// value121431
  static final SecurityRoleType value121431 = SecurityRoleType._(
    '121431',
  );

  /// value121432
  static final SecurityRoleType value121432 = SecurityRoleType._(
    '121432',
  );

  /// value121433
  static final SecurityRoleType value121433 = SecurityRoleType._(
    '121433',
  );

  /// value121434
  static final SecurityRoleType value121434 = SecurityRoleType._(
    '121434',
  );

  /// value121435
  static final SecurityRoleType value121435 = SecurityRoleType._(
    '121435',
  );

  /// value121436
  static final SecurityRoleType value121436 = SecurityRoleType._(
    '121436',
  );

  /// value121437
  static final SecurityRoleType value121437 = SecurityRoleType._(
    '121437',
  );

  /// value121438
  static final SecurityRoleType value121438 = SecurityRoleType._(
    '121438',
  );

  /// value121439
  static final SecurityRoleType value121439 = SecurityRoleType._(
    '121439',
  );

  /// value121701
  static final SecurityRoleType value121701 = SecurityRoleType._(
    '121701',
  );

  /// value121702
  static final SecurityRoleType value121702 = SecurityRoleType._(
    '121702',
  );

  /// value121703
  static final SecurityRoleType value121703 = SecurityRoleType._(
    '121703',
  );

  /// value121704
  static final SecurityRoleType value121704 = SecurityRoleType._(
    '121704',
  );

  /// value121705
  static final SecurityRoleType value121705 = SecurityRoleType._(
    '121705',
  );

  /// value121706
  static final SecurityRoleType value121706 = SecurityRoleType._(
    '121706',
  );

  /// value121707
  static final SecurityRoleType value121707 = SecurityRoleType._(
    '121707',
  );

  /// value121708
  static final SecurityRoleType value121708 = SecurityRoleType._(
    '121708',
  );

  /// value121709
  static final SecurityRoleType value121709 = SecurityRoleType._(
    '121709',
  );

  /// value121710
  static final SecurityRoleType value121710 = SecurityRoleType._(
    '121710',
  );

  /// value121711
  static final SecurityRoleType value121711 = SecurityRoleType._(
    '121711',
  );

  /// value121712
  static final SecurityRoleType value121712 = SecurityRoleType._(
    '121712',
  );

  /// value121713
  static final SecurityRoleType value121713 = SecurityRoleType._(
    '121713',
  );

  /// value121714
  static final SecurityRoleType value121714 = SecurityRoleType._(
    '121714',
  );

  /// value121715
  static final SecurityRoleType value121715 = SecurityRoleType._(
    '121715',
  );

  /// value121716
  static final SecurityRoleType value121716 = SecurityRoleType._(
    '121716',
  );

  /// value121717
  static final SecurityRoleType value121717 = SecurityRoleType._(
    '121717',
  );

  /// value121718
  static final SecurityRoleType value121718 = SecurityRoleType._(
    '121718',
  );

  /// value121719
  static final SecurityRoleType value121719 = SecurityRoleType._(
    '121719',
  );

  /// value121720
  static final SecurityRoleType value121720 = SecurityRoleType._(
    '121720',
  );

  /// value121721
  static final SecurityRoleType value121721 = SecurityRoleType._(
    '121721',
  );

  /// value121722
  static final SecurityRoleType value121722 = SecurityRoleType._(
    '121722',
  );

  /// value121723
  static final SecurityRoleType value121723 = SecurityRoleType._(
    '121723',
  );

  /// value121724
  static final SecurityRoleType value121724 = SecurityRoleType._(
    '121724',
  );

  /// value121725
  static final SecurityRoleType value121725 = SecurityRoleType._(
    '121725',
  );

  /// value121726
  static final SecurityRoleType value121726 = SecurityRoleType._(
    '121726',
  );

  /// value121727
  static final SecurityRoleType value121727 = SecurityRoleType._(
    '121727',
  );

  /// value121728
  static final SecurityRoleType value121728 = SecurityRoleType._(
    '121728',
  );

  /// value121729
  static final SecurityRoleType value121729 = SecurityRoleType._(
    '121729',
  );

  /// value121730
  static final SecurityRoleType value121730 = SecurityRoleType._(
    '121730',
  );

  /// value121731
  static final SecurityRoleType value121731 = SecurityRoleType._(
    '121731',
  );

  /// value121732
  static final SecurityRoleType value121732 = SecurityRoleType._(
    '121732',
  );

  /// value121733
  static final SecurityRoleType value121733 = SecurityRoleType._(
    '121733',
  );

  /// value121734
  static final SecurityRoleType value121734 = SecurityRoleType._(
    '121734',
  );

  /// value121740
  static final SecurityRoleType value121740 = SecurityRoleType._(
    '121740',
  );

  /// value122001
  static final SecurityRoleType value122001 = SecurityRoleType._(
    '122001',
  );

  /// value122002
  static final SecurityRoleType value122002 = SecurityRoleType._(
    '122002',
  );

  /// value122003
  static final SecurityRoleType value122003 = SecurityRoleType._(
    '122003',
  );

  /// value122004
  static final SecurityRoleType value122004 = SecurityRoleType._(
    '122004',
  );

  /// value122005
  static final SecurityRoleType value122005 = SecurityRoleType._(
    '122005',
  );

  /// value122006
  static final SecurityRoleType value122006 = SecurityRoleType._(
    '122006',
  );

  /// value122007
  static final SecurityRoleType value122007 = SecurityRoleType._(
    '122007',
  );

  /// value122008
  static final SecurityRoleType value122008 = SecurityRoleType._(
    '122008',
  );

  /// value122009
  static final SecurityRoleType value122009 = SecurityRoleType._(
    '122009',
  );

  /// value122010
  static final SecurityRoleType value122010 = SecurityRoleType._(
    '122010',
  );

  /// value122011
  static final SecurityRoleType value122011 = SecurityRoleType._(
    '122011',
  );

  /// value122012
  static final SecurityRoleType value122012 = SecurityRoleType._(
    '122012',
  );

  /// value122020
  static final SecurityRoleType value122020 = SecurityRoleType._(
    '122020',
  );

  /// value122021
  static final SecurityRoleType value122021 = SecurityRoleType._(
    '122021',
  );

  /// value122022
  static final SecurityRoleType value122022 = SecurityRoleType._(
    '122022',
  );

  /// value122023
  static final SecurityRoleType value122023 = SecurityRoleType._(
    '122023',
  );

  /// value122024
  static final SecurityRoleType value122024 = SecurityRoleType._(
    '122024',
  );

  /// value122025
  static final SecurityRoleType value122025 = SecurityRoleType._(
    '122025',
  );

  /// value122026
  static final SecurityRoleType value122026 = SecurityRoleType._(
    '122026',
  );

  /// value122027
  static final SecurityRoleType value122027 = SecurityRoleType._(
    '122027',
  );

  /// value122028
  static final SecurityRoleType value122028 = SecurityRoleType._(
    '122028',
  );

  /// value122029
  static final SecurityRoleType value122029 = SecurityRoleType._(
    '122029',
  );

  /// value122030
  static final SecurityRoleType value122030 = SecurityRoleType._(
    '122030',
  );

  /// value122031
  static final SecurityRoleType value122031 = SecurityRoleType._(
    '122031',
  );

  /// value122032
  static final SecurityRoleType value122032 = SecurityRoleType._(
    '122032',
  );

  /// value122033
  static final SecurityRoleType value122033 = SecurityRoleType._(
    '122033',
  );

  /// value122034
  static final SecurityRoleType value122034 = SecurityRoleType._(
    '122034',
  );

  /// value122035
  static final SecurityRoleType value122035 = SecurityRoleType._(
    '122035',
  );

  /// value122036
  static final SecurityRoleType value122036 = SecurityRoleType._(
    '122036',
  );

  /// value122037
  static final SecurityRoleType value122037 = SecurityRoleType._(
    '122037',
  );

  /// value122038
  static final SecurityRoleType value122038 = SecurityRoleType._(
    '122038',
  );

  /// value122039
  static final SecurityRoleType value122039 = SecurityRoleType._(
    '122039',
  );

  /// value122041
  static final SecurityRoleType value122041 = SecurityRoleType._(
    '122041',
  );

  /// value122042
  static final SecurityRoleType value122042 = SecurityRoleType._(
    '122042',
  );

  /// value122043
  static final SecurityRoleType value122043 = SecurityRoleType._(
    '122043',
  );

  /// value122044
  static final SecurityRoleType value122044 = SecurityRoleType._(
    '122044',
  );

  /// value122045
  static final SecurityRoleType value122045 = SecurityRoleType._(
    '122045',
  );

  /// value122046
  static final SecurityRoleType value122046 = SecurityRoleType._(
    '122046',
  );

  /// value122047
  static final SecurityRoleType value122047 = SecurityRoleType._(
    '122047',
  );

  /// value122048
  static final SecurityRoleType value122048 = SecurityRoleType._(
    '122048',
  );

  /// value122049
  static final SecurityRoleType value122049 = SecurityRoleType._(
    '122049',
  );

  /// value122052
  static final SecurityRoleType value122052 = SecurityRoleType._(
    '122052',
  );

  /// value122053
  static final SecurityRoleType value122053 = SecurityRoleType._(
    '122053',
  );

  /// value122054
  static final SecurityRoleType value122054 = SecurityRoleType._(
    '122054',
  );

  /// value122055
  static final SecurityRoleType value122055 = SecurityRoleType._(
    '122055',
  );

  /// value122056
  static final SecurityRoleType value122056 = SecurityRoleType._(
    '122056',
  );

  /// value122057
  static final SecurityRoleType value122057 = SecurityRoleType._(
    '122057',
  );

  /// value122058
  static final SecurityRoleType value122058 = SecurityRoleType._(
    '122058',
  );

  /// value122059
  static final SecurityRoleType value122059 = SecurityRoleType._(
    '122059',
  );

  /// value122060
  static final SecurityRoleType value122060 = SecurityRoleType._(
    '122060',
  );

  /// value122061
  static final SecurityRoleType value122061 = SecurityRoleType._(
    '122061',
  );

  /// value122062
  static final SecurityRoleType value122062 = SecurityRoleType._(
    '122062',
  );

  /// value122072
  static final SecurityRoleType value122072 = SecurityRoleType._(
    '122072',
  );

  /// value122073
  static final SecurityRoleType value122073 = SecurityRoleType._(
    '122073',
  );

  /// value122075
  static final SecurityRoleType value122075 = SecurityRoleType._(
    '122075',
  );

  /// value122076
  static final SecurityRoleType value122076 = SecurityRoleType._(
    '122076',
  );

  /// value122077
  static final SecurityRoleType value122077 = SecurityRoleType._(
    '122077',
  );

  /// value122078
  static final SecurityRoleType value122078 = SecurityRoleType._(
    '122078',
  );

  /// value122079
  static final SecurityRoleType value122079 = SecurityRoleType._(
    '122079',
  );

  /// value122081
  static final SecurityRoleType value122081 = SecurityRoleType._(
    '122081',
  );

  /// value122082
  static final SecurityRoleType value122082 = SecurityRoleType._(
    '122082',
  );

  /// value122083
  static final SecurityRoleType value122083 = SecurityRoleType._(
    '122083',
  );

  /// value122084
  static final SecurityRoleType value122084 = SecurityRoleType._(
    '122084',
  );

  /// value122085
  static final SecurityRoleType value122085 = SecurityRoleType._(
    '122085',
  );

  /// value122086
  static final SecurityRoleType value122086 = SecurityRoleType._(
    '122086',
  );

  /// value122087
  static final SecurityRoleType value122087 = SecurityRoleType._(
    '122087',
  );

  /// value122088
  static final SecurityRoleType value122088 = SecurityRoleType._(
    '122088',
  );

  /// value122089
  static final SecurityRoleType value122089 = SecurityRoleType._(
    '122089',
  );

  /// value122090
  static final SecurityRoleType value122090 = SecurityRoleType._(
    '122090',
  );

  /// value122091
  static final SecurityRoleType value122091 = SecurityRoleType._(
    '122091',
  );

  /// value122092
  static final SecurityRoleType value122092 = SecurityRoleType._(
    '122092',
  );

  /// value122093
  static final SecurityRoleType value122093 = SecurityRoleType._(
    '122093',
  );

  /// value122094
  static final SecurityRoleType value122094 = SecurityRoleType._(
    '122094',
  );

  /// value122095
  static final SecurityRoleType value122095 = SecurityRoleType._(
    '122095',
  );

  /// value122096
  static final SecurityRoleType value122096 = SecurityRoleType._(
    '122096',
  );

  /// value122097
  static final SecurityRoleType value122097 = SecurityRoleType._(
    '122097',
  );

  /// value122098
  static final SecurityRoleType value122098 = SecurityRoleType._(
    '122098',
  );

  /// value122099
  static final SecurityRoleType value122099 = SecurityRoleType._(
    '122099',
  );

  /// value122101
  static final SecurityRoleType value122101 = SecurityRoleType._(
    '122101',
  );

  /// value122102
  static final SecurityRoleType value122102 = SecurityRoleType._(
    '122102',
  );

  /// value122103
  static final SecurityRoleType value122103 = SecurityRoleType._(
    '122103',
  );

  /// value122104
  static final SecurityRoleType value122104 = SecurityRoleType._(
    '122104',
  );

  /// value122105
  static final SecurityRoleType value122105 = SecurityRoleType._(
    '122105',
  );

  /// value122106
  static final SecurityRoleType value122106 = SecurityRoleType._(
    '122106',
  );

  /// value122107
  static final SecurityRoleType value122107 = SecurityRoleType._(
    '122107',
  );

  /// value122108
  static final SecurityRoleType value122108 = SecurityRoleType._(
    '122108',
  );

  /// value122109
  static final SecurityRoleType value122109 = SecurityRoleType._(
    '122109',
  );

  /// value122110
  static final SecurityRoleType value122110 = SecurityRoleType._(
    '122110',
  );

  /// value122111
  static final SecurityRoleType value122111 = SecurityRoleType._(
    '122111',
  );

  /// value122112
  static final SecurityRoleType value122112 = SecurityRoleType._(
    '122112',
  );

  /// value122113
  static final SecurityRoleType value122113 = SecurityRoleType._(
    '122113',
  );

  /// value122114
  static final SecurityRoleType value122114 = SecurityRoleType._(
    '122114',
  );

  /// value122120
  static final SecurityRoleType value122120 = SecurityRoleType._(
    '122120',
  );

  /// value122121
  static final SecurityRoleType value122121 = SecurityRoleType._(
    '122121',
  );

  /// value122122
  static final SecurityRoleType value122122 = SecurityRoleType._(
    '122122',
  );

  /// value122123
  static final SecurityRoleType value122123 = SecurityRoleType._(
    '122123',
  );

  /// value122124
  static final SecurityRoleType value122124 = SecurityRoleType._(
    '122124',
  );

  /// value122125
  static final SecurityRoleType value122125 = SecurityRoleType._(
    '122125',
  );

  /// value122126
  static final SecurityRoleType value122126 = SecurityRoleType._(
    '122126',
  );

  /// value122127
  static final SecurityRoleType value122127 = SecurityRoleType._(
    '122127',
  );

  /// value122128
  static final SecurityRoleType value122128 = SecurityRoleType._(
    '122128',
  );

  /// value122129
  static final SecurityRoleType value122129 = SecurityRoleType._(
    '122129',
  );

  /// value122130
  static final SecurityRoleType value122130 = SecurityRoleType._(
    '122130',
  );

  /// value122131
  static final SecurityRoleType value122131 = SecurityRoleType._(
    '122131',
  );

  /// value122132
  static final SecurityRoleType value122132 = SecurityRoleType._(
    '122132',
  );

  /// value122133
  static final SecurityRoleType value122133 = SecurityRoleType._(
    '122133',
  );

  /// value122134
  static final SecurityRoleType value122134 = SecurityRoleType._(
    '122134',
  );

  /// value122138
  static final SecurityRoleType value122138 = SecurityRoleType._(
    '122138',
  );

  /// value122139
  static final SecurityRoleType value122139 = SecurityRoleType._(
    '122139',
  );

  /// value122140
  static final SecurityRoleType value122140 = SecurityRoleType._(
    '122140',
  );

  /// value122141
  static final SecurityRoleType value122141 = SecurityRoleType._(
    '122141',
  );

  /// value122142
  static final SecurityRoleType value122142 = SecurityRoleType._(
    '122142',
  );

  /// value122143
  static final SecurityRoleType value122143 = SecurityRoleType._(
    '122143',
  );

  /// value122144
  static final SecurityRoleType value122144 = SecurityRoleType._(
    '122144',
  );

  /// value122145
  static final SecurityRoleType value122145 = SecurityRoleType._(
    '122145',
  );

  /// value122146
  static final SecurityRoleType value122146 = SecurityRoleType._(
    '122146',
  );

  /// value122147
  static final SecurityRoleType value122147 = SecurityRoleType._(
    '122147',
  );

  /// value122148
  static final SecurityRoleType value122148 = SecurityRoleType._(
    '122148',
  );

  /// value122149
  static final SecurityRoleType value122149 = SecurityRoleType._(
    '122149',
  );

  /// value122150
  static final SecurityRoleType value122150 = SecurityRoleType._(
    '122150',
  );

  /// value122151
  static final SecurityRoleType value122151 = SecurityRoleType._(
    '122151',
  );

  /// value122152
  static final SecurityRoleType value122152 = SecurityRoleType._(
    '122152',
  );

  /// value122153
  static final SecurityRoleType value122153 = SecurityRoleType._(
    '122153',
  );

  /// value122154
  static final SecurityRoleType value122154 = SecurityRoleType._(
    '122154',
  );

  /// value122157
  static final SecurityRoleType value122157 = SecurityRoleType._(
    '122157',
  );

  /// value122158
  static final SecurityRoleType value122158 = SecurityRoleType._(
    '122158',
  );

  /// value122159
  static final SecurityRoleType value122159 = SecurityRoleType._(
    '122159',
  );

  /// value122160
  static final SecurityRoleType value122160 = SecurityRoleType._(
    '122160',
  );

  /// value122161
  static final SecurityRoleType value122161 = SecurityRoleType._(
    '122161',
  );

  /// value122162
  static final SecurityRoleType value122162 = SecurityRoleType._(
    '122162',
  );

  /// value122163
  static final SecurityRoleType value122163 = SecurityRoleType._(
    '122163',
  );

  /// value122164
  static final SecurityRoleType value122164 = SecurityRoleType._(
    '122164',
  );

  /// value122165
  static final SecurityRoleType value122165 = SecurityRoleType._(
    '122165',
  );

  /// value122166
  static final SecurityRoleType value122166 = SecurityRoleType._(
    '122166',
  );

  /// value122167
  static final SecurityRoleType value122167 = SecurityRoleType._(
    '122167',
  );

  /// value122170
  static final SecurityRoleType value122170 = SecurityRoleType._(
    '122170',
  );

  /// value122171
  static final SecurityRoleType value122171 = SecurityRoleType._(
    '122171',
  );

  /// value122172
  static final SecurityRoleType value122172 = SecurityRoleType._(
    '122172',
  );

  /// value122173
  static final SecurityRoleType value122173 = SecurityRoleType._(
    '122173',
  );

  /// value122175
  static final SecurityRoleType value122175 = SecurityRoleType._(
    '122175',
  );

  /// value122176
  static final SecurityRoleType value122176 = SecurityRoleType._(
    '122176',
  );

  /// value122177
  static final SecurityRoleType value122177 = SecurityRoleType._(
    '122177',
  );

  /// value122178
  static final SecurityRoleType value122178 = SecurityRoleType._(
    '122178',
  );

  /// value122179
  static final SecurityRoleType value122179 = SecurityRoleType._(
    '122179',
  );

  /// value122180
  static final SecurityRoleType value122180 = SecurityRoleType._(
    '122180',
  );

  /// value122181
  static final SecurityRoleType value122181 = SecurityRoleType._(
    '122181',
  );

  /// value122182
  static final SecurityRoleType value122182 = SecurityRoleType._(
    '122182',
  );

  /// value122183
  static final SecurityRoleType value122183 = SecurityRoleType._(
    '122183',
  );

  /// value122185
  static final SecurityRoleType value122185 = SecurityRoleType._(
    '122185',
  );

  /// value122187
  static final SecurityRoleType value122187 = SecurityRoleType._(
    '122187',
  );

  /// value122188
  static final SecurityRoleType value122188 = SecurityRoleType._(
    '122188',
  );

  /// value122189
  static final SecurityRoleType value122189 = SecurityRoleType._(
    '122189',
  );

  /// value122190
  static final SecurityRoleType value122190 = SecurityRoleType._(
    '122190',
  );

  /// value122191
  static final SecurityRoleType value122191 = SecurityRoleType._(
    '122191',
  );

  /// value122192
  static final SecurityRoleType value122192 = SecurityRoleType._(
    '122192',
  );

  /// value122193
  static final SecurityRoleType value122193 = SecurityRoleType._(
    '122193',
  );

  /// value122194
  static final SecurityRoleType value122194 = SecurityRoleType._(
    '122194',
  );

  /// value122195
  static final SecurityRoleType value122195 = SecurityRoleType._(
    '122195',
  );

  /// value122196
  static final SecurityRoleType value122196 = SecurityRoleType._(
    '122196',
  );

  /// value122197
  static final SecurityRoleType value122197 = SecurityRoleType._(
    '122197',
  );

  /// value122198
  static final SecurityRoleType value122198 = SecurityRoleType._(
    '122198',
  );

  /// value122199
  static final SecurityRoleType value122199 = SecurityRoleType._(
    '122199',
  );

  /// value122201
  static final SecurityRoleType value122201 = SecurityRoleType._(
    '122201',
  );

  /// value122202
  static final SecurityRoleType value122202 = SecurityRoleType._(
    '122202',
  );

  /// value122203
  static final SecurityRoleType value122203 = SecurityRoleType._(
    '122203',
  );

  /// value122204
  static final SecurityRoleType value122204 = SecurityRoleType._(
    '122204',
  );

  /// value122205
  static final SecurityRoleType value122205 = SecurityRoleType._(
    '122205',
  );

  /// value122206
  static final SecurityRoleType value122206 = SecurityRoleType._(
    '122206',
  );

  /// value122207
  static final SecurityRoleType value122207 = SecurityRoleType._(
    '122207',
  );

  /// value122208
  static final SecurityRoleType value122208 = SecurityRoleType._(
    '122208',
  );

  /// value122209
  static final SecurityRoleType value122209 = SecurityRoleType._(
    '122209',
  );

  /// value122210
  static final SecurityRoleType value122210 = SecurityRoleType._(
    '122210',
  );

  /// value122211
  static final SecurityRoleType value122211 = SecurityRoleType._(
    '122211',
  );

  /// value122212
  static final SecurityRoleType value122212 = SecurityRoleType._(
    '122212',
  );

  /// value122213
  static final SecurityRoleType value122213 = SecurityRoleType._(
    '122213',
  );

  /// value122214
  static final SecurityRoleType value122214 = SecurityRoleType._(
    '122214',
  );

  /// value122215
  static final SecurityRoleType value122215 = SecurityRoleType._(
    '122215',
  );

  /// value122216
  static final SecurityRoleType value122216 = SecurityRoleType._(
    '122216',
  );

  /// value122217
  static final SecurityRoleType value122217 = SecurityRoleType._(
    '122217',
  );

  /// value122218
  static final SecurityRoleType value122218 = SecurityRoleType._(
    '122218',
  );

  /// value122219
  static final SecurityRoleType value122219 = SecurityRoleType._(
    '122219',
  );

  /// value122220
  static final SecurityRoleType value122220 = SecurityRoleType._(
    '122220',
  );

  /// value122221
  static final SecurityRoleType value122221 = SecurityRoleType._(
    '122221',
  );

  /// value122222
  static final SecurityRoleType value122222 = SecurityRoleType._(
    '122222',
  );

  /// value122223
  static final SecurityRoleType value122223 = SecurityRoleType._(
    '122223',
  );

  /// value122224
  static final SecurityRoleType value122224 = SecurityRoleType._(
    '122224',
  );

  /// value122225
  static final SecurityRoleType value122225 = SecurityRoleType._(
    '122225',
  );

  /// value122227
  static final SecurityRoleType value122227 = SecurityRoleType._(
    '122227',
  );

  /// value122228
  static final SecurityRoleType value122228 = SecurityRoleType._(
    '122228',
  );

  /// value122229
  static final SecurityRoleType value122229 = SecurityRoleType._(
    '122229',
  );

  /// value122230
  static final SecurityRoleType value122230 = SecurityRoleType._(
    '122230',
  );

  /// value122231
  static final SecurityRoleType value122231 = SecurityRoleType._(
    '122231',
  );

  /// value122232
  static final SecurityRoleType value122232 = SecurityRoleType._(
    '122232',
  );

  /// value122233
  static final SecurityRoleType value122233 = SecurityRoleType._(
    '122233',
  );

  /// value122234
  static final SecurityRoleType value122234 = SecurityRoleType._(
    '122234',
  );

  /// value122235
  static final SecurityRoleType value122235 = SecurityRoleType._(
    '122235',
  );

  /// value122236
  static final SecurityRoleType value122236 = SecurityRoleType._(
    '122236',
  );

  /// value122237
  static final SecurityRoleType value122237 = SecurityRoleType._(
    '122237',
  );

  /// value122238
  static final SecurityRoleType value122238 = SecurityRoleType._(
    '122238',
  );

  /// value122239
  static final SecurityRoleType value122239 = SecurityRoleType._(
    '122239',
  );

  /// value122240
  static final SecurityRoleType value122240 = SecurityRoleType._(
    '122240',
  );

  /// value122241
  static final SecurityRoleType value122241 = SecurityRoleType._(
    '122241',
  );

  /// value122242
  static final SecurityRoleType value122242 = SecurityRoleType._(
    '122242',
  );

  /// value122243
  static final SecurityRoleType value122243 = SecurityRoleType._(
    '122243',
  );

  /// value122244
  static final SecurityRoleType value122244 = SecurityRoleType._(
    '122244',
  );

  /// value122245
  static final SecurityRoleType value122245 = SecurityRoleType._(
    '122245',
  );

  /// value122246
  static final SecurityRoleType value122246 = SecurityRoleType._(
    '122246',
  );

  /// value122247
  static final SecurityRoleType value122247 = SecurityRoleType._(
    '122247',
  );

  /// value122248
  static final SecurityRoleType value122248 = SecurityRoleType._(
    '122248',
  );

  /// value122249
  static final SecurityRoleType value122249 = SecurityRoleType._(
    '122249',
  );

  /// value122250
  static final SecurityRoleType value122250 = SecurityRoleType._(
    '122250',
  );

  /// value122251
  static final SecurityRoleType value122251 = SecurityRoleType._(
    '122251',
  );

  /// value122252
  static final SecurityRoleType value122252 = SecurityRoleType._(
    '122252',
  );

  /// value122253
  static final SecurityRoleType value122253 = SecurityRoleType._(
    '122253',
  );

  /// value122254
  static final SecurityRoleType value122254 = SecurityRoleType._(
    '122254',
  );

  /// value122255
  static final SecurityRoleType value122255 = SecurityRoleType._(
    '122255',
  );

  /// value122256
  static final SecurityRoleType value122256 = SecurityRoleType._(
    '122256',
  );

  /// value122257
  static final SecurityRoleType value122257 = SecurityRoleType._(
    '122257',
  );

  /// value122258
  static final SecurityRoleType value122258 = SecurityRoleType._(
    '122258',
  );

  /// value122259
  static final SecurityRoleType value122259 = SecurityRoleType._(
    '122259',
  );

  /// value122260
  static final SecurityRoleType value122260 = SecurityRoleType._(
    '122260',
  );

  /// value122261
  static final SecurityRoleType value122261 = SecurityRoleType._(
    '122261',
  );

  /// value122262
  static final SecurityRoleType value122262 = SecurityRoleType._(
    '122262',
  );

  /// value122263
  static final SecurityRoleType value122263 = SecurityRoleType._(
    '122263',
  );

  /// value122265
  static final SecurityRoleType value122265 = SecurityRoleType._(
    '122265',
  );

  /// value122266
  static final SecurityRoleType value122266 = SecurityRoleType._(
    '122266',
  );

  /// value122267
  static final SecurityRoleType value122267 = SecurityRoleType._(
    '122267',
  );

  /// value122268
  static final SecurityRoleType value122268 = SecurityRoleType._(
    '122268',
  );

  /// value122269
  static final SecurityRoleType value122269 = SecurityRoleType._(
    '122269',
  );

  /// value122270
  static final SecurityRoleType value122270 = SecurityRoleType._(
    '122270',
  );

  /// value122271
  static final SecurityRoleType value122271 = SecurityRoleType._(
    '122271',
  );

  /// value122272
  static final SecurityRoleType value122272 = SecurityRoleType._(
    '122272',
  );

  /// value122273
  static final SecurityRoleType value122273 = SecurityRoleType._(
    '122273',
  );

  /// value122274
  static final SecurityRoleType value122274 = SecurityRoleType._(
    '122274',
  );

  /// value122275
  static final SecurityRoleType value122275 = SecurityRoleType._(
    '122275',
  );

  /// value122276
  static final SecurityRoleType value122276 = SecurityRoleType._(
    '122276',
  );

  /// value122277
  static final SecurityRoleType value122277 = SecurityRoleType._(
    '122277',
  );

  /// value122278
  static final SecurityRoleType value122278 = SecurityRoleType._(
    '122278',
  );

  /// value122279
  static final SecurityRoleType value122279 = SecurityRoleType._(
    '122279',
  );

  /// value122281
  static final SecurityRoleType value122281 = SecurityRoleType._(
    '122281',
  );

  /// value122282
  static final SecurityRoleType value122282 = SecurityRoleType._(
    '122282',
  );

  /// value122283
  static final SecurityRoleType value122283 = SecurityRoleType._(
    '122283',
  );

  /// value122288
  static final SecurityRoleType value122288 = SecurityRoleType._(
    '122288',
  );

  /// value122291
  static final SecurityRoleType value122291 = SecurityRoleType._(
    '122291',
  );

  /// value122292
  static final SecurityRoleType value122292 = SecurityRoleType._(
    '122292',
  );

  /// value122301
  static final SecurityRoleType value122301 = SecurityRoleType._(
    '122301',
  );

  /// value122302
  static final SecurityRoleType value122302 = SecurityRoleType._(
    '122302',
  );

  /// value122303
  static final SecurityRoleType value122303 = SecurityRoleType._(
    '122303',
  );

  /// value122304
  static final SecurityRoleType value122304 = SecurityRoleType._(
    '122304',
  );

  /// value122305
  static final SecurityRoleType value122305 = SecurityRoleType._(
    '122305',
  );

  /// value122306
  static final SecurityRoleType value122306 = SecurityRoleType._(
    '122306',
  );

  /// value122307
  static final SecurityRoleType value122307 = SecurityRoleType._(
    '122307',
  );

  /// value122308
  static final SecurityRoleType value122308 = SecurityRoleType._(
    '122308',
  );

  /// value122309
  static final SecurityRoleType value122309 = SecurityRoleType._(
    '122309',
  );

  /// value122310
  static final SecurityRoleType value122310 = SecurityRoleType._(
    '122310',
  );

  /// value122311
  static final SecurityRoleType value122311 = SecurityRoleType._(
    '122311',
  );

  /// value122312
  static final SecurityRoleType value122312 = SecurityRoleType._(
    '122312',
  );

  /// value122313
  static final SecurityRoleType value122313 = SecurityRoleType._(
    '122313',
  );

  /// value122319
  static final SecurityRoleType value122319 = SecurityRoleType._(
    '122319',
  );

  /// value122320
  static final SecurityRoleType value122320 = SecurityRoleType._(
    '122320',
  );

  /// value122321
  static final SecurityRoleType value122321 = SecurityRoleType._(
    '122321',
  );

  /// value122322
  static final SecurityRoleType value122322 = SecurityRoleType._(
    '122322',
  );

  /// value122325
  static final SecurityRoleType value122325 = SecurityRoleType._(
    '122325',
  );

  /// value122330
  static final SecurityRoleType value122330 = SecurityRoleType._(
    '122330',
  );

  /// value122331
  static final SecurityRoleType value122331 = SecurityRoleType._(
    '122331',
  );

  /// value122332
  static final SecurityRoleType value122332 = SecurityRoleType._(
    '122332',
  );

  /// value122333
  static final SecurityRoleType value122333 = SecurityRoleType._(
    '122333',
  );

  /// value122334
  static final SecurityRoleType value122334 = SecurityRoleType._(
    '122334',
  );

  /// value122335
  static final SecurityRoleType value122335 = SecurityRoleType._(
    '122335',
  );

  /// value122336
  static final SecurityRoleType value122336 = SecurityRoleType._(
    '122336',
  );

  /// value122337
  static final SecurityRoleType value122337 = SecurityRoleType._(
    '122337',
  );

  /// value122339
  static final SecurityRoleType value122339 = SecurityRoleType._(
    '122339',
  );

  /// value122340
  static final SecurityRoleType value122340 = SecurityRoleType._(
    '122340',
  );

  /// value122341
  static final SecurityRoleType value122341 = SecurityRoleType._(
    '122341',
  );

  /// value122343
  static final SecurityRoleType value122343 = SecurityRoleType._(
    '122343',
  );

  /// value122344
  static final SecurityRoleType value122344 = SecurityRoleType._(
    '122344',
  );

  /// value122345
  static final SecurityRoleType value122345 = SecurityRoleType._(
    '122345',
  );

  /// value122346
  static final SecurityRoleType value122346 = SecurityRoleType._(
    '122346',
  );

  /// value122347
  static final SecurityRoleType value122347 = SecurityRoleType._(
    '122347',
  );

  /// value122348
  static final SecurityRoleType value122348 = SecurityRoleType._(
    '122348',
  );

  /// value122350
  static final SecurityRoleType value122350 = SecurityRoleType._(
    '122350',
  );

  /// value122351
  static final SecurityRoleType value122351 = SecurityRoleType._(
    '122351',
  );

  /// value122352
  static final SecurityRoleType value122352 = SecurityRoleType._(
    '122352',
  );

  /// value122354
  static final SecurityRoleType value122354 = SecurityRoleType._(
    '122354',
  );

  /// value122355
  static final SecurityRoleType value122355 = SecurityRoleType._(
    '122355',
  );

  /// value122356
  static final SecurityRoleType value122356 = SecurityRoleType._(
    '122356',
  );

  /// value122357
  static final SecurityRoleType value122357 = SecurityRoleType._(
    '122357',
  );

  /// value122360
  static final SecurityRoleType value122360 = SecurityRoleType._(
    '122360',
  );

  /// value122361
  static final SecurityRoleType value122361 = SecurityRoleType._(
    '122361',
  );

  /// value122363
  static final SecurityRoleType value122363 = SecurityRoleType._(
    '122363',
  );

  /// value122364
  static final SecurityRoleType value122364 = SecurityRoleType._(
    '122364',
  );

  /// value122367
  static final SecurityRoleType value122367 = SecurityRoleType._(
    '122367',
  );

  /// value122368
  static final SecurityRoleType value122368 = SecurityRoleType._(
    '122368',
  );

  /// value122369
  static final SecurityRoleType value122369 = SecurityRoleType._(
    '122369',
  );

  /// value122370
  static final SecurityRoleType value122370 = SecurityRoleType._(
    '122370',
  );

  /// value122371
  static final SecurityRoleType value122371 = SecurityRoleType._(
    '122371',
  );

  /// value122372
  static final SecurityRoleType value122372 = SecurityRoleType._(
    '122372',
  );

  /// value122374
  static final SecurityRoleType value122374 = SecurityRoleType._(
    '122374',
  );

  /// value122375
  static final SecurityRoleType value122375 = SecurityRoleType._(
    '122375',
  );

  /// value122376
  static final SecurityRoleType value122376 = SecurityRoleType._(
    '122376',
  );

  /// value122380
  static final SecurityRoleType value122380 = SecurityRoleType._(
    '122380',
  );

  /// value122381
  static final SecurityRoleType value122381 = SecurityRoleType._(
    '122381',
  );

  /// value122382
  static final SecurityRoleType value122382 = SecurityRoleType._(
    '122382',
  );

  /// value122383
  static final SecurityRoleType value122383 = SecurityRoleType._(
    '122383',
  );

  /// value122384
  static final SecurityRoleType value122384 = SecurityRoleType._(
    '122384',
  );

  /// value122385
  static final SecurityRoleType value122385 = SecurityRoleType._(
    '122385',
  );

  /// value122386
  static final SecurityRoleType value122386 = SecurityRoleType._(
    '122386',
  );

  /// value122387
  static final SecurityRoleType value122387 = SecurityRoleType._(
    '122387',
  );

  /// value122388
  static final SecurityRoleType value122388 = SecurityRoleType._(
    '122388',
  );

  /// value122389
  static final SecurityRoleType value122389 = SecurityRoleType._(
    '122389',
  );

  /// value122390
  static final SecurityRoleType value122390 = SecurityRoleType._(
    '122390',
  );

  /// value122391
  static final SecurityRoleType value122391 = SecurityRoleType._(
    '122391',
  );

  /// value122393
  static final SecurityRoleType value122393 = SecurityRoleType._(
    '122393',
  );

  /// value122394
  static final SecurityRoleType value122394 = SecurityRoleType._(
    '122394',
  );

  /// value122395
  static final SecurityRoleType value122395 = SecurityRoleType._(
    '122395',
  );

  /// value122398
  static final SecurityRoleType value122398 = SecurityRoleType._(
    '122398',
  );

  /// value122399
  static final SecurityRoleType value122399 = SecurityRoleType._(
    '122399',
  );

  /// value122400
  static final SecurityRoleType value122400 = SecurityRoleType._(
    '122400',
  );

  /// value122401
  static final SecurityRoleType value122401 = SecurityRoleType._(
    '122401',
  );

  /// value122402
  static final SecurityRoleType value122402 = SecurityRoleType._(
    '122402',
  );

  /// value122403
  static final SecurityRoleType value122403 = SecurityRoleType._(
    '122403',
  );

  /// value122404
  static final SecurityRoleType value122404 = SecurityRoleType._(
    '122404',
  );

  /// value122405
  static final SecurityRoleType value122405 = SecurityRoleType._(
    '122405',
  );

  /// value122406
  static final SecurityRoleType value122406 = SecurityRoleType._(
    '122406',
  );

  /// value122407
  static final SecurityRoleType value122407 = SecurityRoleType._(
    '122407',
  );

  /// value122408
  static final SecurityRoleType value122408 = SecurityRoleType._(
    '122408',
  );

  /// value122410
  static final SecurityRoleType value122410 = SecurityRoleType._(
    '122410',
  );

  /// value122411
  static final SecurityRoleType value122411 = SecurityRoleType._(
    '122411',
  );

  /// value122417
  static final SecurityRoleType value122417 = SecurityRoleType._(
    '122417',
  );

  /// value122421
  static final SecurityRoleType value122421 = SecurityRoleType._(
    '122421',
  );

  /// value122422
  static final SecurityRoleType value122422 = SecurityRoleType._(
    '122422',
  );

  /// value122423
  static final SecurityRoleType value122423 = SecurityRoleType._(
    '122423',
  );

  /// value122428
  static final SecurityRoleType value122428 = SecurityRoleType._(
    '122428',
  );

  /// value122429
  static final SecurityRoleType value122429 = SecurityRoleType._(
    '122429',
  );

  /// value122430
  static final SecurityRoleType value122430 = SecurityRoleType._(
    '122430',
  );

  /// value122431
  static final SecurityRoleType value122431 = SecurityRoleType._(
    '122431',
  );

  /// value122432
  static final SecurityRoleType value122432 = SecurityRoleType._(
    '122432',
  );

  /// value122433
  static final SecurityRoleType value122433 = SecurityRoleType._(
    '122433',
  );

  /// value122434
  static final SecurityRoleType value122434 = SecurityRoleType._(
    '122434',
  );

  /// value122435
  static final SecurityRoleType value122435 = SecurityRoleType._(
    '122435',
  );

  /// value122438
  static final SecurityRoleType value122438 = SecurityRoleType._(
    '122438',
  );

  /// value122445
  static final SecurityRoleType value122445 = SecurityRoleType._(
    '122445',
  );

  /// value122446
  static final SecurityRoleType value122446 = SecurityRoleType._(
    '122446',
  );

  /// value122447
  static final SecurityRoleType value122447 = SecurityRoleType._(
    '122447',
  );

  /// value122448
  static final SecurityRoleType value122448 = SecurityRoleType._(
    '122448',
  );

  /// value122449
  static final SecurityRoleType value122449 = SecurityRoleType._(
    '122449',
  );

  /// value122450
  static final SecurityRoleType value122450 = SecurityRoleType._(
    '122450',
  );

  /// value122451
  static final SecurityRoleType value122451 = SecurityRoleType._(
    '122451',
  );

  /// value122452
  static final SecurityRoleType value122452 = SecurityRoleType._(
    '122452',
  );

  /// value122453
  static final SecurityRoleType value122453 = SecurityRoleType._(
    '122453',
  );

  /// value122459
  static final SecurityRoleType value122459 = SecurityRoleType._(
    '122459',
  );

  /// value122461
  static final SecurityRoleType value122461 = SecurityRoleType._(
    '122461',
  );

  /// value122464
  static final SecurityRoleType value122464 = SecurityRoleType._(
    '122464',
  );

  /// value122465
  static final SecurityRoleType value122465 = SecurityRoleType._(
    '122465',
  );

  /// value122466
  static final SecurityRoleType value122466 = SecurityRoleType._(
    '122466',
  );

  /// value122467
  static final SecurityRoleType value122467 = SecurityRoleType._(
    '122467',
  );

  /// value122468
  static final SecurityRoleType value122468 = SecurityRoleType._(
    '122468',
  );

  /// value122469
  static final SecurityRoleType value122469 = SecurityRoleType._(
    '122469',
  );

  /// value122470
  static final SecurityRoleType value122470 = SecurityRoleType._(
    '122470',
  );

  /// value122471
  static final SecurityRoleType value122471 = SecurityRoleType._(
    '122471',
  );

  /// value122472
  static final SecurityRoleType value122472 = SecurityRoleType._(
    '122472',
  );

  /// value122473
  static final SecurityRoleType value122473 = SecurityRoleType._(
    '122473',
  );

  /// value122474
  static final SecurityRoleType value122474 = SecurityRoleType._(
    '122474',
  );

  /// value122475
  static final SecurityRoleType value122475 = SecurityRoleType._(
    '122475',
  );

  /// value122476
  static final SecurityRoleType value122476 = SecurityRoleType._(
    '122476',
  );

  /// value122477
  static final SecurityRoleType value122477 = SecurityRoleType._(
    '122477',
  );

  /// value122480
  static final SecurityRoleType value122480 = SecurityRoleType._(
    '122480',
  );

  /// value122481
  static final SecurityRoleType value122481 = SecurityRoleType._(
    '122481',
  );

  /// value122482
  static final SecurityRoleType value122482 = SecurityRoleType._(
    '122482',
  );

  /// value122485
  static final SecurityRoleType value122485 = SecurityRoleType._(
    '122485',
  );

  /// value122486
  static final SecurityRoleType value122486 = SecurityRoleType._(
    '122486',
  );

  /// value122487
  static final SecurityRoleType value122487 = SecurityRoleType._(
    '122487',
  );

  /// value122488
  static final SecurityRoleType value122488 = SecurityRoleType._(
    '122488',
  );

  /// value122489
  static final SecurityRoleType value122489 = SecurityRoleType._(
    '122489',
  );

  /// value122490
  static final SecurityRoleType value122490 = SecurityRoleType._(
    '122490',
  );

  /// value122491
  static final SecurityRoleType value122491 = SecurityRoleType._(
    '122491',
  );

  /// value122493
  static final SecurityRoleType value122493 = SecurityRoleType._(
    '122493',
  );

  /// value122495
  static final SecurityRoleType value122495 = SecurityRoleType._(
    '122495',
  );

  /// value122496
  static final SecurityRoleType value122496 = SecurityRoleType._(
    '122496',
  );

  /// value122497
  static final SecurityRoleType value122497 = SecurityRoleType._(
    '122497',
  );

  /// value122498
  static final SecurityRoleType value122498 = SecurityRoleType._(
    '122498',
  );

  /// value122499
  static final SecurityRoleType value122499 = SecurityRoleType._(
    '122499',
  );

  /// value122501
  static final SecurityRoleType value122501 = SecurityRoleType._(
    '122501',
  );

  /// value122502
  static final SecurityRoleType value122502 = SecurityRoleType._(
    '122502',
  );

  /// value122503
  static final SecurityRoleType value122503 = SecurityRoleType._(
    '122503',
  );

  /// value122505
  static final SecurityRoleType value122505 = SecurityRoleType._(
    '122505',
  );

  /// value122507
  static final SecurityRoleType value122507 = SecurityRoleType._(
    '122507',
  );

  /// value122508
  static final SecurityRoleType value122508 = SecurityRoleType._(
    '122508',
  );

  /// value122509
  static final SecurityRoleType value122509 = SecurityRoleType._(
    '122509',
  );

  /// value122510
  static final SecurityRoleType value122510 = SecurityRoleType._(
    '122510',
  );

  /// value122511
  static final SecurityRoleType value122511 = SecurityRoleType._(
    '122511',
  );

  /// value122516
  static final SecurityRoleType value122516 = SecurityRoleType._(
    '122516',
  );

  /// value122517
  static final SecurityRoleType value122517 = SecurityRoleType._(
    '122517',
  );

  /// value122528
  static final SecurityRoleType value122528 = SecurityRoleType._(
    '122528',
  );

  /// value122529
  static final SecurityRoleType value122529 = SecurityRoleType._(
    '122529',
  );

  /// value122542
  static final SecurityRoleType value122542 = SecurityRoleType._(
    '122542',
  );

  /// value122544
  static final SecurityRoleType value122544 = SecurityRoleType._(
    '122544',
  );

  /// value122545
  static final SecurityRoleType value122545 = SecurityRoleType._(
    '122545',
  );

  /// value122546
  static final SecurityRoleType value122546 = SecurityRoleType._(
    '122546',
  );

  /// value122547
  static final SecurityRoleType value122547 = SecurityRoleType._(
    '122547',
  );

  /// value122548
  static final SecurityRoleType value122548 = SecurityRoleType._(
    '122548',
  );

  /// value122549
  static final SecurityRoleType value122549 = SecurityRoleType._(
    '122549',
  );

  /// value122550
  static final SecurityRoleType value122550 = SecurityRoleType._(
    '122550',
  );

  /// value122551
  static final SecurityRoleType value122551 = SecurityRoleType._(
    '122551',
  );

  /// value122554
  static final SecurityRoleType value122554 = SecurityRoleType._(
    '122554',
  );

  /// value122555
  static final SecurityRoleType value122555 = SecurityRoleType._(
    '122555',
  );

  /// value122558
  static final SecurityRoleType value122558 = SecurityRoleType._(
    '122558',
  );

  /// value122559
  static final SecurityRoleType value122559 = SecurityRoleType._(
    '122559',
  );

  /// value122560
  static final SecurityRoleType value122560 = SecurityRoleType._(
    '122560',
  );

  /// value122562
  static final SecurityRoleType value122562 = SecurityRoleType._(
    '122562',
  );

  /// value122563
  static final SecurityRoleType value122563 = SecurityRoleType._(
    '122563',
  );

  /// value122564
  static final SecurityRoleType value122564 = SecurityRoleType._(
    '122564',
  );

  /// value122565
  static final SecurityRoleType value122565 = SecurityRoleType._(
    '122565',
  );

  /// value122566
  static final SecurityRoleType value122566 = SecurityRoleType._(
    '122566',
  );

  /// value122572
  static final SecurityRoleType value122572 = SecurityRoleType._(
    '122572',
  );

  /// value122574
  static final SecurityRoleType value122574 = SecurityRoleType._(
    '122574',
  );

  /// value122575
  static final SecurityRoleType value122575 = SecurityRoleType._(
    '122575',
  );

  /// value122582
  static final SecurityRoleType value122582 = SecurityRoleType._(
    '122582',
  );

  /// value122600
  static final SecurityRoleType value122600 = SecurityRoleType._(
    '122600',
  );

  /// value122601
  static final SecurityRoleType value122601 = SecurityRoleType._(
    '122601',
  );

  /// value122602
  static final SecurityRoleType value122602 = SecurityRoleType._(
    '122602',
  );

  /// value122603
  static final SecurityRoleType value122603 = SecurityRoleType._(
    '122603',
  );

  /// value122604
  static final SecurityRoleType value122604 = SecurityRoleType._(
    '122604',
  );

  /// value122605
  static final SecurityRoleType value122605 = SecurityRoleType._(
    '122605',
  );

  /// value122606
  static final SecurityRoleType value122606 = SecurityRoleType._(
    '122606',
  );

  /// value122607
  static final SecurityRoleType value122607 = SecurityRoleType._(
    '122607',
  );

  /// value122608
  static final SecurityRoleType value122608 = SecurityRoleType._(
    '122608',
  );

  /// value122609
  static final SecurityRoleType value122609 = SecurityRoleType._(
    '122609',
  );

  /// value122611
  static final SecurityRoleType value122611 = SecurityRoleType._(
    '122611',
  );

  /// value122612
  static final SecurityRoleType value122612 = SecurityRoleType._(
    '122612',
  );

  /// value122616
  static final SecurityRoleType value122616 = SecurityRoleType._(
    '122616',
  );

  /// value122617
  static final SecurityRoleType value122617 = SecurityRoleType._(
    '122617',
  );

  /// value122618
  static final SecurityRoleType value122618 = SecurityRoleType._(
    '122618',
  );

  /// value122619
  static final SecurityRoleType value122619 = SecurityRoleType._(
    '122619',
  );

  /// value122620
  static final SecurityRoleType value122620 = SecurityRoleType._(
    '122620',
  );

  /// value122621
  static final SecurityRoleType value122621 = SecurityRoleType._(
    '122621',
  );

  /// value122624
  static final SecurityRoleType value122624 = SecurityRoleType._(
    '122624',
  );

  /// value122627
  static final SecurityRoleType value122627 = SecurityRoleType._(
    '122627',
  );

  /// value122628
  static final SecurityRoleType value122628 = SecurityRoleType._(
    '122628',
  );

  /// value122631
  static final SecurityRoleType value122631 = SecurityRoleType._(
    '122631',
  );

  /// value122633
  static final SecurityRoleType value122633 = SecurityRoleType._(
    '122633',
  );

  /// value122634
  static final SecurityRoleType value122634 = SecurityRoleType._(
    '122634',
  );

  /// value122635
  static final SecurityRoleType value122635 = SecurityRoleType._(
    '122635',
  );

  /// value122636
  static final SecurityRoleType value122636 = SecurityRoleType._(
    '122636',
  );

  /// value122637
  static final SecurityRoleType value122637 = SecurityRoleType._(
    '122637',
  );

  /// value122638
  static final SecurityRoleType value122638 = SecurityRoleType._(
    '122638',
  );

  /// value122639
  static final SecurityRoleType value122639 = SecurityRoleType._(
    '122639',
  );

  /// value122640
  static final SecurityRoleType value122640 = SecurityRoleType._(
    '122640',
  );

  /// value122642
  static final SecurityRoleType value122642 = SecurityRoleType._(
    '122642',
  );

  /// value122643
  static final SecurityRoleType value122643 = SecurityRoleType._(
    '122643',
  );

  /// value122645
  static final SecurityRoleType value122645 = SecurityRoleType._(
    '122645',
  );

  /// value122650
  static final SecurityRoleType value122650 = SecurityRoleType._(
    '122650',
  );

  /// value122651
  static final SecurityRoleType value122651 = SecurityRoleType._(
    '122651',
  );

  /// value122652
  static final SecurityRoleType value122652 = SecurityRoleType._(
    '122652',
  );

  /// value122655
  static final SecurityRoleType value122655 = SecurityRoleType._(
    '122655',
  );

  /// value122656
  static final SecurityRoleType value122656 = SecurityRoleType._(
    '122656',
  );

  /// value122657
  static final SecurityRoleType value122657 = SecurityRoleType._(
    '122657',
  );

  /// value122658
  static final SecurityRoleType value122658 = SecurityRoleType._(
    '122658',
  );

  /// value122659
  static final SecurityRoleType value122659 = SecurityRoleType._(
    '122659',
  );

  /// value122660
  static final SecurityRoleType value122660 = SecurityRoleType._(
    '122660',
  );

  /// value122661
  static final SecurityRoleType value122661 = SecurityRoleType._(
    '122661',
  );

  /// value122664
  static final SecurityRoleType value122664 = SecurityRoleType._(
    '122664',
  );

  /// value122665
  static final SecurityRoleType value122665 = SecurityRoleType._(
    '122665',
  );

  /// value122666
  static final SecurityRoleType value122666 = SecurityRoleType._(
    '122666',
  );

  /// value122667
  static final SecurityRoleType value122667 = SecurityRoleType._(
    '122667',
  );

  /// value122668
  static final SecurityRoleType value122668 = SecurityRoleType._(
    '122668',
  );

  /// value122670
  static final SecurityRoleType value122670 = SecurityRoleType._(
    '122670',
  );

  /// value122675
  static final SecurityRoleType value122675 = SecurityRoleType._(
    '122675',
  );

  /// value122680
  static final SecurityRoleType value122680 = SecurityRoleType._(
    '122680',
  );

  /// value122683
  static final SecurityRoleType value122683 = SecurityRoleType._(
    '122683',
  );

  /// value122684
  static final SecurityRoleType value122684 = SecurityRoleType._(
    '122684',
  );

  /// value122685
  static final SecurityRoleType value122685 = SecurityRoleType._(
    '122685',
  );

  /// value122686
  static final SecurityRoleType value122686 = SecurityRoleType._(
    '122686',
  );

  /// value122687
  static final SecurityRoleType value122687 = SecurityRoleType._(
    '122687',
  );

  /// value122698
  static final SecurityRoleType value122698 = SecurityRoleType._(
    '122698',
  );

  /// value122699
  static final SecurityRoleType value122699 = SecurityRoleType._(
    '122699',
  );

  /// value122700
  static final SecurityRoleType value122700 = SecurityRoleType._(
    '122700',
  );

  /// value122701
  static final SecurityRoleType value122701 = SecurityRoleType._(
    '122701',
  );

  /// value122702
  static final SecurityRoleType value122702 = SecurityRoleType._(
    '122702',
  );

  /// value122703
  static final SecurityRoleType value122703 = SecurityRoleType._(
    '122703',
  );

  /// value122704
  static final SecurityRoleType value122704 = SecurityRoleType._(
    '122704',
  );

  /// value122705
  static final SecurityRoleType value122705 = SecurityRoleType._(
    '122705',
  );

  /// value122706
  static final SecurityRoleType value122706 = SecurityRoleType._(
    '122706',
  );

  /// value122707
  static final SecurityRoleType value122707 = SecurityRoleType._(
    '122707',
  );

  /// value122708
  static final SecurityRoleType value122708 = SecurityRoleType._(
    '122708',
  );

  /// value122709
  static final SecurityRoleType value122709 = SecurityRoleType._(
    '122709',
  );

  /// value122710
  static final SecurityRoleType value122710 = SecurityRoleType._(
    '122710',
  );

  /// value122711
  static final SecurityRoleType value122711 = SecurityRoleType._(
    '122711',
  );

  /// value122712
  static final SecurityRoleType value122712 = SecurityRoleType._(
    '122712',
  );

  /// value122713
  static final SecurityRoleType value122713 = SecurityRoleType._(
    '122713',
  );

  /// value122715
  static final SecurityRoleType value122715 = SecurityRoleType._(
    '122715',
  );

  /// value122716
  static final SecurityRoleType value122716 = SecurityRoleType._(
    '122716',
  );

  /// value122717
  static final SecurityRoleType value122717 = SecurityRoleType._(
    '122717',
  );

  /// value122718
  static final SecurityRoleType value122718 = SecurityRoleType._(
    '122718',
  );

  /// value122720
  static final SecurityRoleType value122720 = SecurityRoleType._(
    '122720',
  );

  /// value122721
  static final SecurityRoleType value122721 = SecurityRoleType._(
    '122721',
  );

  /// value122726
  static final SecurityRoleType value122726 = SecurityRoleType._(
    '122726',
  );

  /// value122727
  static final SecurityRoleType value122727 = SecurityRoleType._(
    '122727',
  );

  /// value122728
  static final SecurityRoleType value122728 = SecurityRoleType._(
    '122728',
  );

  /// value122729
  static final SecurityRoleType value122729 = SecurityRoleType._(
    '122729',
  );

  /// value122730
  static final SecurityRoleType value122730 = SecurityRoleType._(
    '122730',
  );

  /// value122731
  static final SecurityRoleType value122731 = SecurityRoleType._(
    '122731',
  );

  /// value122732
  static final SecurityRoleType value122732 = SecurityRoleType._(
    '122732',
  );

  /// value122733
  static final SecurityRoleType value122733 = SecurityRoleType._(
    '122733',
  );

  /// value122734
  static final SecurityRoleType value122734 = SecurityRoleType._(
    '122734',
  );

  /// value122735
  static final SecurityRoleType value122735 = SecurityRoleType._(
    '122735',
  );

  /// value122739
  static final SecurityRoleType value122739 = SecurityRoleType._(
    '122739',
  );

  /// value122740
  static final SecurityRoleType value122740 = SecurityRoleType._(
    '122740',
  );

  /// value122741
  static final SecurityRoleType value122741 = SecurityRoleType._(
    '122741',
  );

  /// value122742
  static final SecurityRoleType value122742 = SecurityRoleType._(
    '122742',
  );

  /// value122743
  static final SecurityRoleType value122743 = SecurityRoleType._(
    '122743',
  );

  /// value122744
  static final SecurityRoleType value122744 = SecurityRoleType._(
    '122744',
  );

  /// value122745
  static final SecurityRoleType value122745 = SecurityRoleType._(
    '122745',
  );

  /// value122748
  static final SecurityRoleType value122748 = SecurityRoleType._(
    '122748',
  );

  /// value122750
  static final SecurityRoleType value122750 = SecurityRoleType._(
    '122750',
  );

  /// value122751
  static final SecurityRoleType value122751 = SecurityRoleType._(
    '122751',
  );

  /// value122752
  static final SecurityRoleType value122752 = SecurityRoleType._(
    '122752',
  );

  /// value122753
  static final SecurityRoleType value122753 = SecurityRoleType._(
    '122753',
  );

  /// value122755
  static final SecurityRoleType value122755 = SecurityRoleType._(
    '122755',
  );

  /// value122756
  static final SecurityRoleType value122756 = SecurityRoleType._(
    '122756',
  );

  /// value122757
  static final SecurityRoleType value122757 = SecurityRoleType._(
    '122757',
  );

  /// value122758
  static final SecurityRoleType value122758 = SecurityRoleType._(
    '122758',
  );

  /// value122759
  static final SecurityRoleType value122759 = SecurityRoleType._(
    '122759',
  );

  /// value122760
  static final SecurityRoleType value122760 = SecurityRoleType._(
    '122760',
  );

  /// value122762
  static final SecurityRoleType value122762 = SecurityRoleType._(
    '122762',
  );

  /// value122764
  static final SecurityRoleType value122764 = SecurityRoleType._(
    '122764',
  );

  /// value122768
  static final SecurityRoleType value122768 = SecurityRoleType._(
    '122768',
  );

  /// value122769
  static final SecurityRoleType value122769 = SecurityRoleType._(
    '122769',
  );

  /// value122770
  static final SecurityRoleType value122770 = SecurityRoleType._(
    '122770',
  );

  /// value122771
  static final SecurityRoleType value122771 = SecurityRoleType._(
    '122771',
  );

  /// value122772
  static final SecurityRoleType value122772 = SecurityRoleType._(
    '122772',
  );

  /// value122773
  static final SecurityRoleType value122773 = SecurityRoleType._(
    '122773',
  );

  /// value122775
  static final SecurityRoleType value122775 = SecurityRoleType._(
    '122775',
  );

  /// value122776
  static final SecurityRoleType value122776 = SecurityRoleType._(
    '122776',
  );

  /// value122781
  static final SecurityRoleType value122781 = SecurityRoleType._(
    '122781',
  );

  /// value122782
  static final SecurityRoleType value122782 = SecurityRoleType._(
    '122782',
  );

  /// value122783
  static final SecurityRoleType value122783 = SecurityRoleType._(
    '122783',
  );

  /// value122784
  static final SecurityRoleType value122784 = SecurityRoleType._(
    '122784',
  );

  /// value122785
  static final SecurityRoleType value122785 = SecurityRoleType._(
    '122785',
  );

  /// value122791
  static final SecurityRoleType value122791 = SecurityRoleType._(
    '122791',
  );

  /// value122792
  static final SecurityRoleType value122792 = SecurityRoleType._(
    '122792',
  );

  /// value122793
  static final SecurityRoleType value122793 = SecurityRoleType._(
    '122793',
  );

  /// value122795
  static final SecurityRoleType value122795 = SecurityRoleType._(
    '122795',
  );

  /// value122796
  static final SecurityRoleType value122796 = SecurityRoleType._(
    '122796',
  );

  /// value122797
  static final SecurityRoleType value122797 = SecurityRoleType._(
    '122797',
  );

  /// value122799
  static final SecurityRoleType value122799 = SecurityRoleType._(
    '122799',
  );

  /// value123001
  static final SecurityRoleType value123001 = SecurityRoleType._(
    '123001',
  );

  /// value123003
  static final SecurityRoleType value123003 = SecurityRoleType._(
    '123003',
  );

  /// value123004
  static final SecurityRoleType value123004 = SecurityRoleType._(
    '123004',
  );

  /// value123005
  static final SecurityRoleType value123005 = SecurityRoleType._(
    '123005',
  );

  /// value123006
  static final SecurityRoleType value123006 = SecurityRoleType._(
    '123006',
  );

  /// value123007
  static final SecurityRoleType value123007 = SecurityRoleType._(
    '123007',
  );

  /// value123009
  static final SecurityRoleType value123009 = SecurityRoleType._(
    '123009',
  );

  /// value123010
  static final SecurityRoleType value123010 = SecurityRoleType._(
    '123010',
  );

  /// value123011
  static final SecurityRoleType value123011 = SecurityRoleType._(
    '123011',
  );

  /// value123012
  static final SecurityRoleType value123012 = SecurityRoleType._(
    '123012',
  );

  /// value123014
  static final SecurityRoleType value123014 = SecurityRoleType._(
    '123014',
  );

  /// value123015
  static final SecurityRoleType value123015 = SecurityRoleType._(
    '123015',
  );

  /// value123016
  static final SecurityRoleType value123016 = SecurityRoleType._(
    '123016',
  );

  /// value123019
  static final SecurityRoleType value123019 = SecurityRoleType._(
    '123019',
  );

  /// value123101
  static final SecurityRoleType value123101 = SecurityRoleType._(
    '123101',
  );

  /// value123102
  static final SecurityRoleType value123102 = SecurityRoleType._(
    '123102',
  );

  /// value123103
  static final SecurityRoleType value123103 = SecurityRoleType._(
    '123103',
  );

  /// value123104
  static final SecurityRoleType value123104 = SecurityRoleType._(
    '123104',
  );

  /// value123105
  static final SecurityRoleType value123105 = SecurityRoleType._(
    '123105',
  );

  /// value123106
  static final SecurityRoleType value123106 = SecurityRoleType._(
    '123106',
  );

  /// value123107
  static final SecurityRoleType value123107 = SecurityRoleType._(
    '123107',
  );

  /// value123108
  static final SecurityRoleType value123108 = SecurityRoleType._(
    '123108',
  );

  /// value123109
  static final SecurityRoleType value123109 = SecurityRoleType._(
    '123109',
  );

  /// value123110
  static final SecurityRoleType value123110 = SecurityRoleType._(
    '123110',
  );

  /// value123111
  static final SecurityRoleType value123111 = SecurityRoleType._(
    '123111',
  );

  /// value125000
  static final SecurityRoleType value125000 = SecurityRoleType._(
    '125000',
  );

  /// value125001
  static final SecurityRoleType value125001 = SecurityRoleType._(
    '125001',
  );

  /// value125002
  static final SecurityRoleType value125002 = SecurityRoleType._(
    '125002',
  );

  /// value125003
  static final SecurityRoleType value125003 = SecurityRoleType._(
    '125003',
  );

  /// value125004
  static final SecurityRoleType value125004 = SecurityRoleType._(
    '125004',
  );

  /// value125005
  static final SecurityRoleType value125005 = SecurityRoleType._(
    '125005',
  );

  /// value125006
  static final SecurityRoleType value125006 = SecurityRoleType._(
    '125006',
  );

  /// value125007
  static final SecurityRoleType value125007 = SecurityRoleType._(
    '125007',
  );

  /// value125008
  static final SecurityRoleType value125008 = SecurityRoleType._(
    '125008',
  );

  /// value125009
  static final SecurityRoleType value125009 = SecurityRoleType._(
    '125009',
  );

  /// value125010
  static final SecurityRoleType value125010 = SecurityRoleType._(
    '125010',
  );

  /// value125011
  static final SecurityRoleType value125011 = SecurityRoleType._(
    '125011',
  );

  /// value125012
  static final SecurityRoleType value125012 = SecurityRoleType._(
    '125012',
  );

  /// value125013
  static final SecurityRoleType value125013 = SecurityRoleType._(
    '125013',
  );

  /// value125015
  static final SecurityRoleType value125015 = SecurityRoleType._(
    '125015',
  );

  /// value125016
  static final SecurityRoleType value125016 = SecurityRoleType._(
    '125016',
  );

  /// value125021
  static final SecurityRoleType value125021 = SecurityRoleType._(
    '125021',
  );

  /// value125022
  static final SecurityRoleType value125022 = SecurityRoleType._(
    '125022',
  );

  /// value125023
  static final SecurityRoleType value125023 = SecurityRoleType._(
    '125023',
  );

  /// value125024
  static final SecurityRoleType value125024 = SecurityRoleType._(
    '125024',
  );

  /// value125025
  static final SecurityRoleType value125025 = SecurityRoleType._(
    '125025',
  );

  /// value125030
  static final SecurityRoleType value125030 = SecurityRoleType._(
    '125030',
  );

  /// value125031
  static final SecurityRoleType value125031 = SecurityRoleType._(
    '125031',
  );

  /// value125032
  static final SecurityRoleType value125032 = SecurityRoleType._(
    '125032',
  );

  /// value125033
  static final SecurityRoleType value125033 = SecurityRoleType._(
    '125033',
  );

  /// value125034
  static final SecurityRoleType value125034 = SecurityRoleType._(
    '125034',
  );

  /// value125035
  static final SecurityRoleType value125035 = SecurityRoleType._(
    '125035',
  );

  /// value125036
  static final SecurityRoleType value125036 = SecurityRoleType._(
    '125036',
  );

  /// value125037
  static final SecurityRoleType value125037 = SecurityRoleType._(
    '125037',
  );

  /// value125038
  static final SecurityRoleType value125038 = SecurityRoleType._(
    '125038',
  );

  /// value125040
  static final SecurityRoleType value125040 = SecurityRoleType._(
    '125040',
  );

  /// value125041
  static final SecurityRoleType value125041 = SecurityRoleType._(
    '125041',
  );

  /// value125100
  static final SecurityRoleType value125100 = SecurityRoleType._(
    '125100',
  );

  /// value125101
  static final SecurityRoleType value125101 = SecurityRoleType._(
    '125101',
  );

  /// value125102
  static final SecurityRoleType value125102 = SecurityRoleType._(
    '125102',
  );

  /// value125105
  static final SecurityRoleType value125105 = SecurityRoleType._(
    '125105',
  );

  /// value125106
  static final SecurityRoleType value125106 = SecurityRoleType._(
    '125106',
  );

  /// value125107
  static final SecurityRoleType value125107 = SecurityRoleType._(
    '125107',
  );

  /// value125195
  static final SecurityRoleType value125195 = SecurityRoleType._(
    '125195',
  );

  /// value125196
  static final SecurityRoleType value125196 = SecurityRoleType._(
    '125196',
  );

  /// value125197
  static final SecurityRoleType value125197 = SecurityRoleType._(
    '125197',
  );

  /// value125200
  static final SecurityRoleType value125200 = SecurityRoleType._(
    '125200',
  );

  /// value125201
  static final SecurityRoleType value125201 = SecurityRoleType._(
    '125201',
  );

  /// value125202
  static final SecurityRoleType value125202 = SecurityRoleType._(
    '125202',
  );

  /// value125203
  static final SecurityRoleType value125203 = SecurityRoleType._(
    '125203',
  );

  /// value125204
  static final SecurityRoleType value125204 = SecurityRoleType._(
    '125204',
  );

  /// value125205
  static final SecurityRoleType value125205 = SecurityRoleType._(
    '125205',
  );

  /// value125206
  static final SecurityRoleType value125206 = SecurityRoleType._(
    '125206',
  );

  /// value125207
  static final SecurityRoleType value125207 = SecurityRoleType._(
    '125207',
  );

  /// value125208
  static final SecurityRoleType value125208 = SecurityRoleType._(
    '125208',
  );

  /// value125209
  static final SecurityRoleType value125209 = SecurityRoleType._(
    '125209',
  );

  /// value125210
  static final SecurityRoleType value125210 = SecurityRoleType._(
    '125210',
  );

  /// value125211
  static final SecurityRoleType value125211 = SecurityRoleType._(
    '125211',
  );

  /// value125212
  static final SecurityRoleType value125212 = SecurityRoleType._(
    '125212',
  );

  /// value125213
  static final SecurityRoleType value125213 = SecurityRoleType._(
    '125213',
  );

  /// value125214
  static final SecurityRoleType value125214 = SecurityRoleType._(
    '125214',
  );

  /// value125215
  static final SecurityRoleType value125215 = SecurityRoleType._(
    '125215',
  );

  /// value125216
  static final SecurityRoleType value125216 = SecurityRoleType._(
    '125216',
  );

  /// value125217
  static final SecurityRoleType value125217 = SecurityRoleType._(
    '125217',
  );

  /// value125218
  static final SecurityRoleType value125218 = SecurityRoleType._(
    '125218',
  );

  /// value125219
  static final SecurityRoleType value125219 = SecurityRoleType._(
    '125219',
  );

  /// value125220
  static final SecurityRoleType value125220 = SecurityRoleType._(
    '125220',
  );

  /// value125221
  static final SecurityRoleType value125221 = SecurityRoleType._(
    '125221',
  );

  /// value125222
  static final SecurityRoleType value125222 = SecurityRoleType._(
    '125222',
  );

  /// value125223
  static final SecurityRoleType value125223 = SecurityRoleType._(
    '125223',
  );

  /// value125224
  static final SecurityRoleType value125224 = SecurityRoleType._(
    '125224',
  );

  /// value125225
  static final SecurityRoleType value125225 = SecurityRoleType._(
    '125225',
  );

  /// value125226
  static final SecurityRoleType value125226 = SecurityRoleType._(
    '125226',
  );

  /// value125227
  static final SecurityRoleType value125227 = SecurityRoleType._(
    '125227',
  );

  /// value125228
  static final SecurityRoleType value125228 = SecurityRoleType._(
    '125228',
  );

  /// value125230
  static final SecurityRoleType value125230 = SecurityRoleType._(
    '125230',
  );

  /// value125231
  static final SecurityRoleType value125231 = SecurityRoleType._(
    '125231',
  );

  /// value125233
  static final SecurityRoleType value125233 = SecurityRoleType._(
    '125233',
  );

  /// value125234
  static final SecurityRoleType value125234 = SecurityRoleType._(
    '125234',
  );

  /// value125235
  static final SecurityRoleType value125235 = SecurityRoleType._(
    '125235',
  );

  /// value125236
  static final SecurityRoleType value125236 = SecurityRoleType._(
    '125236',
  );

  /// value125237
  static final SecurityRoleType value125237 = SecurityRoleType._(
    '125237',
  );

  /// value125238
  static final SecurityRoleType value125238 = SecurityRoleType._(
    '125238',
  );

  /// value125239
  static final SecurityRoleType value125239 = SecurityRoleType._(
    '125239',
  );

  /// value125240
  static final SecurityRoleType value125240 = SecurityRoleType._(
    '125240',
  );

  /// value125241
  static final SecurityRoleType value125241 = SecurityRoleType._(
    '125241',
  );

  /// value125242
  static final SecurityRoleType value125242 = SecurityRoleType._(
    '125242',
  );

  /// value125251
  static final SecurityRoleType value125251 = SecurityRoleType._(
    '125251',
  );

  /// value125252
  static final SecurityRoleType value125252 = SecurityRoleType._(
    '125252',
  );

  /// value125253
  static final SecurityRoleType value125253 = SecurityRoleType._(
    '125253',
  );

  /// value125254
  static final SecurityRoleType value125254 = SecurityRoleType._(
    '125254',
  );

  /// value125255
  static final SecurityRoleType value125255 = SecurityRoleType._(
    '125255',
  );

  /// value125256
  static final SecurityRoleType value125256 = SecurityRoleType._(
    '125256',
  );

  /// value125257
  static final SecurityRoleType value125257 = SecurityRoleType._(
    '125257',
  );

  /// value125258
  static final SecurityRoleType value125258 = SecurityRoleType._(
    '125258',
  );

  /// value125259
  static final SecurityRoleType value125259 = SecurityRoleType._(
    '125259',
  );

  /// value125261
  static final SecurityRoleType value125261 = SecurityRoleType._(
    '125261',
  );

  /// value125262
  static final SecurityRoleType value125262 = SecurityRoleType._(
    '125262',
  );

  /// value125263
  static final SecurityRoleType value125263 = SecurityRoleType._(
    '125263',
  );

  /// value125264
  static final SecurityRoleType value125264 = SecurityRoleType._(
    '125264',
  );

  /// value125265
  static final SecurityRoleType value125265 = SecurityRoleType._(
    '125265',
  );

  /// value125270
  static final SecurityRoleType value125270 = SecurityRoleType._(
    '125270',
  );

  /// value125271
  static final SecurityRoleType value125271 = SecurityRoleType._(
    '125271',
  );

  /// value125272
  static final SecurityRoleType value125272 = SecurityRoleType._(
    '125272',
  );

  /// value125273
  static final SecurityRoleType value125273 = SecurityRoleType._(
    '125273',
  );

  /// value125901
  static final SecurityRoleType value125901 = SecurityRoleType._(
    '125901',
  );

  /// value125902
  static final SecurityRoleType value125902 = SecurityRoleType._(
    '125902',
  );

  /// value125903
  static final SecurityRoleType value125903 = SecurityRoleType._(
    '125903',
  );

  /// value125904
  static final SecurityRoleType value125904 = SecurityRoleType._(
    '125904',
  );

  /// value125905
  static final SecurityRoleType value125905 = SecurityRoleType._(
    '125905',
  );

  /// value125906
  static final SecurityRoleType value125906 = SecurityRoleType._(
    '125906',
  );

  /// value125907
  static final SecurityRoleType value125907 = SecurityRoleType._(
    '125907',
  );

  /// value125908
  static final SecurityRoleType value125908 = SecurityRoleType._(
    '125908',
  );

  /// value126000
  static final SecurityRoleType value126000 = SecurityRoleType._(
    '126000',
  );

  /// value126001
  static final SecurityRoleType value126001 = SecurityRoleType._(
    '126001',
  );

  /// value126002
  static final SecurityRoleType value126002 = SecurityRoleType._(
    '126002',
  );

  /// value126003
  static final SecurityRoleType value126003 = SecurityRoleType._(
    '126003',
  );

  /// value126010
  static final SecurityRoleType value126010 = SecurityRoleType._(
    '126010',
  );

  /// value126011
  static final SecurityRoleType value126011 = SecurityRoleType._(
    '126011',
  );

  /// value126020
  static final SecurityRoleType value126020 = SecurityRoleType._(
    '126020',
  );

  /// value126021
  static final SecurityRoleType value126021 = SecurityRoleType._(
    '126021',
  );

  /// value126022
  static final SecurityRoleType value126022 = SecurityRoleType._(
    '126022',
  );

  /// value126030
  static final SecurityRoleType value126030 = SecurityRoleType._(
    '126030',
  );

  /// value126031
  static final SecurityRoleType value126031 = SecurityRoleType._(
    '126031',
  );

  /// value126032
  static final SecurityRoleType value126032 = SecurityRoleType._(
    '126032',
  );

  /// value126033
  static final SecurityRoleType value126033 = SecurityRoleType._(
    '126033',
  );

  /// value126034
  static final SecurityRoleType value126034 = SecurityRoleType._(
    '126034',
  );

  /// value126035
  static final SecurityRoleType value126035 = SecurityRoleType._(
    '126035',
  );

  /// value126036
  static final SecurityRoleType value126036 = SecurityRoleType._(
    '126036',
  );

  /// value126037
  static final SecurityRoleType value126037 = SecurityRoleType._(
    '126037',
  );

  /// value126038
  static final SecurityRoleType value126038 = SecurityRoleType._(
    '126038',
  );

  /// value126039
  static final SecurityRoleType value126039 = SecurityRoleType._(
    '126039',
  );

  /// value126040
  static final SecurityRoleType value126040 = SecurityRoleType._(
    '126040',
  );

  /// value126050
  static final SecurityRoleType value126050 = SecurityRoleType._(
    '126050',
  );

  /// value126051
  static final SecurityRoleType value126051 = SecurityRoleType._(
    '126051',
  );

  /// value126052
  static final SecurityRoleType value126052 = SecurityRoleType._(
    '126052',
  );

  /// value126060
  static final SecurityRoleType value126060 = SecurityRoleType._(
    '126060',
  );

  /// value126061
  static final SecurityRoleType value126061 = SecurityRoleType._(
    '126061',
  );

  /// value126062
  static final SecurityRoleType value126062 = SecurityRoleType._(
    '126062',
  );

  /// value126063
  static final SecurityRoleType value126063 = SecurityRoleType._(
    '126063',
  );

  /// value126064
  static final SecurityRoleType value126064 = SecurityRoleType._(
    '126064',
  );

  /// value126065
  static final SecurityRoleType value126065 = SecurityRoleType._(
    '126065',
  );

  /// value126066
  static final SecurityRoleType value126066 = SecurityRoleType._(
    '126066',
  );

  /// value126067
  static final SecurityRoleType value126067 = SecurityRoleType._(
    '126067',
  );

  /// value126070
  static final SecurityRoleType value126070 = SecurityRoleType._(
    '126070',
  );

  /// value126071
  static final SecurityRoleType value126071 = SecurityRoleType._(
    '126071',
  );

  /// value126072
  static final SecurityRoleType value126072 = SecurityRoleType._(
    '126072',
  );

  /// value126073
  static final SecurityRoleType value126073 = SecurityRoleType._(
    '126073',
  );

  /// value126074
  static final SecurityRoleType value126074 = SecurityRoleType._(
    '126074',
  );

  /// value126075
  static final SecurityRoleType value126075 = SecurityRoleType._(
    '126075',
  );

  /// value126080
  static final SecurityRoleType value126080 = SecurityRoleType._(
    '126080',
  );

  /// value126081
  static final SecurityRoleType value126081 = SecurityRoleType._(
    '126081',
  );

  /// value126100
  static final SecurityRoleType value126100 = SecurityRoleType._(
    '126100',
  );

  /// value126200
  static final SecurityRoleType value126200 = SecurityRoleType._(
    '126200',
  );

  /// value126201
  static final SecurityRoleType value126201 = SecurityRoleType._(
    '126201',
  );

  /// value126202
  static final SecurityRoleType value126202 = SecurityRoleType._(
    '126202',
  );

  /// value126203
  static final SecurityRoleType value126203 = SecurityRoleType._(
    '126203',
  );

  /// value126220
  static final SecurityRoleType value126220 = SecurityRoleType._(
    '126220',
  );

  /// value126300
  static final SecurityRoleType value126300 = SecurityRoleType._(
    '126300',
  );

  /// value126301
  static final SecurityRoleType value126301 = SecurityRoleType._(
    '126301',
  );

  /// value126302
  static final SecurityRoleType value126302 = SecurityRoleType._(
    '126302',
  );

  /// value126303
  static final SecurityRoleType value126303 = SecurityRoleType._(
    '126303',
  );

  /// value126310
  static final SecurityRoleType value126310 = SecurityRoleType._(
    '126310',
  );

  /// value126311
  static final SecurityRoleType value126311 = SecurityRoleType._(
    '126311',
  );

  /// value126312
  static final SecurityRoleType value126312 = SecurityRoleType._(
    '126312',
  );

  /// value126313
  static final SecurityRoleType value126313 = SecurityRoleType._(
    '126313',
  );

  /// value126314
  static final SecurityRoleType value126314 = SecurityRoleType._(
    '126314',
  );

  /// value126320
  static final SecurityRoleType value126320 = SecurityRoleType._(
    '126320',
  );

  /// value126321
  static final SecurityRoleType value126321 = SecurityRoleType._(
    '126321',
  );

  /// value126322
  static final SecurityRoleType value126322 = SecurityRoleType._(
    '126322',
  );

  /// value126330
  static final SecurityRoleType value126330 = SecurityRoleType._(
    '126330',
  );

  /// value126331
  static final SecurityRoleType value126331 = SecurityRoleType._(
    '126331',
  );

  /// value126340
  static final SecurityRoleType value126340 = SecurityRoleType._(
    '126340',
  );

  /// value126341
  static final SecurityRoleType value126341 = SecurityRoleType._(
    '126341',
  );

  /// value126342
  static final SecurityRoleType value126342 = SecurityRoleType._(
    '126342',
  );

  /// value126343
  static final SecurityRoleType value126343 = SecurityRoleType._(
    '126343',
  );

  /// value126344
  static final SecurityRoleType value126344 = SecurityRoleType._(
    '126344',
  );

  /// value126350
  static final SecurityRoleType value126350 = SecurityRoleType._(
    '126350',
  );

  /// value126351
  static final SecurityRoleType value126351 = SecurityRoleType._(
    '126351',
  );

  /// value126352
  static final SecurityRoleType value126352 = SecurityRoleType._(
    '126352',
  );

  /// value126353
  static final SecurityRoleType value126353 = SecurityRoleType._(
    '126353',
  );

  /// value126360
  static final SecurityRoleType value126360 = SecurityRoleType._(
    '126360',
  );

  /// value126361
  static final SecurityRoleType value126361 = SecurityRoleType._(
    '126361',
  );

  /// value126362
  static final SecurityRoleType value126362 = SecurityRoleType._(
    '126362',
  );

  /// value126363
  static final SecurityRoleType value126363 = SecurityRoleType._(
    '126363',
  );

  /// value126364
  static final SecurityRoleType value126364 = SecurityRoleType._(
    '126364',
  );

  /// value126370
  static final SecurityRoleType value126370 = SecurityRoleType._(
    '126370',
  );

  /// value126371
  static final SecurityRoleType value126371 = SecurityRoleType._(
    '126371',
  );

  /// value126372
  static final SecurityRoleType value126372 = SecurityRoleType._(
    '126372',
  );

  /// value126373
  static final SecurityRoleType value126373 = SecurityRoleType._(
    '126373',
  );

  /// value126374
  static final SecurityRoleType value126374 = SecurityRoleType._(
    '126374',
  );

  /// value126375
  static final SecurityRoleType value126375 = SecurityRoleType._(
    '126375',
  );

  /// value126376
  static final SecurityRoleType value126376 = SecurityRoleType._(
    '126376',
  );

  /// value126377
  static final SecurityRoleType value126377 = SecurityRoleType._(
    '126377',
  );

  /// value126380
  static final SecurityRoleType value126380 = SecurityRoleType._(
    '126380',
  );

  /// value126390
  static final SecurityRoleType value126390 = SecurityRoleType._(
    '126390',
  );

  /// value126391
  static final SecurityRoleType value126391 = SecurityRoleType._(
    '126391',
  );

  /// value126392
  static final SecurityRoleType value126392 = SecurityRoleType._(
    '126392',
  );

  /// value126393
  static final SecurityRoleType value126393 = SecurityRoleType._(
    '126393',
  );

  /// value126394
  static final SecurityRoleType value126394 = SecurityRoleType._(
    '126394',
  );

  /// value126400
  static final SecurityRoleType value126400 = SecurityRoleType._(
    '126400',
  );

  /// value126401
  static final SecurityRoleType value126401 = SecurityRoleType._(
    '126401',
  );

  /// value126402
  static final SecurityRoleType value126402 = SecurityRoleType._(
    '126402',
  );

  /// value126403
  static final SecurityRoleType value126403 = SecurityRoleType._(
    '126403',
  );

  /// value126404
  static final SecurityRoleType value126404 = SecurityRoleType._(
    '126404',
  );

  /// value126410
  static final SecurityRoleType value126410 = SecurityRoleType._(
    '126410',
  );

  /// value126411
  static final SecurityRoleType value126411 = SecurityRoleType._(
    '126411',
  );

  /// value126412
  static final SecurityRoleType value126412 = SecurityRoleType._(
    '126412',
  );

  /// value126413
  static final SecurityRoleType value126413 = SecurityRoleType._(
    '126413',
  );

  /// value126500
  static final SecurityRoleType value126500 = SecurityRoleType._(
    '126500',
  );

  /// value126501
  static final SecurityRoleType value126501 = SecurityRoleType._(
    '126501',
  );

  /// value126502
  static final SecurityRoleType value126502 = SecurityRoleType._(
    '126502',
  );

  /// value126503
  static final SecurityRoleType value126503 = SecurityRoleType._(
    '126503',
  );

  /// value126510
  static final SecurityRoleType value126510 = SecurityRoleType._(
    '126510',
  );

  /// value126511
  static final SecurityRoleType value126511 = SecurityRoleType._(
    '126511',
  );

  /// value126512
  static final SecurityRoleType value126512 = SecurityRoleType._(
    '126512',
  );

  /// value126513
  static final SecurityRoleType value126513 = SecurityRoleType._(
    '126513',
  );

  /// value126514
  static final SecurityRoleType value126514 = SecurityRoleType._(
    '126514',
  );

  /// value126515
  static final SecurityRoleType value126515 = SecurityRoleType._(
    '126515',
  );

  /// value126516
  static final SecurityRoleType value126516 = SecurityRoleType._(
    '126516',
  );

  /// value126517
  static final SecurityRoleType value126517 = SecurityRoleType._(
    '126517',
  );

  /// value126518
  static final SecurityRoleType value126518 = SecurityRoleType._(
    '126518',
  );

  /// value126519
  static final SecurityRoleType value126519 = SecurityRoleType._(
    '126519',
  );

  /// value126520
  static final SecurityRoleType value126520 = SecurityRoleType._(
    '126520',
  );

  /// value126600
  static final SecurityRoleType value126600 = SecurityRoleType._(
    '126600',
  );

  /// value126601
  static final SecurityRoleType value126601 = SecurityRoleType._(
    '126601',
  );

  /// value126602
  static final SecurityRoleType value126602 = SecurityRoleType._(
    '126602',
  );

  /// value126603
  static final SecurityRoleType value126603 = SecurityRoleType._(
    '126603',
  );

  /// value126604
  static final SecurityRoleType value126604 = SecurityRoleType._(
    '126604',
  );

  /// value126605
  static final SecurityRoleType value126605 = SecurityRoleType._(
    '126605',
  );

  /// value126606
  static final SecurityRoleType value126606 = SecurityRoleType._(
    '126606',
  );

  /// value126700
  static final SecurityRoleType value126700 = SecurityRoleType._(
    '126700',
  );

  /// value126701
  static final SecurityRoleType value126701 = SecurityRoleType._(
    '126701',
  );

  /// value126702
  static final SecurityRoleType value126702 = SecurityRoleType._(
    '126702',
  );

  /// value126703
  static final SecurityRoleType value126703 = SecurityRoleType._(
    '126703',
  );

  /// value126704
  static final SecurityRoleType value126704 = SecurityRoleType._(
    '126704',
  );

  /// value126705
  static final SecurityRoleType value126705 = SecurityRoleType._(
    '126705',
  );

  /// value126706
  static final SecurityRoleType value126706 = SecurityRoleType._(
    '126706',
  );

  /// value126707
  static final SecurityRoleType value126707 = SecurityRoleType._(
    '126707',
  );

  /// value126708
  static final SecurityRoleType value126708 = SecurityRoleType._(
    '126708',
  );

  /// value126709
  static final SecurityRoleType value126709 = SecurityRoleType._(
    '126709',
  );

  /// value126710
  static final SecurityRoleType value126710 = SecurityRoleType._(
    '126710',
  );

  /// value126711
  static final SecurityRoleType value126711 = SecurityRoleType._(
    '126711',
  );

  /// value126712
  static final SecurityRoleType value126712 = SecurityRoleType._(
    '126712',
  );

  /// value126713
  static final SecurityRoleType value126713 = SecurityRoleType._(
    '126713',
  );

  /// value126714
  static final SecurityRoleType value126714 = SecurityRoleType._(
    '126714',
  );

  /// value126715
  static final SecurityRoleType value126715 = SecurityRoleType._(
    '126715',
  );

  /// value126716
  static final SecurityRoleType value126716 = SecurityRoleType._(
    '126716',
  );

  /// value126801
  static final SecurityRoleType value126801 = SecurityRoleType._(
    '126801',
  );

  /// value126802
  static final SecurityRoleType value126802 = SecurityRoleType._(
    '126802',
  );

  /// value126803
  static final SecurityRoleType value126803 = SecurityRoleType._(
    '126803',
  );

  /// value126804
  static final SecurityRoleType value126804 = SecurityRoleType._(
    '126804',
  );

  /// value126805
  static final SecurityRoleType value126805 = SecurityRoleType._(
    '126805',
  );

  /// value126806
  static final SecurityRoleType value126806 = SecurityRoleType._(
    '126806',
  );

  /// value126807
  static final SecurityRoleType value126807 = SecurityRoleType._(
    '126807',
  );

  /// value126808
  static final SecurityRoleType value126808 = SecurityRoleType._(
    '126808',
  );

  /// value126809
  static final SecurityRoleType value126809 = SecurityRoleType._(
    '126809',
  );

  /// value126810
  static final SecurityRoleType value126810 = SecurityRoleType._(
    '126810',
  );

  /// value126811
  static final SecurityRoleType value126811 = SecurityRoleType._(
    '126811',
  );

  /// For instances where an Element is present but not value

  static final SecurityRoleType elementOnly = SecurityRoleType._('');

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

  /// Clones the current instance
  @override
  SecurityRoleType clone() => SecurityRoleType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SecurityRoleType withElement(Element? newElement) {
    return SecurityRoleType._(
      value,
      element: newElement,
    );
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
  SecurityRoleType copyWith({
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
    return SecurityRoleType._(
      newValue ?? value,
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
