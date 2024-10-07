import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class RequestGroup extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final List<Reference>? replaces;
  final Identifier? groupIdentifier;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode intent;
  final Element? intentElement;
  final FhirCode? priority;
  final Element? priorityElement;
  final CodeableConcept? code;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;
  final Reference? author;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Annotation>? note;
  final List<RequestGroupAction>? action;

  RequestGroup({
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
    this.instantiatesCanonical,
this.instantiatesCanonicalElement,
    this.instantiatesUri,
this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    required this.status,
this.statusElement,
    required this.intent,
this.intentElement,
    this.priority,
this.priorityElement,
    this.code,
    this.subject,
    this.encounter,
    this.authoredOn,
this.authoredOnElement,
    this.author,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.action,
  }) : super(resourceType: R4ResourceType.RequestGroup);

@override
RequestGroup clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class RequestGroupAction extends BackboneElement {
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
  final List<RelatedArtifact>? documentation;
  final List<RequestGroupCondition>? condition;
  final List<RequestGroupRelatedAction>? relatedAction;
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;
  final Age? timingAge;
  final Period? timingPeriod;
  final FhirDuration? timingDuration;
  final Range? timingRange;
  final Timing? timingTiming;
  final List<Reference>? participant;
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
  final Reference? resource;
  final List<RequestGroupAction>? action;

  RequestGroupAction({
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
    this.documentation,
    this.condition,
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
    this.resource,
    this.action,
  });

@override
RequestGroupAction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class RequestGroupCondition extends BackboneElement {
  final FhirCode kind;
  final Element? kindElement;
  final FhirExpression? expression;

  RequestGroupCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
this.kindElement,
    this.expression,
  });

@override
RequestGroupCondition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class RequestGroupRelatedAction extends BackboneElement {
  final FhirId actionId;
  final Element? actionIdElement;
  final FhirCode relationship;
  final Element? relationshipElement;
  final FhirDuration? offsetDuration;
  final Range? offsetRange;

  RequestGroupRelatedAction({
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
RequestGroupRelatedAction clone() => throw UnimplementedError();
}

