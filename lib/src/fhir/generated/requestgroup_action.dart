import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RequestGroupAction {
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
  const RequestGroupAction({
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
    this.documentation,
    this.condition,
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
    this.resource,
    this.action,
  });
}
