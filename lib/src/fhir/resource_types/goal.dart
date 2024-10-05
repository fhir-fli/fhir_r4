import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Goal extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? lifecycleStatus;
  final Element? lifecycleStatusElement;
  final CodeableConcept? achievementStatus;
  final List<CodeableConcept>? category;
  final CodeableConcept? priority;
  final CodeableConcept description;
  final Reference subject;
  final FhirString? startDate;
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
    this.lifecycleStatus,
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
  }): super(resourceType: R4ResourceType.Goal);

@override
Goal clone() => this;

}


@Data()
@JsonCodable()
class GoalTarget {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? measure;
  final Quantity? detailQuantity;
  final Range? detailRange;
  final CodeableConcept? detailCodeableConcept;
  final FhirString? detailString;
  final Element? detailStringElement;
  final bool? detailBoolean;
  final Element? detailBooleanElement;
  final double? detailInteger;
  final Element? detailIntegerElement;
  final Ratio? detailRatio;
  final FhirString? dueDate;
  final Element? dueDateElement;
  final FhirDuration? dueDuration;

  GoalTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}



