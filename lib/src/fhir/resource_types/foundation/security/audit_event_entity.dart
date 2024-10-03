import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class AuditEventEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'AuditEvent';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodingEntity? type;

  @ToMany()
  List<CodingEntity>? subtype;

  String? action;

  @ToOne()
  PrimitiveElementEntity? actionElement;

  @ToOne()
  PeriodEntity? period;

  String? recorded;

  @ToOne()
  PrimitiveElementEntity? recordedElement;

  String? outcome;

  @ToOne()
  PrimitiveElementEntity? outcomeElement;

  String? outcomeDesc;

  @ToOne()
  PrimitiveElementEntity? outcomeDescElement;

  @ToMany()
  List<CodeableConceptEntity>? purposeOfEvent;

  @ToMany()
  List<AuditEventAgentEntity>? agent;

  @ToOne()
  AuditEventSourceEntity? source;

  @ToMany()
  List<AuditEventEntityEntity>? entity;
}

class AuditEventAgentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<CodeableConceptEntity>? role;

  @ToOne()
  ReferenceEntity? who;

  String? altId;

  @ToOne()
  PrimitiveElementEntity? altIdElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  bool? requestor;

  @ToOne()
  PrimitiveElementEntity? requestorElement;

  @ToOne()
  ReferenceEntity? location;

  List<FhirUri>? policy;

  @ToMany()
  List<PrimitiveElementEntity>? policyElement;

  @ToOne()
  CodingEntity? media;

  @ToOne()
  AuditEventNetworkEntity? network;

  @ToMany()
  List<CodeableConceptEntity>? purposeOfUse;
}

class AuditEventNetworkEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? address;

  @ToOne()
  PrimitiveElementEntity? addressElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;
}

class AuditEventSourceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? site;

  @ToOne()
  PrimitiveElementEntity? siteElement;

  @ToOne()
  ReferenceEntity? observer;

  @ToMany()
  List<CodingEntity>? type;
}

class AuditEventEntityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? what;

  @ToOne()
  CodingEntity? type;

  @ToOne()
  CodingEntity? role;

  @ToOne()
  CodingEntity? lifecycle;

  @ToMany()
  List<CodingEntity>? securityLabel;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? query;

  @ToOne()
  PrimitiveElementEntity? queryElement;

  @ToMany()
  List<AuditEventDetailEntity>? detail;
}

class AuditEventDetailEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  String? valueBase64Binary;

  @ToOne()
  PrimitiveElementEntity? valueBase64BinaryElement;
}
