import 'package:json_annotation/json_annotation.dart';

/// This FHIR value set is comprised of Actor participation Type codes, which can be used to value FHIR agents, actors, and other role         elements. The FHIR Actor participation type value set is based on    DICOM Audit Message, C402;   ASTM Standard, E1762-95 [2013]; selected codes and          derived actor roles from HL7 RoleClass OID 2.16.840.1.113883.5.110;    HL7 Role Code 2.16.840.1.113883.5.111, including AgentRoleType;          HL7 ParticipationType OID: 2.16.840.1.113883.5.90; and    HL7 ParticipationFunction codes OID: 2.16.840.1.113883.5.88.           This value set includes, by reference, role codes from external code systems: NUCC Health Care Provider Taxonomy OID: 2.16.840.1.113883.6.101;          North American Industry Classification System [NAICS]OID: 2.16.840.1.113883.6.85; IndustryClassificationSystem 2.16.840.1.113883.1.11.16039;          and US Census Occupation Code OID: 2.16.840.1.113883.6.243 for relevant recipient or custodian codes not included in this value set.            If no source is indicated in the definition comments, then these are example FHIR codes.
enum ParticipationRoleType {
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
  ParticipationRoleType fromString(String str) {
    switch(str) {
      case 'AMENDER': return ParticipationRoleType.AMENDER;
      case 'COAUTH': return ParticipationRoleType.COAUTH;
      case 'CONT': return ParticipationRoleType.CONT;
      case 'EVTWIT': return ParticipationRoleType.EVTWIT;
      case 'PRIMAUTH': return ParticipationRoleType.PRIMAUTH;
      case 'REVIEWER': return ParticipationRoleType.REVIEWER;
      case 'SOURCE': return ParticipationRoleType.SOURCE;
      case 'TRANS': return ParticipationRoleType.TRANS;
      case 'VALID': return ParticipationRoleType.VALID;
      case 'VERF': return ParticipationRoleType.VERF;
      case 'AFFL': return ParticipationRoleType.AFFL;
      case 'AGNT': return ParticipationRoleType.AGNT;
      case 'ASSIGNED': return ParticipationRoleType.ASSIGNED;
      case 'CLAIM': return ParticipationRoleType.CLAIM;
      case 'COVPTY': return ParticipationRoleType.COVPTY;
      case 'DEPEN': return ParticipationRoleType.DEPEN;
      case 'ECON': return ParticipationRoleType.ECON;
      case 'EMP': return ParticipationRoleType.EMP;
      case 'GUARD': return ParticipationRoleType.GUARD;
      case 'INVSBJ': return ParticipationRoleType.INVSBJ;
      case 'NAMED': return ParticipationRoleType.NAMED;
      case 'NOK': return ParticipationRoleType.NOK;
      case 'PAT': return ParticipationRoleType.PAT;
      case 'PROV': return ParticipationRoleType.PROV;
      case 'NOT': return ParticipationRoleType.NOT;
      case 'CLASSIFIER': return ParticipationRoleType.CLASSIFIER;
      case 'CONSENTER': return ParticipationRoleType.CONSENTER;
      case 'CONSWIT': return ParticipationRoleType.CONSWIT;
      case 'COPART': return ParticipationRoleType.COPART;
      case 'DECLASSIFIER': return ParticipationRoleType.DECLASSIFIER;
      case 'DELEGATEE': return ParticipationRoleType.DELEGATEE;
      case 'DELEGATOR': return ParticipationRoleType.DELEGATOR;
      case 'DOWNGRDER': return ParticipationRoleType.DOWNGRDER;
      case 'DPOWATT': return ParticipationRoleType.DPOWATT;
      case 'EXCEST': return ParticipationRoleType.EXCEST;
      case 'GRANTEE': return ParticipationRoleType.GRANTEE;
      case 'GRANTOR': return ParticipationRoleType.GRANTOR;
      case 'GT': return ParticipationRoleType.GT;
      case 'GUADLTM': return ParticipationRoleType.GUADLTM;
      case 'HPOWATT': return ParticipationRoleType.HPOWATT;
      case 'INTPRTER': return ParticipationRoleType.INTPRTER;
      case 'POWATT': return ParticipationRoleType.POWATT;
      case 'RESPRSN': return ParticipationRoleType.RESPRSN;
      case 'SPOWATT': return ParticipationRoleType.SPOWATT;
      case 'AUCG': return ParticipationRoleType.AUCG;
      case 'AULR': return ParticipationRoleType.AULR;
      case 'AUTM': return ParticipationRoleType.AUTM;
      case 'AUWA': return ParticipationRoleType.AUWA;
      case 'PROMSK': return ParticipationRoleType.PROMSK;
      case 'AUT': return ParticipationRoleType.AUT;
      case 'CST': return ParticipationRoleType.CST;
      case 'INF': return ParticipationRoleType.INF;
      case 'IRCP': return ParticipationRoleType.IRCP;
      case 'LA': return ParticipationRoleType.LA;
      case 'TRC': return ParticipationRoleType.TRC;
      case 'WIT': return ParticipationRoleType.WIT;
      case 'authserver': return ParticipationRoleType.authserver;
      case 'datacollector': return ParticipationRoleType.datacollector;
      case 'dataprocessor': return ParticipationRoleType.dataprocessor;
      case 'datasubject': return ParticipationRoleType.datasubject;
      case 'humanuser': return ParticipationRoleType.humanuser;
      case '110150': return ParticipationRoleType.value110150;
      case '110151': return ParticipationRoleType.value110151;
      case '110152': return ParticipationRoleType.value110152;
      case '110153': return ParticipationRoleType.value110153;
      case '110154': return ParticipationRoleType.value110154;
      case '110155': return ParticipationRoleType.value110155;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ParticipationRoleType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

