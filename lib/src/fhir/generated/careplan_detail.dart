import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CarePlanDetail {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final CodeableConcept code;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> goal;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final Timing scheduledTiming;
  final Period scheduledPeriod;
  final String scheduledString;
  final PrimitiveElement ScheduledString;
  final Reference location;
  final List<Reference> performer;
  final CodeableConcept productCodeableConcept;
  final Reference productReference;
  final Quantity dailyAmount;
  final Quantity quantity;
  final String description;
  final PrimitiveElement Description;
  const CarePlanDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.kind,
    this.Kind,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.InstantiatesUri,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    this.status,
    this.Status,
    this.statusReason,
    this.doNotPerform,
    this.DoNotPerform,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.ScheduledString,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
    this.Description,
  });
}
