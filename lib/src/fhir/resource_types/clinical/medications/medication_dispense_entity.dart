import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MedicationDispenseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MedicationDispense';

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

  @ToMany()
  List<ReferenceEntity>? partOf;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? statusReasonCodeableConcept;

  @ToOne()
  ReferenceEntity? statusReasonReference;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? medicationCodeableConcept;

  @ToOne()
  ReferenceEntity? medicationReference;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? context;

  @ToMany()
  List<ReferenceEntity>? supportingInformation;

  @ToMany()
  List<MedicationDispensePerformerEntity>? performer;

  @ToOne()
  ReferenceEntity? location;

  @ToMany()
  List<ReferenceEntity>? authorizingPrescription;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  QuantityEntity? daysSupply;

  String? whenPrepared;

  @ToOne()
  PrimitiveElementEntity? whenPreparedElement;

  String? whenHandedOver;

  @ToOne()
  PrimitiveElementEntity? whenHandedOverElement;

  @ToOne()
  ReferenceEntity? destination;

  @ToMany()
  List<ReferenceEntity>? receiver;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<DosageEntity>? dosageInstruction;

  @ToOne()
  MedicationDispenseSubstitutionEntity? substitution;

  @ToMany()
  List<ReferenceEntity>? detectedIssue;

  @ToMany()
  List<ReferenceEntity>? eventHistory;
}

class MedicationDispensePerformerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? function;

  @ToOne()
  ReferenceEntity? actor;
}

class MedicationDispenseSubstitutionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? wasSubstituted;

  @ToOne()
  PrimitiveElementEntity? wasSubstitutedElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<CodeableConceptEntity>? reason;

  @ToMany()
  List<ReferenceEntity>? responsibleParty;
}
