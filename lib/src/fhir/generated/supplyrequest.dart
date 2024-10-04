import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SupplyRequest {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept category;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final Quantity quantity;
  final List<SupplyRequestParameter> parameter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference requester;
  final List<Reference> supplier;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final Reference deliverFrom;
  final Reference deliverTo;
  const SupplyRequest({
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
    this.status,
    this.Status,
    this.category,
    this.priority,
    this.Priority,
    this.itemCodeableConcept,
    this.itemReference,
    required this.quantity,
    this.parameter,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.AuthoredOn,
    this.requester,
    this.supplier,
    this.reasonCode,
    this.reasonReference,
    this.deliverFrom,
    this.deliverTo,
  });
}
