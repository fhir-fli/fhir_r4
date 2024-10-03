import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class QuestionnaireEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Questionnaire';

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

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  List<String>? derivedFrom;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  List<String>? subjectType;

  @ToMany()
  List<PrimitiveElementEntity>? subjectTypeElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? approvalDate;

  @ToOne()
  PrimitiveElementEntity? approvalDateElement;

  String? lastReviewDate;

  @ToOne()
  PrimitiveElementEntity? lastReviewDateElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  @ToMany()
  List<CodingEntity>? code;

  @ToMany()
  List<QuestionnaireItemEntity>? item;
}

class QuestionnaireItemEntity {
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

  @ToMany()
  List<CodingEntity>? code;

  String? prefix;

  @ToOne()
  PrimitiveElementEntity? prefixElement;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToMany()
  List<QuestionnaireEnableWhenEntity>? enableWhen;

  String? enableBehavior;

  @ToOne()
  PrimitiveElementEntity? enableBehaviorElement;

  bool? required_;

  @ToOne()
  PrimitiveElementEntity? requiredElement;

  bool? repeats;

  @ToOne()
  PrimitiveElementEntity? repeatsElement;

  bool? readOnly;

  @ToOne()
  PrimitiveElementEntity? readOnlyElement;

  int? maxLength;

  @ToOne()
  PrimitiveElementEntity? maxLengthElement;

  String? answerValueSet;

  @ToMany()
  List<QuestionnaireAnswerOptionEntity>? answerOption;

  @ToMany()
  List<QuestionnaireInitialEntity>? initial;

  @ToMany()
  List<QuestionnaireItemEntity>? item;
}

class QuestionnaireEnableWhenEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? question;

  @ToOne()
  PrimitiveElementEntity? questionElement;

  String? operator_;

  @ToOne()
  PrimitiveElementEntity? operatorElement;

  bool? answerBoolean;

  @ToOne()
  PrimitiveElementEntity? answerBooleanElement;

  double? answerDecimal;

  @ToOne()
  PrimitiveElementEntity? answerDecimalElement;

  int? answerInteger;

  @ToOne()
  PrimitiveElementEntity? answerIntegerElement;

  String? answerDate;

  @ToOne()
  PrimitiveElementEntity? answerDateElement;

  String? answerDateTime;

  @ToOne()
  PrimitiveElementEntity? answerDateTimeElement;

  String? answerTime;

  @ToOne()
  PrimitiveElementEntity? answerTimeElement;

  String? answerString;

  @ToOne()
  PrimitiveElementEntity? answerStringElement;

  @ToOne()
  CodingEntity? answerCoding;

  @ToOne()
  QuantityEntity? answerQuantity;

  @ToOne()
  ReferenceEntity? answerReference;
}

class QuestionnaireAnswerOptionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  String? valueDate;

  @ToOne()
  PrimitiveElementEntity? valueDateElement;

  String? valueTime;

  @ToOne()
  PrimitiveElementEntity? valueTimeElement;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  @ToOne()
  CodingEntity? valueCoding;

  @ToOne()
  ReferenceEntity? valueReference;

  bool? initialSelected;

  @ToOne()
  PrimitiveElementEntity? initialSelectedElement;
}

class QuestionnaireInitialEntity {
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
}
