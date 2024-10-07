import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Goal extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode lifecycleStatus;
  final Element? lifecycleStatusElement;
  final CodeableConcept? achievementStatus;
  final List<CodeableConcept>? category;
  final CodeableConcept? priority;
  final CodeableConcept description;
  final Reference subject;
  final FhirDate? startFhirDate;
  final Element? startFhirDateElement;
  final CodeableConcept? startCodeableConcept;
  final List<BackboneElement>? target;
  final FhirDate? statusDate;
  final Element? statusDateElement;
  final FhirString? statusReason;
  final Element? statusReasonElement;
  final Reference? expressedBy;
  final List<Reference>? addresses;
  final List<Annotation>? note;
  final List<CodeableConcept>? outcomeCode;
  final List<Reference>? outcomeReference;

  Goal({
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
    required this.lifecycleStatus,
this.lifecycleStatusElement,
    this.achievementStatus,
    this.category,
    this.priority,
    required this.description,
    required this.subject,
    this.startFhirDate,
this.startFhirDateElement,
    this.startCodeableConcept,
    this.target,
    this.statusDate,
this.statusDateElement,
    this.statusReason,
this.statusReasonElement,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
  }) : super(resourceType: R4ResourceType.Goal);

@override
Goal clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class GoalTarget extends BackboneElement {
  final CodeableConcept? measure;
  final Quantity? detailQuantity;
  final Range? detailRange;
  final CodeableConcept? detailCodeableConcept;
  final FhirString? detailFhirString;
  final Element? detailFhirStringElement;
  final FhirBoolean? detailFhirBoolean;
  final Element? detailFhirBooleanElement;
  final FhirInteger? detailFhirInteger;
  final Element? detailFhirIntegerElement;
  final Ratio? detailRatio;
  final FhirDate? dueFhirDate;
  final Element? dueFhirDateElement;
  final FhirDuration? dueFhirDuration;

  GoalTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailFhirString,
this.detailFhirStringElement,
    this.detailFhirBoolean,
this.detailFhirBooleanElement,
    this.detailFhirInteger,
this.detailFhirIntegerElement,
    this.detailRatio,
    this.dueFhirDate,
this.dueFhirDateElement,
    this.dueFhirDuration,
  });

@override
GoalTarget clone() => throw UnimplementedError();
}

