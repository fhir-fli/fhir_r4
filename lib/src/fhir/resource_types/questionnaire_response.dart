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
  final Element? questionnaireElement;
  final FhirCode status;
  final Element? statusElement;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? authored;
  final Element? authoredElement;
  final Reference? author;
  final Reference? source;
  final List<BackboneElement>? item;
  final List<BackboneElement>? answer;

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
this.questionnaireElement,
    required this.status,
this.statusElement,
    this.subject,
    this.encounter,
    this.authored,
this.authoredElement,
    this.author,
    this.source,
    this.item,
    this.answer,
  }) : super(resourceType: R4ResourceType.QuestionnaireResponse);

@override
QuestionnaireResponse clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class QuestionnaireResponseItem extends BackboneElement {
  final FhirString linkId;
  final Element? linkIdElement;
  final FhirUri? definition;
  final Element? definitionElement;
  final FhirString? text;
  final Element? textElement;
  final List<dynamic>? item;

  QuestionnaireResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.linkId,
this.linkIdElement,
    this.definition,
this.definitionElement,
    this.text,
this.textElement,
    this.item,
  });

@override
QuestionnaireResponseItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class QuestionnaireResponseAnswer extends BackboneElement {
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final FhirDecimal? valueFhirDecimal;
  final Element? valueFhirDecimalElement;
  final FhirInteger? valueFhirInteger;
  final Element? valueFhirIntegerElement;
  final FhirDate? valueFhirDate;
  final Element? valueFhirDateElement;
  final FhirDateTime? valueFhirDateTime;
  final Element? valueFhirDateTimeElement;
  final FhirTime? valueFhirTime;
  final Element? valueFhirTimeElement;
  final FhirString? valueFhirString;
  final Element? valueFhirStringElement;
  final FhirUri? valueFhirUri;
  final Element? valueFhirUriElement;
  final Attachment? valueAttachment;
  final Coding? valueCoding;
  final Quantity? valueQuantity;
  final Reference? valueReference;
  final List<dynamic>? item;

  QuestionnaireResponseAnswer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
    this.valueFhirDecimal,
this.valueFhirDecimalElement,
    this.valueFhirInteger,
this.valueFhirIntegerElement,
    this.valueFhirDate,
this.valueFhirDateElement,
    this.valueFhirDateTime,
this.valueFhirDateTimeElement,
    this.valueFhirTime,
this.valueFhirTimeElement,
    this.valueFhirString,
this.valueFhirStringElement,
    this.valueFhirUri,
this.valueFhirUriElement,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
    this.item,
  });

@override
QuestionnaireResponseAnswer clone() => throw UnimplementedError();
}

