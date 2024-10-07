import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class DiagnosticReport extends DomainResource {
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
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
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

  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept code;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;
  final Period? effectivePeriod;
  final FhirInstant? issued;
  final Element? issuedElement;
  final List<Reference>? performer;
  final List<Reference>? resultsInterpreter;
  final List<Reference>? specimen;
  final List<Reference>? result;
  final List<Reference>? imagingStudy;
  final List<DiagnosticReportMedia>? media;
  final FhirString? conclusion;
  final Element? conclusionElement;
  final List<CodeableConcept>? conclusionCode;
  final List<Attachment>? presentedForm;
  @override
  DiagnosticReport clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DiagnosticReportMedia extends BackboneElement {
  DiagnosticReportMedia({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.comment,
    this.commentElement,
    required this.link,
  });

  final FhirString? comment;
  final Element? commentElement;
  final Reference link;
  @override
  DiagnosticReportMedia clone() => throw UnimplementedError();
}
