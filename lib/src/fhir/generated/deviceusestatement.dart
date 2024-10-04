import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceUseStatement {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference subject;
  final List<Reference> derivedFrom;
  final Timing timingTiming;
  final Period timingPeriod;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final FhirDateTime recordedOn;
  final PrimitiveElement RecordedOn;
  final Reference source;
  final Reference device;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final CodeableConcept bodySite;
  final List<Annotation> note;
  const DeviceUseStatement({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.status,
    this.Status,
    required this.subject,
    this.derivedFrom,
    this.timingTiming,
    this.timingPeriod,
    this.timingDateTime,
    this.TimingDateTime,
    this.recordedOn,
    this.RecordedOn,
    this.source,
    required this.device,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.note,
  });
}
