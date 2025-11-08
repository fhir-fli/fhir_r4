// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'request_group.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RequestGroupCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? groupIdentifier,
    RequestStatus? status,
    RequestIntent? intent,
    RequestPriority? priority,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authoredOn,
    Reference? author,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<RequestGroupAction>? action,
    bool? disallowExtensions,
  });
}

class _$RequestGroupCopyWithImpl<T> implements $RequestGroupCopyWith<T> {
  final RequestGroup _value;
  final T Function(RequestGroup) _then;

  _$RequestGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? replaces = fhirSentinel,
    Object? groupIdentifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? author = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? note = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        replaces: identical(replaces, fhirSentinel)
            ? _value.replaces
            : replaces as List<Reference>?,
        groupIdentifier: identical(groupIdentifier, fhirSentinel)
            ? _value.groupIdentifier
            : groupIdentifier as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as RequestStatus?) ?? _value.status,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as RequestIntent?) ?? _value.intent,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<RequestGroupAction>?,
      ),
    );
  }
}

extension RequestGroupCopyWithExtension on RequestGroup {
  $RequestGroupCopyWith<RequestGroup> get copyWith =>
      _$RequestGroupCopyWithImpl<RequestGroup>(
        this,
        (value) => value,
      );
}

abstract class $RequestGroupActionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? prefix,
    FhirString? title,
    FhirString? description,
    FhirString? textEquivalent,
    RequestPriority? priority,
    List<CodeableConcept>? code,
    List<RelatedArtifact>? documentation,
    List<RequestGroupCondition>? condition,
    List<RequestGroupRelatedAction>? relatedAction,
    TimingXRequestGroupAction? timingX,
    List<Reference>? participant,
    CodeableConcept? type,
    ActionGroupingBehavior? groupingBehavior,
    ActionSelectionBehavior? selectionBehavior,
    ActionRequiredBehavior? requiredBehavior,
    ActionPrecheckBehavior? precheckBehavior,
    ActionCardinalityBehavior? cardinalityBehavior,
    Reference? resource,
    List<RequestGroupAction>? action,
    bool? disallowExtensions,
  });
}

class _$RequestGroupActionCopyWithImpl<T>
    implements $RequestGroupActionCopyWith<T> {
  final RequestGroupAction _value;
  final T Function(RequestGroupAction) _then;

  _$RequestGroupActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? prefix = fhirSentinel,
    Object? title = fhirSentinel,
    Object? description = fhirSentinel,
    Object? textEquivalent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? code = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? relatedAction = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? type = fhirSentinel,
    Object? groupingBehavior = fhirSentinel,
    Object? selectionBehavior = fhirSentinel,
    Object? requiredBehavior = fhirSentinel,
    Object? precheckBehavior = fhirSentinel,
    Object? cardinalityBehavior = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? action = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestGroupAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        prefix: identical(prefix, fhirSentinel)
            ? _value.prefix
            : prefix as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        textEquivalent: identical(textEquivalent, fhirSentinel)
            ? _value.textEquivalent
            : textEquivalent as FhirString?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as List<RelatedArtifact>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<RequestGroupCondition>?,
        relatedAction: identical(relatedAction, fhirSentinel)
            ? _value.relatedAction
            : relatedAction as List<RequestGroupRelatedAction>?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as TimingXRequestGroupAction?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<Reference>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        groupingBehavior: identical(groupingBehavior, fhirSentinel)
            ? _value.groupingBehavior
            : groupingBehavior as ActionGroupingBehavior?,
        selectionBehavior: identical(selectionBehavior, fhirSentinel)
            ? _value.selectionBehavior
            : selectionBehavior as ActionSelectionBehavior?,
        requiredBehavior: identical(requiredBehavior, fhirSentinel)
            ? _value.requiredBehavior
            : requiredBehavior as ActionRequiredBehavior?,
        precheckBehavior: identical(precheckBehavior, fhirSentinel)
            ? _value.precheckBehavior
            : precheckBehavior as ActionPrecheckBehavior?,
        cardinalityBehavior: identical(cardinalityBehavior, fhirSentinel)
            ? _value.cardinalityBehavior
            : cardinalityBehavior as ActionCardinalityBehavior?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as Reference?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<RequestGroupAction>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestGroupActionCopyWithExtension on RequestGroupAction {
  $RequestGroupActionCopyWith<RequestGroupAction> get copyWith =>
      _$RequestGroupActionCopyWithImpl<RequestGroupAction>(
        this,
        (value) => value,
      );
}

abstract class $RequestGroupConditionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ActionConditionKind? kind,
    FhirExpression? expression,
    bool? disallowExtensions,
  });
}

class _$RequestGroupConditionCopyWithImpl<T>
    implements $RequestGroupConditionCopyWith<T> {
  final RequestGroupCondition _value;
  final T Function(RequestGroupCondition) _then;

  _$RequestGroupConditionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? kind = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestGroupCondition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : (kind as ActionConditionKind?) ?? _value.kind,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirExpression?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestGroupConditionCopyWithExtension on RequestGroupCondition {
  $RequestGroupConditionCopyWith<RequestGroupCondition> get copyWith =>
      _$RequestGroupConditionCopyWithImpl<RequestGroupCondition>(
        this,
        (value) => value,
      );
}

abstract class $RequestGroupRelatedActionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? actionId,
    ActionRelationshipType? relationship,
    OffsetXRequestGroupRelatedAction? offsetX,
    bool? disallowExtensions,
  });
}

class _$RequestGroupRelatedActionCopyWithImpl<T>
    implements $RequestGroupRelatedActionCopyWith<T> {
  final RequestGroupRelatedAction _value;
  final T Function(RequestGroupRelatedAction) _then;

  _$RequestGroupRelatedActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? actionId = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? offsetX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RequestGroupRelatedAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        actionId: identical(actionId, fhirSentinel)
            ? _value.actionId
            : (actionId as FhirId?) ?? _value.actionId,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : (relationship as ActionRelationshipType?) ?? _value.relationship,
        offsetX: identical(offsetX, fhirSentinel)
            ? _value.offsetX
            : offsetX as OffsetXRequestGroupRelatedAction?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RequestGroupRelatedActionCopyWithExtension
    on RequestGroupRelatedAction {
  $RequestGroupRelatedActionCopyWith<RequestGroupRelatedAction> get copyWith =>
      _$RequestGroupRelatedActionCopyWithImpl<RequestGroupRelatedAction>(
        this,
        (value) => value,
      );
}
