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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode lifecycleStatus;
  final PrimitiveElement LifecycleStatus;
  final CodeableConcept achievementStatus;
  final List<CodeableConcept> category;
  final CodeableConcept priority;
  final CodeableConcept description;
  final Reference subject;
  final String startDate;
  final PrimitiveElement StartDate;
  final CodeableConcept startCodeableConcept;
  final List<GoalTarget> target;
  final FhirDate statusDate;
  final PrimitiveElement StatusDate;
  final String statusReason;
  final PrimitiveElement StatusReason;
  final Reference expressedBy;
  final List<Reference> addresses;
  final List<Annotation> note;
  final List<CodeableConcept> outcomeCode;
  final List<Reference> outcomeReference;
}

@Data()
@JsonCodable()
class GoalTarget {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept measure;
  final Quantity detailQuantity;
  final Range detailRange;
  final CodeableConcept detailCodeableConcept;
  final String detailString;
  final PrimitiveElement DetailString;
  final bool detailBoolean;
  final PrimitiveElement DetailBoolean;
  final double detailInteger;
  final PrimitiveElement DetailInteger;
  final Ratio detailRatio;
  final String dueDate;
  final PrimitiveElement DueDate;
  final FhirDuration dueDuration;
}


