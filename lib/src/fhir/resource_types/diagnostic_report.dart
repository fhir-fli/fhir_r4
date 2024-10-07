import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DiagnosticReport extends DomainResource {
  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept code;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? effectiveFhirDateTime;
  final Element? effectiveFhirDateTimeElement;
  final Period? effectivePeriod;
  final FhirInstant? issued;
  final Element? issuedElement;
  final List<Reference>? performer;
  final List<Reference>? resultsInterpreter;
  final List<Reference>? specimen;
  final List<Reference>? result;
  final List<Reference>? imagingStudy;
  final List<BackboneElement>? media;
  final FhirString? conclusion;
  final Element? conclusionElement;
  final List<CodeableConcept>? conclusionCode;
  final List<Attachment>? presentedForm;

  DiagnosticReport({
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
    required this.status,
this.statusElement,
    this.category,
    required this.code,
    this.subject,
    this.encounter,
    this.effectiveFhirDateTime,
this.effectiveFhirDateTimeElement,
    this.effectivePeriod,
    this.issued,
this.issuedElement,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
this.conclusionElement,
    this.conclusionCode,
    this.presentedForm,
  }) : super(resourceType: R4ResourceType.DiagnosticReport);

@override
DiagnosticReport clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DiagnosticReportMedia extends BackboneElement {
  final FhirString? comment;
  final Element? commentElement;
  final Reference link;

  DiagnosticReportMedia({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.comment,
this.commentElement,
    required this.link,
  });

@override
DiagnosticReportMedia clone() => throw UnimplementedError();
}

