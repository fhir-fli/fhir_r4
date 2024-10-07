import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class PlanDefinition extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? subtitle;
  final Element? subtitleElement;
  final CodeableConcept? type;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final CodeableConcept? subjectCodeableConcept;
  final Reference? subjectReference;
  final FhirCanonical? subjectCanonical;
  final Element? subjectCanonicalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirString? usage;
  final Element? usageElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final Period? effectivePeriod;
  final List<CodeableConcept>? topic;
  final List<ContactDetail>? author;
  final List<ContactDetail>? editor;
  final List<ContactDetail>? reviewer;
  final List<ContactDetail>? endorser;
  final List<RelatedArtifact>? relatedArtifact;
  final List<FhirCanonical>? library_;
  final List<Element>? libraryElement;
  final List<PlanDefinitionGoal>? goal;
  final List<PlanDefinitionAction>? action;

  PlanDefinition({
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
    this.url,
this.urlElement,
    this.identifier,
    this.version,
this.versionElement,
    this.name,
this.nameElement,
    this.title,
this.titleElement,
    this.subtitle,
this.subtitleElement,
    this.type,
    required this.status,
this.statusElement,
    this.experimental,
this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
this.subjectCanonicalElement,
    this.date,
this.dateElement,
    this.publisher,
this.publisherElement,
    this.contact,
    this.description,
this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
this.purposeElement,
    this.usage,
this.usageElement,
    this.copyright,
this.copyrightElement,
    this.approvalDate,
this.approvalDateElement,
    this.lastReviewDate,
this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
this.libraryElement,
    this.goal,
    this.action,
  }) : super(resourceType: R4ResourceType.PlanDefinition);

@override
PlanDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PlanDefinitionGoal extends BackboneElement {
  final CodeableConcept? category;
  final CodeableConcept description;
  final CodeableConcept? priority;
  final CodeableConcept? start;
  final List<CodeableConcept>? addresses;
  final List<RelatedArtifact>? documentation;
  final List<PlanDefinitionTarget>? target;

  PlanDefinitionGoal({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.description,
    this.priority,
    this.start,
    this.addresses,
    this.documentation,
    this.target,
  });

@override
PlanDefinitionGoal clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PlanDefinitionTarget extends BackboneElement {
  final CodeableConcept? measure;
  final Quantity? detailQuantity;
  final Range? detailRange;
  final CodeableConcept? detailCodeableConcept;
  final FhirDuration? due;

  PlanDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.due,
  });

@override
PlanDefinitionTarget clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PlanDefinitionAction extends BackboneElement {
  final FhirString? prefix;
  final Element? prefixElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirString? textEquivalent;
  final Element? textEquivalentElement;
  final FhirCode? priority;
  final Element? priorityElement;
  final List<CodeableConcept>? code;
  final List<CodeableConcept>? reason;
  final List<RelatedArtifact>? documentation;
  final List<FhirId>? goalId;
  final List<Element>? goalIdElement;
  final CodeableConcept? subjectCodeableConcept;
  final Reference? subjectReference;
  final FhirCanonical? subjectCanonical;
  final Element? subjectCanonicalElement;
  final List<TriggerDefinition>? trigger;
  final List<PlanDefinitionCondition>? condition;
  final List<DataRequirement>? input;
  final List<DataRequirement>? output;
  final List<PlanDefinitionRelatedAction>? relatedAction;
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;
  final Age? timingAge;
  final Period? timingPeriod;
  final FhirDuration? timingDuration;
  final Range? timingRange;
  final Timing? timingTiming;
  final List<PlanDefinitionParticipant>? participant;
  final CodeableConcept? type;
  final FhirCode? groupingBehavior;
  final Element? groupingBehaviorElement;
  final FhirCode? selectionBehavior;
  final Element? selectionBehaviorElement;
  final FhirCode? requiredBehavior;
  final Element? requiredBehaviorElement;
  final FhirCode? precheckBehavior;
  final Element? precheckBehaviorElement;
  final FhirCode? cardinalityBehavior;
  final Element? cardinalityBehaviorElement;
  final FhirCanonical? definitionCanonical;
  final Element? definitionCanonicalElement;
  final FhirUri? definitionUri;
  final Element? definitionUriElement;
  final FhirCanonical? transform;
  final Element? transformElement;
  final List<PlanDefinitionDynamicValue>? dynamicValue;
  final List<PlanDefinitionAction>? action;

  PlanDefinitionAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.prefix,
this.prefixElement,
    this.title,
this.titleElement,
    this.description,
this.descriptionElement,
    this.textEquivalent,
this.textEquivalentElement,
    this.priority,
this.priorityElement,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
this.goalIdElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
this.subjectCanonicalElement,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingDateTime,
this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
this.groupingBehaviorElement,
    this.selectionBehavior,
this.selectionBehaviorElement,
    this.requiredBehavior,
this.requiredBehaviorElement,
    this.precheckBehavior,
this.precheckBehaviorElement,
    this.cardinalityBehavior,
this.cardinalityBehaviorElement,
    this.definitionCanonical,
this.definitionCanonicalElement,
    this.definitionUri,
this.definitionUriElement,
    this.transform,
this.transformElement,
    this.dynamicValue,
    this.action,
  });

@override
PlanDefinitionAction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PlanDefinitionCondition extends BackboneElement {
  final FhirCode kind;
  final Element? kindElement;
  final FhirExpression? expression;

  PlanDefinitionCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
this.kindElement,
    this.expression,
  });

@override
PlanDefinitionCondition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PlanDefinitionRelatedAction extends BackboneElement {
  final FhirId actionId;
  final Element? actionIdElement;
  final FhirCode relationship;
  final Element? relationshipElement;
  final FhirDuration? offsetDuration;
  final Range? offsetRange;

  PlanDefinitionRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actionId,
this.actionIdElement,
    required this.relationship,
this.relationshipElement,
    this.offsetDuration,
    this.offsetRange,
  });

@override
PlanDefinitionRelatedAction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PlanDefinitionParticipant extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final CodeableConcept? role;

  PlanDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
this.typeElement,
    this.role,
  });

@override
PlanDefinitionParticipant clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class PlanDefinitionDynamicValue extends BackboneElement {
  final FhirString? path;
  final Element? pathElement;
  final FhirExpression? expression;

  PlanDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
this.pathElement,
    this.expression,
  });

@override
PlanDefinitionDynamicValue clone() => throw UnimplementedError();
}

