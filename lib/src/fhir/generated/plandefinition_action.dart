import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PlanDefinitionAction {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  final List<CodeableConcept> reason;
  final List<RelatedArtifact> documentation;
  final List<FhirId> goalId;
  final List<PrimitiveElement> GoalId;
  final CodeableConcept subjectCodeableConcept;
  final Reference subjectReference;
  final String subjectCanonical;
  final PrimitiveElement SubjectCanonical;
  final List<TriggerDefinition> trigger;
  final List<PlanDefinitionCondition> condition;
  final List<DataRequirement> input;
  final List<DataRequirement> output;
  final List<PlanDefinitionRelatedAction> relatedAction;
  final String timingDateTime;
  final PrimitiveElement TimingDateTime;
  final Age timingAge;
  final Period timingPeriod;
  final FhirDuration timingDuration;
  final Range timingRange;
  final Timing timingTiming;
  final List<PlanDefinitionParticipant> participant;
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
  final String definitionCanonical;
  final PrimitiveElement DefinitionCanonical;
  final String definitionUri;
  final PrimitiveElement DefinitionUri;
  final FhirCanonical transform;
  final List<PlanDefinitionDynamicValue> dynamicValue;
  final List<PlanDefinitionAction> action;
  const PlanDefinitionAction({
    this.id,
    this.extension,
    this.modifierExtension,
    this.prefix,
    this.Prefix,
    this.title,
    this.Title,
    this.description,
    this.Description,
    this.textEquivalent,
    this.TextEquivalent,
    this.priority,
    this.Priority,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
    this.GoalId,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.SubjectCanonical,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingDateTime,
    this.TimingDateTime,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.GroupingBehavior,
    this.selectionBehavior,
    this.SelectionBehavior,
    this.requiredBehavior,
    this.RequiredBehavior,
    this.precheckBehavior,
    this.PrecheckBehavior,
    this.cardinalityBehavior,
    this.CardinalityBehavior,
    this.definitionCanonical,
    this.DefinitionCanonical,
    this.definitionUri,
    this.DefinitionUri,
    this.transform,
    this.dynamicValue,
    this.action,
  });
}
