import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SupplyRequest extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? category;
  final FhirCode? priority;
  final Element? priorityElement;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final Quantity quantity;
  final List<BackboneElement>? parameter;
  final FhirDateTime? occurrenceFhirDateTime;
  final Element? occurrenceFhirDateTimeElement;
  final Period? occurrencePeriod;
  final Timing? occurrenceTiming;
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;
  final Reference? requester;
  final List<Reference>? supplier;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final Reference? deliverFrom;
  final Reference? deliverTo;

  SupplyRequest({
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
    this.status,
this.statusElement,
    this.category,
    this.priority,
this.priorityElement,
    required this.itemCodeableConcept,
    required this.itemReference,
    required this.quantity,
    this.parameter,
    this.occurrenceFhirDateTime,
this.occurrenceFhirDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
this.authoredOnElement,
    this.requester,
    this.supplier,
    this.reasonCode,
    this.reasonReference,
    this.deliverFrom,
    this.deliverTo,
  }) : super(resourceType: R4ResourceType.SupplyRequest);

@override
SupplyRequest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SupplyRequestParameter extends BackboneElement {
  final CodeableConcept? code;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final Range? valueRange;
  final FhirBoolean? valueFhirBoolean;
  final Element? valueFhirBooleanElement;

  SupplyRequestParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueFhirBoolean,
this.valueFhirBooleanElement,
  });

@override
SupplyRequestParameter clone() => throw UnimplementedError();
}

