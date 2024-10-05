import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ChargeItem extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirUri>? definitionUri;
  final List<Element>? definitionUriElement;
  final List<FhirCanonical>? definitionCanonical;
  final FhirCode? status;
  final Element? statusElement;
  final List<Reference>? partOf;
  final CodeableConcept code;
  final Reference subject;
  final Reference? context;
  final FhirString? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Period? occurrencePeriod;
  final Timing? occurrenceTiming;
  final List<ChargeItemPerformer>? performer;
  final Reference? performingOrganization;
  final Reference? requestingOrganization;
  final Reference? costCenter;
  final Quantity? quantity;
  final List<CodeableConcept>? bodysite;
  final FhirDecimal? factorOverride;
  final Element? factorOverrideElement;
  final Money? priceOverride;
  final FhirString? overrideReason;
  final Element? overrideReasonElement;
  final Reference? enterer;
  final FhirDateTime? enteredDate;
  final Element? enteredDateElement;
  final List<CodeableConcept>? reason;
  final List<Reference>? service;
  final Reference? productReference;
  final CodeableConcept? productCodeableConcept;
  final List<Reference>? account;
  final List<Annotation>? note;
  final List<Reference>? supportingInformation;

  ChargeItem({
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
    this.definitionUri,
    this.definitionUriElement,
    this.definitionCanonical,
    this.status,
    this.statusElement,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.factorOverrideElement,
    this.priceOverride,
    this.overrideReason,
    this.overrideReasonElement,
    this.enterer,
    this.enteredDate,
    this.enteredDateElement,
    this.reason,
    this.service,
    this.productReference,
    this.productCodeableConcept,
    this.account,
    this.note,
    this.supportingInformation,
  }): super(resourceType: R4ResourceType.ChargeItem);

@override
ChargeItem clone() => this;

}


@Data()
@JsonCodable()
class ChargeItemPerformer {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? function_;
  final Reference actor;

  ChargeItemPerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

}



