import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class QuestionnaireResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'QuestionnaireResponse';

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
  IdentifierEntity? identifier;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<ReferenceEntity>? partOf;

  String? questionnaire;

  @ToOne()
  PrimitiveElementEntity? questionnaireElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? authored;

  @ToOne()
  PrimitiveElementEntity? authoredElement;

  @ToOne()
  ReferenceEntity? author;

  @ToOne()
  ReferenceEntity? source;

  @ToMany()
  List<QuestionnaireResponseItemEntity>? item;
}

class QuestionnaireResponseItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? linkId;

  @ToOne()
  PrimitiveElementEntity? linkIdElement;

  String? definition;

  @ToOne()
  PrimitiveElementEntity? definitionElement;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  @ToMany()
  List<QuestionnaireResponseAnswerEntity>? answer;

  @ToMany()
  List<QuestionnaireResponseItemEntity>? item;
}

class QuestionnaireResponseAnswerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  double? valueDecimal;

  @ToOne()
  PrimitiveElementEntity? valueDecimalElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  String? valueDate;

  @ToOne()
  PrimitiveElementEntity? valueDateElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;

  String? valueTime;

  @ToOne()
  PrimitiveElementEntity? valueTimeElement;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  String? valueUri;

  @ToOne()
  PrimitiveElementEntity? valueUriElement;

  @ToOne()
  AttachmentEntity? valueAttachment;

  @ToOne()
  CodingEntity? valueCoding;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  ReferenceEntity? valueReference;

  @ToMany()
  List<QuestionnaireResponseItemEntity>? item;
}
