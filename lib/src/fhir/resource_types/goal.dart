import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Goal extends DomainResource {
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
    this.startDate,
    this.startDateElement,
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

  final List<Identifier>? identifier;
  final FhirCode lifecycleStatus;
  final Element? lifecycleStatusElement;
  final CodeableConcept? achievementStatus;
  final List<CodeableConcept>? category;
  final CodeableConcept? priority;
  final CodeableConcept description;
  final Reference subject;
  final FhirDate? startDate;
  final Element? startDateElement;
  final CodeableConcept? startCodeableConcept;
  final List<GoalTarget>? target;
  final FhirDate? statusDate;
  final Element? statusDateElement;
  final FhirString? statusReason;
  final Element? statusReasonElement;
  final Reference? expressedBy;
  final List<Reference>? addresses;
  final List<Annotation>? note;
  final List<CodeableConcept>? outcomeCode;
  final List<Reference>? outcomeReference;
  @override
  Goal clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class GoalTarget extends BackboneElement {
  GoalTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailString,
    this.detailStringElement,
    this.detailBoolean,
    this.detailBooleanElement,
    this.detailInteger,
    this.detailIntegerElement,
    this.detailRatio,
    this.dueDate,
    this.dueDateElement,
    this.dueDuration,
  });

  final CodeableConcept? measure;
  final Quantity? detailQuantity;
  final Range? detailRange;
  final CodeableConcept? detailCodeableConcept;
  final FhirString? detailString;
  final Element? detailStringElement;
  final FhirBoolean? detailBoolean;
  final Element? detailBooleanElement;
  final FhirInteger? detailInteger;
  final Element? detailIntegerElement;
  final Ratio? detailRatio;
  final FhirDate? dueDate;
  final Element? dueDateElement;
  final FhirDuration? dueDuration;
  @override
  GoalTarget clone() => throw UnimplementedError();
}
