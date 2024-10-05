import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class GuidanceResponse extends DomainResource {
  final Identifier? requestIdentifier;
  final List<Identifier>? identifier;
  final FhirString? moduleUri;
  final Element? moduleUriElement;
  final FhirString? moduleCanonical;
  final Element? moduleCanonicalElement;
  final CodeableConcept? moduleCodeableConcept;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Reference? performer;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Annotation>? note;
  final List<Reference>? evaluationMessage;
  final Reference? outputParameters;
  final Reference? result;
  final List<DataRequirement>? dataRequirement;

  GuidanceResponse({
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
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this.moduleUriElement,
    this.moduleCanonical,
    this.moduleCanonicalElement,
    this.moduleCodeableConcept,
    this.status,
    this.statusElement,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement,
  }): super(resourceType: R4ResourceType.GuidanceResponse);

@override
GuidanceResponse clone() => this;

}



