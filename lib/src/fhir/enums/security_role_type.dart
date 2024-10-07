import 'package:json_annotation/json_annotation.dart';

/// This example FHIR value set is comprised of example Actor Type codes, which can be used to value FHIR agents, actors, and other role         elements such as those specified in financial transactions. The FHIR Actor value set is based on    DICOM Audit Message, C402;   ASTM Standard, E1762-95 [2013]; selected codes and          derived actor roles from HL7 RoleClass OID 2.16.840.1.113883.5.110;    HL7 Role Code 2.16.840.1.113883.5.111, including AgentRoleType;          HL7 ParticipationType OID: 2.16.840.1.113883.5.90; and    HL7 ParticipationFunction codes OID: 2.16.840.1.113883.5.88.           This value set includes, by reference, role codes from external code systems: NUCC Health Care Provider Taxonomy OID: 2.16.840.1.113883.6.101;          North American Industry Classification System [NAICS]OID: 2.16.840.1.113883.6.85; IndustryClassificationSystem 2.16.840.1.113883.1.11.16039;          and US Census Occupation Code OID: 2.16.840.1.113883.6.243 for relevant recipient or custodian codes not included in this value set.            If no source is indicated in the definition comments, then these are example FHIR codes.          It can be extended with appropriate roles described by SNOMED as well as those described in the HL7 Role Based Access Control Catalog and the          HL7 Healthcare (Security and Privacy) Access Control Catalog.            In Role-Based Access Control (RBAC), permissions are operations on an object that a user wishes to access. Permissions are grouped into roles.          A role characterizes the functions a user is allowed to perform. Roles are assigned to users. If the user's role has the appropriate permissions          to access an object, then that user is granted access to the object. FHIR readily enables RBAC, as FHIR Resources are object types and the CRUDE          events (the FHIR equivalent to permissions in the RBAC scheme) are operations on those objects.          In Attribute-Based Access Control (ABAC), a user requests to perform operations on objects. That user's access request is granted or denied          based on a set of access control policies that are specified in terms of attributes and conditions. FHIR readily enables ABAC, as instances of          a Resource in FHIR (again, Resources are object types) can have attributes associated with them. These attributes include security tags,          environment conditions, and a host of user and object characteristics, which are the same attributes as those used in ABAC. Attributes help          define the access control policies that determine the operations a user may perform on a Resource (in FHIR) or object (in ABAC). For example,          a tag (or attribute) may specify that the identified Resource (object) is not to be further disclosed without explicit consent from the patient.
enum SecurityRoleType {
  @JsonValue('AMENDER')
  AMENDER,
  @JsonValue('COAUTH')
  COAUTH,
  @JsonValue('CONT')
  CONT,
  @JsonValue('EVTWIT')
  EVTWIT,
  @JsonValue('PRIMAUTH')
  PRIMAUTH,
  @JsonValue('REVIEWER')
  REVIEWER,
  @JsonValue('SOURCE')
  SOURCE,
  @JsonValue('TRANS')
  TRANS,
  @JsonValue('VALID')
  VALID,
  @JsonValue('VERF')
  VERF,
  @JsonValue('AFFL')
  AFFL,
  @JsonValue('AGNT')
  AGNT,
  @JsonValue('ASSIGNED')
  ASSIGNED,
  @JsonValue('CLAIM')
  CLAIM,
  @JsonValue('COVPTY')
  COVPTY,
  @JsonValue('DEPEN')
  DEPEN,
  @JsonValue('ECON')
  ECON,
  @JsonValue('EMP')
  EMP,
  @JsonValue('GUARD')
  GUARD,
  @JsonValue('INVSBJ')
  INVSBJ,
  @JsonValue('NAMED')
  NAMED,
  @JsonValue('NOK')
  NOK,
  @JsonValue('PAT')
  PAT,
  @JsonValue('PROV')
  PROV,
  @JsonValue('NOT')
  NOT,
  @JsonValue('CLASSIFIER')
  CLASSIFIER,
  @JsonValue('CONSENTER')
  CONSENTER,
  @JsonValue('CONSWIT')
  CONSWIT,
  @JsonValue('COPART')
  COPART,
  @JsonValue('DECLASSIFIER')
  DECLASSIFIER,
  @JsonValue('DELEGATEE')
  DELEGATEE,
  @JsonValue('DELEGATOR')
  DELEGATOR,
  @JsonValue('DOWNGRDER')
  DOWNGRDER,
  @JsonValue('DPOWATT')
  DPOWATT,
  @JsonValue('EXCEST')
  EXCEST,
  @JsonValue('GRANTEE')
  GRANTEE,
  @JsonValue('GRANTOR')
  GRANTOR,
  @JsonValue('GT')
  GT,
  @JsonValue('GUADLTM')
  GUADLTM,
  @JsonValue('HPOWATT')
  HPOWATT,
  @JsonValue('INTPRTER')
  INTPRTER,
  @JsonValue('POWATT')
  POWATT,
  @JsonValue('RESPRSN')
  RESPRSN,
  @JsonValue('SPOWATT')
  SPOWATT,
  @JsonValue('AUCG')
  AUCG,
  @JsonValue('AULR')
  AULR,
  @JsonValue('AUTM')
  AUTM,
  @JsonValue('AUWA')
  AUWA,
  @JsonValue('PROMSK')
  PROMSK,
  @JsonValue('AUT')
  AUT,
  @JsonValue('CST')
  CST,
  @JsonValue('INF')
  INF,
  @JsonValue('IRCP')
  IRCP,
  @JsonValue('LA')
  LA,
  @JsonValue('TRC')
  TRC,
  @JsonValue('WIT')
  WIT,
  /// Display: authorization server
  /// Definition: An entity providing authorization services to enable the electronic sharing of health-related information based on resource owner's preapproved permissions. For example, an UMA Authorization Server[UMA]
  @JsonValue('authserver')
  authserver,
  /// Display: data collector
  /// Definition: An entity that collects information over which the data subject may have certain rights under policy or law to control that information's management and distribution by data collectors, including the right to access, retrieve, distribute, or delete that information.
  @JsonValue('datacollector')
  datacollector,
  /// Display: data processor
  /// Definition: An entity that processes collected information over which the data subject may have certain rights under policy or law to control that information's management and distribution by data processors, including the right to access, retrieve, distribute, or delete that information.
  @JsonValue('dataprocessor')
  dataprocessor,
  /// Display: data subject
  /// Definition: A person whose personal information is collected or processed, and who may have certain rights under policy or law to control that information's management and distribution by data collectors or processors, including the right to access, retrieve, distribute, or delete that information.
  @JsonValue('datasubject')
  datasubject,
  /// Display: human user
  /// Definition: The human user that has participated.
  @JsonValue('humanuser')
  humanuser,
  @JsonValue('110150')
  value110150,
  @JsonValue('110151')
  value110151,
  @JsonValue('110152')
  value110152,
  @JsonValue('110153')
  value110153,
  @JsonValue('110154')
  value110154,
  @JsonValue('110155')
  value110155,
;

@override
  String toString() {
      switch(this) {
        case AMENDER: return 'AMENDER';
        case COAUTH: return 'COAUTH';
        case CONT: return 'CONT';
        case EVTWIT: return 'EVTWIT';
        case PRIMAUTH: return 'PRIMAUTH';
        case REVIEWER: return 'REVIEWER';
        case SOURCE: return 'SOURCE';
        case TRANS: return 'TRANS';
        case VALID: return 'VALID';
        case VERF: return 'VERF';
        case AFFL: return 'AFFL';
        case AGNT: return 'AGNT';
        case ASSIGNED: return 'ASSIGNED';
        case CLAIM: return 'CLAIM';
        case COVPTY: return 'COVPTY';
        case DEPEN: return 'DEPEN';
        case ECON: return 'ECON';
        case EMP: return 'EMP';
        case GUARD: return 'GUARD';
        case INVSBJ: return 'INVSBJ';
        case NAMED: return 'NAMED';
        case NOK: return 'NOK';
        case PAT: return 'PAT';
        case PROV: return 'PROV';
        case NOT: return 'NOT';
        case CLASSIFIER: return 'CLASSIFIER';
        case CONSENTER: return 'CONSENTER';
        case CONSWIT: return 'CONSWIT';
        case COPART: return 'COPART';
        case DECLASSIFIER: return 'DECLASSIFIER';
        case DELEGATEE: return 'DELEGATEE';
        case DELEGATOR: return 'DELEGATOR';
        case DOWNGRDER: return 'DOWNGRDER';
        case DPOWATT: return 'DPOWATT';
        case EXCEST: return 'EXCEST';
        case GRANTEE: return 'GRANTEE';
        case GRANTOR: return 'GRANTOR';
        case GT: return 'GT';
        case GUADLTM: return 'GUADLTM';
        case HPOWATT: return 'HPOWATT';
        case INTPRTER: return 'INTPRTER';
        case POWATT: return 'POWATT';
        case RESPRSN: return 'RESPRSN';
        case SPOWATT: return 'SPOWATT';
        case AUCG: return 'AUCG';
        case AULR: return 'AULR';
        case AUTM: return 'AUTM';
        case AUWA: return 'AUWA';
        case PROMSK: return 'PROMSK';
        case AUT: return 'AUT';
        case CST: return 'CST';
        case INF: return 'INF';
        case IRCP: return 'IRCP';
        case LA: return 'LA';
        case TRC: return 'TRC';
        case WIT: return 'WIT';
        case authserver: return 'authserver';
        case datacollector: return 'datacollector';
        case dataprocessor: return 'dataprocessor';
        case datasubject: return 'datasubject';
        case humanuser: return 'humanuser';
        case value110150: return '110150';
        case value110151: return '110151';
        case value110152: return '110152';
        case value110153: return '110153';
        case value110154: return '110154';
        case value110155: return '110155';
      }
      }
String toJson() => toString();
  SecurityRoleType fromString(String str) {
    switch(str) {
      case 'AMENDER': return SecurityRoleType.AMENDER;
      case 'COAUTH': return SecurityRoleType.COAUTH;
      case 'CONT': return SecurityRoleType.CONT;
      case 'EVTWIT': return SecurityRoleType.EVTWIT;
      case 'PRIMAUTH': return SecurityRoleType.PRIMAUTH;
      case 'REVIEWER': return SecurityRoleType.REVIEWER;
      case 'SOURCE': return SecurityRoleType.SOURCE;
      case 'TRANS': return SecurityRoleType.TRANS;
      case 'VALID': return SecurityRoleType.VALID;
      case 'VERF': return SecurityRoleType.VERF;
      case 'AFFL': return SecurityRoleType.AFFL;
      case 'AGNT': return SecurityRoleType.AGNT;
      case 'ASSIGNED': return SecurityRoleType.ASSIGNED;
      case 'CLAIM': return SecurityRoleType.CLAIM;
      case 'COVPTY': return SecurityRoleType.COVPTY;
      case 'DEPEN': return SecurityRoleType.DEPEN;
      case 'ECON': return SecurityRoleType.ECON;
      case 'EMP': return SecurityRoleType.EMP;
      case 'GUARD': return SecurityRoleType.GUARD;
      case 'INVSBJ': return SecurityRoleType.INVSBJ;
      case 'NAMED': return SecurityRoleType.NAMED;
      case 'NOK': return SecurityRoleType.NOK;
      case 'PAT': return SecurityRoleType.PAT;
      case 'PROV': return SecurityRoleType.PROV;
      case 'NOT': return SecurityRoleType.NOT;
      case 'CLASSIFIER': return SecurityRoleType.CLASSIFIER;
      case 'CONSENTER': return SecurityRoleType.CONSENTER;
      case 'CONSWIT': return SecurityRoleType.CONSWIT;
      case 'COPART': return SecurityRoleType.COPART;
      case 'DECLASSIFIER': return SecurityRoleType.DECLASSIFIER;
      case 'DELEGATEE': return SecurityRoleType.DELEGATEE;
      case 'DELEGATOR': return SecurityRoleType.DELEGATOR;
      case 'DOWNGRDER': return SecurityRoleType.DOWNGRDER;
      case 'DPOWATT': return SecurityRoleType.DPOWATT;
      case 'EXCEST': return SecurityRoleType.EXCEST;
      case 'GRANTEE': return SecurityRoleType.GRANTEE;
      case 'GRANTOR': return SecurityRoleType.GRANTOR;
      case 'GT': return SecurityRoleType.GT;
      case 'GUADLTM': return SecurityRoleType.GUADLTM;
      case 'HPOWATT': return SecurityRoleType.HPOWATT;
      case 'INTPRTER': return SecurityRoleType.INTPRTER;
      case 'POWATT': return SecurityRoleType.POWATT;
      case 'RESPRSN': return SecurityRoleType.RESPRSN;
      case 'SPOWATT': return SecurityRoleType.SPOWATT;
      case 'AUCG': return SecurityRoleType.AUCG;
      case 'AULR': return SecurityRoleType.AULR;
      case 'AUTM': return SecurityRoleType.AUTM;
      case 'AUWA': return SecurityRoleType.AUWA;
      case 'PROMSK': return SecurityRoleType.PROMSK;
      case 'AUT': return SecurityRoleType.AUT;
      case 'CST': return SecurityRoleType.CST;
      case 'INF': return SecurityRoleType.INF;
      case 'IRCP': return SecurityRoleType.IRCP;
      case 'LA': return SecurityRoleType.LA;
      case 'TRC': return SecurityRoleType.TRC;
      case 'WIT': return SecurityRoleType.WIT;
      case 'authserver': return SecurityRoleType.authserver;
      case 'datacollector': return SecurityRoleType.datacollector;
      case 'dataprocessor': return SecurityRoleType.dataprocessor;
      case 'datasubject': return SecurityRoleType.datasubject;
      case 'humanuser': return SecurityRoleType.humanuser;
      case '110150': return SecurityRoleType.value110150;
      case '110151': return SecurityRoleType.value110151;
      case '110152': return SecurityRoleType.value110152;
      case '110153': return SecurityRoleType.value110153;
      case '110154': return SecurityRoleType.value110154;
      case '110155': return SecurityRoleType.value110155;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SecurityRoleType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

