import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CarePlan extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final List<Reference>? replaces;
  final List<Reference>? partOf;
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode? intent;
  final Element? intentElement;
  final List<CodeableConcept>? category;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? description;
  final Element? descriptionElement;
  final Reference subject;
  final Reference? encounter;
  final Period? period;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference? author;
  final List<Reference>? contributor;
  final List<Reference>? careTeam;
  final List<Reference>? addresses;
  final List<Reference>? supportingInfo;
  final List<Reference>? goal;
  final List<CarePlanActivity>? activity;
  final List<Annotation>? note;

  CarePlan({
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
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.partOf,
    this.status,
    this.statusElement,
    this.intent,
    this.intentElement,
    this.category,
    this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.createdElement,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
  }): super(resourceType: R4ResourceType.CarePlan);

@override
CarePlan clone() => this;

}


@Data()
@JsonCodable()
class CarePlanActivity {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? outcomeCodeableConcept;
  final List<Reference>? outcomeReference;
  final List<Annotation>? progress;
  final Reference? reference;
  final CarePlanDetail? detail;

  CarePlanActivity({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
  });

}


@Data()
@JsonCodable()
class CarePlanDetail {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? kind;
  final Element? kindElement;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final CodeableConcept? code;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Reference>? goal;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;
  final Timing? scheduledTiming;
  final Period? scheduledPeriod;
  final FhirString? scheduledString;
  final Element? scheduledStringElement;
  final Reference? location;
  final List<Reference>? performer;
  final CodeableConcept? productCodeableConcept;
  final Reference? productReference;
  final Quantity? dailyAmount;
  final Quantity? quantity;
  final FhirString? description;
  final Element? descriptionElement;

  CarePlanDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.kind,
    this.kindElement,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    this.status,
    this.statusElement,
    this.statusReason,
    this.doNotPerform,
    this.doNotPerformElement,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.scheduledStringElement,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
    this.descriptionElement,
  });

}


