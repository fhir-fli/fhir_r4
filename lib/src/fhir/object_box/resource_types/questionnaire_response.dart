// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxQuestionnaireResponse {
  ObjectBoxQuestionnaireResponse({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? identifier,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? partOf,
    this.questionnaire,
    ObjectBoxElement? questionnaireElement,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.authored,
    ObjectBoxElement? authoredElement,
    ObjectBoxReference? author,
    ObjectBoxReference? source,
    List<ObjectBoxQuestionnaireResponseItem>? item,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.basedOn.addAll(basedOn ?? []);
    this.partOf.addAll(partOf ?? []);
    this.questionnaireElement.target = questionnaireElement;
    this.statusElement.target = statusElement;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.authoredElement.target = authoredElement;
    this.author.target = author;
    this.source.target = source;
    this.item.addAll(item ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String? questionnaire;
  ToOne<ObjectBoxElement> questionnaireElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? authored;
  ToOne<ObjectBoxElement> authoredElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> source = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxQuestionnaireResponseItem> item =
      ToMany<ObjectBoxQuestionnaireResponseItem>();
}

@Entity()
class ObjectBoxQuestionnaireResponseItem {
  ObjectBoxQuestionnaireResponseItem({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.linkId,
    ObjectBoxElement? linkIdElement,
    this.definition,
    ObjectBoxElement? definitionElement,
    this.text,
    ObjectBoxElement? textElement,
    List<ObjectBoxQuestionnaireResponseAnswer>? answer,
    List<ObjectBoxQuestionnaireResponseItem>? item,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.linkIdElement.target = linkIdElement;
    this.definitionElement.target = definitionElement;
    this.textElement.target = textElement;
    this.answer.addAll(answer ?? []);
    this.item.addAll(item ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String linkId;
  ToOne<ObjectBoxElement> linkIdElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxQuestionnaireResponseAnswer> answer =
      ToMany<ObjectBoxQuestionnaireResponseAnswer>();
  ToMany<ObjectBoxQuestionnaireResponseItem> item =
      ToMany<ObjectBoxQuestionnaireResponseItem>();
}

@Entity()
class ObjectBoxQuestionnaireResponseAnswer {
  ObjectBoxQuestionnaireResponseAnswer({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueDecimal,
    ObjectBoxElement? valueDecimalElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueDate,
    ObjectBoxElement? valueDateElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    this.valueTime,
    ObjectBoxElement? valueTimeElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueUri,
    ObjectBoxElement? valueUriElement,
    ObjectBoxAttachment? valueAttachment,
    ObjectBoxCoding? valueCoding,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxReference? valueReference,
    List<ObjectBoxQuestionnaireResponseItem>? item,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueDecimalElement.target = valueDecimalElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueDateElement.target = valueDateElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valueTimeElement.target = valueTimeElement;
    this.valueStringElement.target = valueStringElement;
    this.valueUriElement.target = valueUriElement;
    this.valueAttachment.target = valueAttachment;
    this.valueCoding.target = valueCoding;
    this.valueQuantity.target = valueQuantity;
    this.valueReference.target = valueReference;
    this.item.addAll(item ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement> valueDecimalElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  String? valueDate;
  ToOne<ObjectBoxElement> valueDateElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  String? valueTime;
  ToOne<ObjectBoxElement> valueTimeElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement> valueUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAttachment> valueAttachment = ToOne<ObjectBoxAttachment>();
  ToOne<ObjectBoxCoding> valueCoding = ToOne<ObjectBoxCoding>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxQuestionnaireResponseItem> item =
      ToMany<ObjectBoxQuestionnaireResponseItem>();
}
