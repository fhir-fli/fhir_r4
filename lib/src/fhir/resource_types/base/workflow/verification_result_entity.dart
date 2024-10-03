import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class VerificationResultEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'VerificationResult';

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
  List<ReferenceEntity>? target;

  List<String>? targetLocation;

  @ToMany()
  List<PrimitiveElementEntity>? targetLocationElement;

  @ToOne()
  CodeableConceptEntity? need;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? statusDate;

  @ToOne()
  PrimitiveElementEntity? statusDateElement;

  @ToOne()
  CodeableConceptEntity? validationType;

  @ToMany()
  List<CodeableConceptEntity>? validationProcess;

  @ToOne()
  TimingEntity? frequency;

  String? lastPerformed;

  @ToOne()
  PrimitiveElementEntity? lastPerformedElement;

  String? nextScheduled;

  @ToOne()
  PrimitiveElementEntity? nextScheduledElement;

  @ToOne()
  CodeableConceptEntity? failureAction;

  @ToMany()
  List<VerificationResultPrimarySourceEntity>? primarySource;

  @ToOne()
  VerificationResultAttestationEntity? attestation;

  @ToMany()
  List<VerificationResultValidatorEntity>? validator;
}

class VerificationResultPrimarySourceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? who;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToMany()
  List<CodeableConceptEntity>? communicationMethod;

  @ToOne()
  CodeableConceptEntity? validationStatus;

  String? validationDate;

  @ToOne()
  PrimitiveElementEntity? validationDateElement;

  @ToOne()
  CodeableConceptEntity? canPushUpdates;

  @ToMany()
  List<CodeableConceptEntity>? pushTypeAvailable;
}

class VerificationResultAttestationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? who;

  @ToOne()
  ReferenceEntity? onBehalfOf;

  @ToOne()
  CodeableConceptEntity? communicationMethod;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? sourceIdentityCertificate;

  @ToOne()
  PrimitiveElementEntity? sourceIdentityCertificateElement;

  String? proxyIdentityCertificate;

  @ToOne()
  PrimitiveElementEntity? proxyIdentityCertificateElement;

  @ToOne()
  SignatureEntity? proxySignature;

  @ToOne()
  SignatureEntity? sourceSignature;
}

class VerificationResultValidatorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? organization;

  String? identityCertificate;

  @ToOne()
  PrimitiveElementEntity? identityCertificateElement;

  @ToOne()
  SignatureEntity? attestationSignature;
}
