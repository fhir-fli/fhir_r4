import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class DeviceUseStatement extends DomainResource {
  DeviceUseStatement({
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
    required this.subject,
    this.derivedFrom,
    this.timingTiming,
    this.timingPeriod,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.recordedOn,
    this.recordedOnElement,
    this.source,
    required this.device,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.note,
  }) : super(resourceType: R4ResourceType.DeviceUseStatement);

  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final FhirCode status;
  final Element? statusElement;
  final Reference subject;
  final List<Reference>? derivedFrom;
  final Timing? timingTiming;
  final Period? timingPeriod;
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;
  final FhirDateTime? recordedOn;
  final Element? recordedOnElement;
  final Reference? source;
  final Reference device;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final CodeableConcept? bodySite;
  final List<Annotation>? note;
  @override
  DeviceUseStatement clone() => throw UnimplementedError();
}
