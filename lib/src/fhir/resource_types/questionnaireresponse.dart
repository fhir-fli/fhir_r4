import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class QuestionnaireResponse extends DomainResource {
  final Identifier? identifier;
  final List<Reference>? basedOn;
  final List<Reference>? partOf;
  final FhirCanonical? questionnaire;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? authored;
  final Element? authoredElement;
  final Reference? author;
  final Reference? source;
  final List<QuestionnaireResponseItem>? item;

  QuestionnaireResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.questionnaire,
    this.status,
    this.statusElement,
    this.subject,
    this.encounter,
    this.authored,
    this.authoredElement,
    this.author,
    this.source,
    this.item,
  }): super(resourceType: R4ResourceType.QuestionnaireResponse);

@override
QuestionnaireResponse clone() => this;

}


@Data()
@JsonCodable()
class QuestionnaireResponseItem {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? linkId;
  final Element? linkIdElement;
  final FhirUri? definition;
  final Element? definitionElement;
  final FhirString? text;
  final Element? textElement;
  final List<QuestionnaireResponseAnswer>? answer;
  final List<QuestionnaireResponseItem>? item;

  QuestionnaireResponseItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.linkId,
    this.linkIdElement,
    this.definition,
    this.definitionElement,
    this.text,
    this.textElement,
    this.answer,
    this.item,
  });

}


@Data()
@JsonCodable()
class QuestionnaireResponseAnswer {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final double? valueDecimal;
  final Element? valueDecimalElement;
  final double? valueInteger;
  final Element? valueIntegerElement;
  final FhirString? valueDate;
  final Element? valueDateElement;
  final FhirString? valueDateTime;
  final Element? valueDateTimeElement;
  final FhirString? valueTime;
  final Element? valueTimeElement;
  final FhirString? valueString;
  final Element? valueStringElement;
  final FhirString? valueUri;
  final Element? valueUriElement;
  final Attachment? valueAttachment;
  final Coding? valueCoding;
  final Quantity? valueQuantity;
  final Reference? valueReference;
  final List<QuestionnaireResponseItem>? item;

  QuestionnaireResponseAnswer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDate,
    this.valueDateElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueString,
    this.valueStringElement,
    this.valueUri,
    this.valueUriElement,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
    this.item,
  });

}



