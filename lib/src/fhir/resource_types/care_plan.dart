import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class CarePlan extends DomainResource {
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
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.partOf,
    required this.status,
    this.statusElement,
    required this.intent,
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
  }) : super(resourceType: R4ResourceType.CarePlan);

  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final List<Reference>? replaces;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode intent;
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
  @override
  CarePlan clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class CarePlanActivity extends BackboneElement {
  CarePlanActivity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
  });

  final List<CodeableConcept>? outcomeCodeableConcept;
  final List<Reference>? outcomeReference;
  final List<Annotation>? progress;
  final Reference? reference;
  final CarePlanDetail? detail;
  @override
  CarePlanActivity clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class CarePlanDetail extends BackboneElement {
  CarePlanDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.kind,
    this.kindElement,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    required this.status,
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

  final FhirCode? kind;
  final Element? kindElement;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final CodeableConcept? code;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Reference>? goal;
  final FhirCode status;
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
  @override
  CarePlanDetail clone() => throw UnimplementedError();
}
