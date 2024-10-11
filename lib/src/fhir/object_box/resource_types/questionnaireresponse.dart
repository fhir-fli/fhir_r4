import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class QuestionnaireResponse extends Resource {
  QuestionnaireResponse({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.questionnaire,
    required this.status,
    this.subject,
    this.encounter,
    this.authored,
    this.author,
    this.source,
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
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String? questionnaire;
  String status;
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? authored;
  ToOne<Reference>? author = ToOne<Reference>();
  ToOne<Reference>? source = ToOne<Reference>();
  ToMany<QuestionnaireResponseItem>? item = ToMany<QuestionnaireResponseItem>();
}

@Entity()
class QuestionnaireResponseItem {
  QuestionnaireResponseItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.linkId,
    this.definition,
    this.text,
    this.answer,
    this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String linkId;
  String? definition;
  String? text;
  ToMany<QuestionnaireResponseAnswer>? answer =
      ToMany<QuestionnaireResponseAnswer>();
  ToMany<QuestionnaireResponseItem>? item = ToMany<QuestionnaireResponseItem>();
}

@Entity()
class QuestionnaireResponseAnswer {
  QuestionnaireResponseAnswer({
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
    this.item,
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
  ToMany<QuestionnaireResponseItem>? item = ToMany<QuestionnaireResponseItem>();
}
