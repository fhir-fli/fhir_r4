import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SpecimenCollection {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference collector;
  final String collectedDateTime;
  final PrimitiveElement CollectedDateTime;
  final Period collectedPeriod;
  final FhirDuration duration;
  final Quantity quantity;
  final CodeableConcept method;
  final CodeableConcept bodySite;
  final CodeableConcept fastingStatusCodeableConcept;
  final FhirDuration fastingStatusDuration;
  const SpecimenCollection({
    this.id,
    this.extension,
    this.modifierExtension,
    this.collector,
    this.collectedDateTime,
    this.CollectedDateTime,
    this.collectedPeriod,
    this.duration,
    this.quantity,
    this.method,
    this.bodySite,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
  });
}
