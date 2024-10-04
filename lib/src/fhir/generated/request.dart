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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<PrimitiveElement> instantiatesCanonicalElement;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> instantiatesUriElement;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode intent;
  final PrimitiveElement intentElement;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime authoredOn;
  final PrimitiveElement authoredOnElement;
  final Reference author;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<RequestGroupAction> action;
  const RequestGroup({
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
    required this.instantiatesCanonical,
    required this.instantiatesCanonicalElement,
    required this.instantiatesUri,
    required this.instantiatesUriElement,
    required this.basedOn,
    required this.replaces,
    required this.groupIdentifier,
    required this.status,
    required this.statusElement,
    required this.intent,
    required this.intentElement,
    required this.priority,
    required this.priorityElement,
    required this.code,
    required this.subject,
    required this.encounter,
    required this.authoredOn,
    required this.authoredOnElement,
    required this.author,
    required this.reasonCode,
    required this.reasonReference,
    required this.note,
    required this.action,
  });
}

@Data()
@JsonCodable()
class RequestGroupAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String prefix;
  final PrimitiveElement prefixElement;
  final String title;
  final PrimitiveElement titleElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final String textEquivalent;
  final PrimitiveElement textEquivalentElement;
  final FhirCode priority;
  final PrimitiveElement priorityElement;
  final List<CodeableConcept> code;
  final List<RelatedArtifact> documentation;
  final List<RequestGroupCondition> condition;
  final List<RequestGroupRelatedAction> relatedAction;
  final String timingDateTime;
  final PrimitiveElement timingDateTimeElement;
  final Age timingAge;
  final Period timingPeriod;
  final FhirDuration timingDuration;
  final Range timingRange;
  final Timing timingTiming;
  final List<Reference> participant;
  final CodeableConcept type;
  final FhirCode groupingBehavior;
  final PrimitiveElement groupingBehaviorElement;
  final FhirCode selectionBehavior;
  final PrimitiveElement selectionBehaviorElement;
  final FhirCode requiredBehavior;
  final PrimitiveElement requiredBehaviorElement;
  final FhirCode precheckBehavior;
  final PrimitiveElement precheckBehaviorElement;
  final FhirCode cardinalityBehavior;
  final PrimitiveElement cardinalityBehaviorElement;
  final Reference resource;
  final List<RequestGroupAction> action;
  const RequestGroupAction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.prefix,
    required this.prefixElement,
    required this.title,
    required this.titleElement,
    required this.description,
    required this.descriptionElement,
    required this.textEquivalent,
    required this.textEquivalentElement,
    required this.priority,
    required this.priorityElement,
    required this.code,
    required this.documentation,
    required this.condition,
    required this.relatedAction,
    required this.timingDateTime,
    required this.timingDateTimeElement,
    required this.timingAge,
    required this.timingPeriod,
    required this.timingDuration,
    required this.timingRange,
    required this.timingTiming,
    required this.participant,
    required this.type,
    required this.groupingBehavior,
    required this.groupingBehaviorElement,
    required this.selectionBehavior,
    required this.selectionBehaviorElement,
    required this.requiredBehavior,
    required this.requiredBehaviorElement,
    required this.precheckBehavior,
    required this.precheckBehaviorElement,
    required this.cardinalityBehavior,
    required this.cardinalityBehaviorElement,
    required this.resource,
    required this.action,
  });
}

@Data()
@JsonCodable()
class RequestGroupCondition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final FhirExpression expression;
  const RequestGroupCondition({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.kind,
    required this.kindElement,
    required this.expression,
  });
}

@Data()
@JsonCodable()
class RequestGroupRelatedAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirId actionId;
  final PrimitiveElement actionIdElement;
  final FhirCode relationship;
  final PrimitiveElement relationshipElement;
  final FhirDuration offsetDuration;
  final Range offsetRange;
  const RequestGroupRelatedAction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.actionId,
    required this.actionIdElement,
    required this.relationship,
    required this.relationshipElement,
    required this.offsetDuration,
    required this.offsetRange,
  });
}


