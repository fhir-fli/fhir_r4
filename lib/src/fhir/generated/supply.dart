import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class SupplyDelivery {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference patient;
  final CodeableConcept type;
  final SupplyDeliverySuppliedItem suppliedItem;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final Reference supplier;
  final Reference destination;
  final List<Reference> receiver;
  const SupplyDelivery({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.basedOn,
    required this.partOf,
    required this.status,
    required this.statusElement,
    required this.patient,
    required this.type,
    required this.suppliedItem,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrencePeriod,
    required this.occurrenceTiming,
    required this.supplier,
    required this.destination,
    required this.receiver,
  });
}

@Data()
@JsonCodable()
class SupplyDeliverySuppliedItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity quantity;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  const SupplyDeliverySuppliedItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.quantity,
    required this.itemCodeableConcept,
    required this.itemReference,
  });
}

@Data()
@JsonCodable()
class SupplyRequest {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept category;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final Quantity quantity;
  final List<SupplyRequestParameter> parameter;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final FhirDateTime authoredOn;
  final PrimitiveElement authoredOnElement;
  final Reference requester;
  final List<Reference> supplier;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final Reference deliverFrom;
  final Reference deliverTo;
  const SupplyRequest({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.category,
    required this.priority,
    required this.priorityElement,
    required this.itemCodeableConcept,
    required this.itemReference,
    required this.quantity,
    required this.parameter,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrencePeriod,
    required this.occurrenceTiming,
    required this.authoredOn,
    required this.authoredOnElement,
    required this.requester,
    required this.supplier,
    required this.reasonCode,
    required this.reasonReference,
    required this.deliverFrom,
    required this.deliverTo,
  });
}

@Data()
@JsonCodable()
class SupplyRequestParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  const SupplyRequestParameter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueBoolean,
    required this.valueBooleanElement,
  });
}


