import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SupplyDelivery {
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
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference patient;
  final CodeableConcept type;
  final SupplyDelivery_SuppliedItem suppliedItem;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final Reference supplier;
  final Reference destination;
  final List<Reference> receiver;
  const SupplyDelivery({
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
    this.partOf,
    this.status,
    this.Status,
    this.patient,
    this.type,
    this.suppliedItem,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.supplier,
    this.destination,
    this.receiver,
  });
}
