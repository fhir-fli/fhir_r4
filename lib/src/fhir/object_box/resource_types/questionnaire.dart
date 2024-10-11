import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Questionnaire extends Resource {
  Questionnaire({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    this.derivedFrom,
    required this.status,
    this.experimental,
    this.subjectType,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
  String? title;
  List<String>? derivedFrom;
  String status;
  bool? experimental;
  List<String>? subjectType;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  String? approvalDate;
  String? lastReviewDate;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<Coding>? code = ToMany<Coding>();
  ToMany<QuestionnaireItem>? item = ToMany<QuestionnaireItem>();
}

@Entity()
class QuestionnaireItem {
  QuestionnaireItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.linkId,
    this.definition,
    this.code,
    this.prefix,
    this.text,
    required this.type,
    this.enableWhen,
    this.enableBehavior,
    this.required_,
    this.repeats,
    this.readOnly,
    this.maxLength,
    this.answerValueSet,
    this.answerOption,
    this.initial,
    this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String linkId;
  String? definition;
  ToMany<Coding>? code = ToMany<Coding>();
  String? prefix;
  String? text;
  String type;
  ToMany<QuestionnaireEnableWhen>? enableWhen =
      ToMany<QuestionnaireEnableWhen>();
  String? enableBehavior;
  bool? required_;
  bool? repeats;
  bool? readOnly;
  int? maxLength;
  String? answerValueSet;
  ToMany<QuestionnaireAnswerOption>? answerOption =
      ToMany<QuestionnaireAnswerOption>();
  ToMany<QuestionnaireInitial>? initial = ToMany<QuestionnaireInitial>();
  ToMany<QuestionnaireItem>? item = ToMany<QuestionnaireItem>();
}

@Entity()
class QuestionnaireEnableWhen {
  QuestionnaireEnableWhen({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.question,
    required this.operator_,
    this.answerBoolean,
    this.answerDecimal,
    this.answerInteger,
    this.answerDate,
    this.answerDateTime,
    this.answerTime,
    this.answerString,
    this.answerCoding,
    this.answerQuantity,
    this.answerReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String question;
  String operator_;
  bool? answerBoolean;
  double? answerDecimal;
  int? answerInteger;
  String? answerDate;
  String? answerDateTime;
  String? answerTime;
  String? answerString;
  ToOne<Coding>? answerCoding = ToOne<Coding>();
  ToOne<Quantity>? answerQuantity = ToOne<Quantity>();
  ToOne<Reference>? answerReference = ToOne<Reference>();
}

@Entity()
class QuestionnaireAnswerOption {
  QuestionnaireAnswerOption({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.valueInteger,
    this.valueDate,
    this.valueTime,
    this.valueString,
    this.valueCoding,
    this.valueReference,
    this.initialSelected,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? valueInteger;
  String? valueDate;
  String? valueTime;
  String? valueString;
  ToOne<Coding>? valueCoding = ToOne<Coding>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
  bool? initialSelected;
}

@Entity()
class QuestionnaireInitial {
  QuestionnaireInitial({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.valueBoolean,
    this.valueDecimal,
    this.valueInteger,
    this.valueDate,
    this.valueDateTime,
    this.valueTime,
    this.valueString,
    this.valueUri,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? valueBoolean;
  double? valueDecimal;
  int? valueInteger;
  String? valueDate;
  String? valueDateTime;
  String? valueTime;
  String? valueString;
  String? valueUri;
  ToOne<Attachment>? valueAttachment = ToOne<Attachment>();
  ToOne<Coding>? valueCoding = ToOne<Coding>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
}
