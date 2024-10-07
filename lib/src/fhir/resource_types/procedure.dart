import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Procedure extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final CodeableConcept? category;
  final CodeableConcept? code;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? performedDateTime;
  final Element? performedDateTimeElement;
  final Period? performedPeriod;
  final FhirString? performedString;
  final Element? performedStringElement;
  final Age? performedAge;
  final Range? performedRange;
  final Reference? recorder;
  final Reference? asserter;
  final List<ProcedurePerformer>? performer;
  final Reference? location;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<CodeableConcept>? bodySite;
  final CodeableConcept? outcome;
  final List<Reference>? report;
  final List<CodeableConcept>? complication;
  final List<Reference>? complicationDetail;
  final List<CodeableConcept>? followUp;
  final List<Annotation>? note;
  final List<ProcedureFocalDevice>? focalDevice;
  final List<Reference>? usedReference;
  final List<CodeableConcept>? usedCode;

  Procedure({
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
    this.instantiatesCanonical,
this.instantiatesCanonicalElement,
    this.instantiatesUri,
this.instantiatesUriElement,
    this.basedOn,
    this.partOf,
    required this.status,
this.statusElement,
    this.statusReason,
    this.category,
    this.code,
    required this.subject,
    this.encounter,
    this.performedDateTime,
this.performedDateTimeElement,
    this.performedPeriod,
    this.performedString,
this.performedStringElement,
    this.performedAge,
    this.performedRange,
    this.recorder,
    this.asserter,
    this.performer,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.complicationDetail,
    this.followUp,
    this.note,
    this.focalDevice,
    this.usedReference,
    this.usedCode,
  }) : super(resourceType: R4ResourceType.Procedure);

@override
Procedure clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ProcedurePerformer extends BackboneElement {
  final CodeableConcept? function_;
  final Reference actor;
  final Reference? onBehalfOf;

  ProcedurePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
  });

@override
ProcedurePerformer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ProcedureFocalDevice extends BackboneElement {
  final CodeableConcept? action;
  final Reference manipulated;

  ProcedureFocalDevice({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    required this.manipulated,
  });

@override
ProcedureFocalDevice clone() => throw UnimplementedError();
}

