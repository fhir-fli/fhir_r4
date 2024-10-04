import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Goal {
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
  final FhirCode lifecycleStatus;
  final PrimitiveElement lifecycleStatusElement;
  final CodeableConcept achievementStatus;
  final List<CodeableConcept> category;
  final CodeableConcept priority;
  final CodeableConcept description;
  final Reference subject;
  final String startDate;
  final PrimitiveElement startDateElement;
  final CodeableConcept startCodeableConcept;
  final List<GoalTarget> target;
  final FhirDate statusDate;
  final PrimitiveElement statusDateElement;
  final String statusReason;
  final PrimitiveElement statusReasonElement;
  final Reference expressedBy;
  final List<Reference> addresses;
  final List<Annotation> note;
  final List<CodeableConcept> outcomeCode;
  final List<Reference> outcomeReference;
  const Goal({
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
    required this.lifecycleStatus,
    required this.lifecycleStatusElement,
    required this.achievementStatus,
    required this.category,
    required this.priority,
    required this.description,
    required this.subject,
    required this.startDate,
    required this.startDateElement,
    required this.startCodeableConcept,
    required this.target,
    required this.statusDate,
    required this.statusDateElement,
    required this.statusReason,
    required this.statusReasonElement,
    required this.expressedBy,
    required this.addresses,
    required this.note,
    required this.outcomeCode,
    required this.outcomeReference,
  });
}

@Data()
@JsonCodable()
class GoalTarget {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept measure;
  final Quantity detailQuantity;
  final Range detailRange;
  final CodeableConcept detailCodeableConcept;
  final String detailString;
  final PrimitiveElement detailStringElement;
  final bool detailBoolean;
  final PrimitiveElement detailBooleanElement;
  final double detailInteger;
  final PrimitiveElement detailIntegerElement;
  final Ratio detailRatio;
  final String dueDate;
  final PrimitiveElement dueDateElement;
  final FhirDuration dueDuration;
  const GoalTarget({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.measure,
    required this.detailQuantity,
    required this.detailRange,
    required this.detailCodeableConcept,
    required this.detailString,
    required this.detailStringElement,
    required this.detailBoolean,
    required this.detailBooleanElement,
    required this.detailInteger,
    required this.detailIntegerElement,
    required this.detailRatio,
    required this.dueDate,
    required this.dueDateElement,
    required this.dueDuration,
  });
}


