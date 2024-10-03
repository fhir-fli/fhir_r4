import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DocumentReferenceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DocumentReference';

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
  IdentifierEntity? masterIdentifier;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? docStatus;

  @ToOne()
  PrimitiveElementEntity? docStatusElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  ReferenceEntity? subject;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToMany()
  List<ReferenceEntity>? author;

  @ToOne()
  ReferenceEntity? authenticator;

  @ToOne()
  ReferenceEntity? custodian;

  @ToMany()
  List<DocumentReferenceRelatesToEntity>? relatesTo;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<CodeableConceptEntity>? securityLabel;

  @ToMany()
  List<DocumentReferenceContentEntity>? content;

  @ToOne()
  DocumentReferenceContextEntity? context;
}

class DocumentReferenceRelatesToEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  @ToOne()
  ReferenceEntity? target;
}

class DocumentReferenceContentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  AttachmentEntity? attachment;

  @ToOne()
  CodingEntity? format;
}

class DocumentReferenceContextEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ReferenceEntity>? encounter;

  @ToMany()
  List<CodeableConceptEntity>? event;

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  CodeableConceptEntity? facilityType;

  @ToOne()
  CodeableConceptEntity? practiceSetting;

  @ToOne()
  ReferenceEntity? sourcePatientInfo;

  @ToMany()
  List<ReferenceEntity>? related;
}
