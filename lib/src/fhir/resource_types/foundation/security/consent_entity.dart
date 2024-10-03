import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ConsentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Consent';

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

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? scope;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  ReferenceEntity? patient;

  String? dateTime;

  @ToOne()
  PrimitiveElementEntity? dateTimeElement;

  @ToMany()
  List<ReferenceEntity>? performer;

  @ToMany()
  List<ReferenceEntity>? organization;

  @ToOne()
  AttachmentEntity? sourceAttachment;

  @ToOne()
  ReferenceEntity? sourceReference;

  @ToMany()
  List<ConsentPolicyEntity>? policy;

  @ToOne()
  CodeableConceptEntity? policyRule;

  @ToMany()
  List<ConsentVerificationEntity>? verification;

  @ToOne()
  ConsentProvisionEntity? provision;
}

class ConsentPolicyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? authority;

  @ToOne()
  PrimitiveElementEntity? authorityElement;

  String? uri;

  @ToOne()
  PrimitiveElementEntity? uriElement;
}

class ConsentVerificationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? verified;

  @ToOne()
  PrimitiveElementEntity? verifiedElement;

  @ToOne()
  ReferenceEntity? verifiedWith;

  String? verificationDate;

  @ToOne()
  PrimitiveElementEntity? verificationDateElement;
}

class ConsentProvisionEntity {
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

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<ConsentActorEntity>? actor;

  @ToMany()
  List<CodeableConceptEntity>? action;

  @ToMany()
  List<CodingEntity>? securityLabel;

  @ToMany()
  List<CodingEntity>? purpose;

  @ToMany()
  List<CodingEntity>? class_;

  @ToMany()
  List<CodeableConceptEntity>? code;

  @ToOne()
  PeriodEntity? dataPeriod;

  @ToMany()
  List<ConsentDataEntity>? data;

  @ToMany()
  List<ConsentProvisionEntity>? provision;
}

class ConsentActorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? role;

  @ToOne()
  ReferenceEntity? reference;
}

class ConsentDataEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? meaning;

  @ToOne()
  PrimitiveElementEntity? meaningElement;

  @ToOne()
  ReferenceEntity? reference;
}
