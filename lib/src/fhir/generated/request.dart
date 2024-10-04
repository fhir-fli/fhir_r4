import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class RequestGroup {
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
  final List<FhirCanonical> instantiatesCanonical;
  final List<PrimitiveElement> InstantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference author;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<RequestGroupAction> action;
}

@Data()
@JsonCodable()
class RequestGroupAction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String prefix;
  final PrimitiveElement Prefix;
  final String title;
  final PrimitiveElement Title;
  final String description;
  final PrimitiveElement Description;
  final String textEquivalent;
  final PrimitiveElement TextEquivalent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final List<CodeableConcept> code;
  final List<RelatedArtifact> documentation;
  final List<RequestGroupCondition> condition;
  final List<RequestGroupRelatedAction> relatedAction;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final Age timingAge;
  final Period timingPeriod;
  final FhirDuration timingDuration;
  final Range timingRange;
  final Timing timingTiming;
  final List<Reference> participant;
  final CodeableConcept type;
  final FhirCode groupingBehavior;
  final PrimitiveElement GroupingBehavior;
  final FhirCode selectionBehavior;
  final PrimitiveElement SelectionBehavior;
  final FhirCode requiredBehavior;
  final PrimitiveElement RequiredBehavior;
  final FhirCode precheckBehavior;
  final PrimitiveElement PrecheckBehavior;
  final FhirCode cardinalityBehavior;
  final PrimitiveElement CardinalityBehavior;
  final Reference resource;
  final List<RequestGroupAction> action;
}

@Data()
@JsonCodable()
class RequestGroupCondition {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final FhirExpression expression;
}

@Data()
@JsonCodable()
class RequestGroupRelatedAction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId actionId;
  final PrimitiveElement ActionId;
  final FhirCode relationship;
  final PrimitiveElement Relationship;
  final FhirDuration offsetDuration;
  final Range offsetRange;
}


