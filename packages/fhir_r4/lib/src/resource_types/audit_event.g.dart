// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'audit_event.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AuditEventCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Coding? type,
    List<Coding>? subtype,
    AuditEventAction? action,
    Period? period,
    FhirInstant? recorded,
    AuditEventOutcome? outcome,
    FhirString? outcomeDesc,
    List<CodeableConcept>? purposeOfEvent,
    List<AuditEventAgent>? agent,
    AuditEventSource? source,
    List<AuditEventEntity>? entity,
    bool? disallowExtensions,
  });
}

class _$AuditEventCopyWithImpl<T> implements $AuditEventCopyWith<T> {
  final AuditEvent _value;
  final T Function(AuditEvent) _then;

  _$AuditEventCopyWithImpl(this._value, this._then);

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
    Object? type = fhirSentinel,
    Object? subtype = fhirSentinel,
    Object? action = fhirSentinel,
    Object? period = fhirSentinel,
    Object? recorded = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? outcomeDesc = fhirSentinel,
    Object? purposeOfEvent = fhirSentinel,
    Object? agent = fhirSentinel,
    Object? source = fhirSentinel,
    Object? entity = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEvent(
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
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as Coding?) ?? _value.type,
        subtype: identical(subtype, fhirSentinel)
            ? _value.subtype
            : subtype as List<Coding>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as AuditEventAction?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        recorded: identical(recorded, fhirSentinel)
            ? _value.recorded
            : (recorded as FhirInstant?) ?? _value.recorded,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as AuditEventOutcome?,
        outcomeDesc: identical(outcomeDesc, fhirSentinel)
            ? _value.outcomeDesc
            : outcomeDesc as FhirString?,
        purposeOfEvent: identical(purposeOfEvent, fhirSentinel)
            ? _value.purposeOfEvent
            : purposeOfEvent as List<CodeableConcept>?,
        agent: identical(agent, fhirSentinel)
            ? _value.agent
            : (agent as List<AuditEventAgent>?) ?? _value.agent,
        source: identical(source, fhirSentinel)
            ? _value.source
            : (source as AuditEventSource?) ?? _value.source,
        entity: identical(entity, fhirSentinel)
            ? _value.entity
            : entity as List<AuditEventEntity>?,
      ),
    );
  }
}

extension AuditEventCopyWithExtension on AuditEvent {
  $AuditEventCopyWith<AuditEvent> get copyWith =>
      _$AuditEventCopyWithImpl<AuditEvent>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventAgentCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? role,
    Reference? who,
    FhirString? altId,
    FhirString? name,
    FhirBoolean? requestor,
    Reference? location,
    List<FhirUri>? policy,
    Coding? media,
    AuditEventNetwork? network,
    List<CodeableConcept>? purposeOfUse,
    bool? disallowExtensions,
  });
}

class _$AuditEventAgentCopyWithImpl<T> implements $AuditEventAgentCopyWith<T> {
  final AuditEventAgent _value;
  final T Function(AuditEventAgent) _then;

  _$AuditEventAgentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? role = fhirSentinel,
    Object? who = fhirSentinel,
    Object? altId = fhirSentinel,
    Object? name = fhirSentinel,
    Object? requestor = fhirSentinel,
    Object? location = fhirSentinel,
    Object? policy = fhirSentinel,
    Object? media = fhirSentinel,
    Object? network = fhirSentinel,
    Object? purposeOfUse = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventAgent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as List<CodeableConcept>?,
        who: identical(who, fhirSentinel) ? _value.who : who as Reference?,
        altId: identical(altId, fhirSentinel)
            ? _value.altId
            : altId as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        requestor: identical(requestor, fhirSentinel)
            ? _value.requestor
            : (requestor as FhirBoolean?) ?? _value.requestor,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        policy: identical(policy, fhirSentinel)
            ? _value.policy
            : policy as List<FhirUri>?,
        media: identical(media, fhirSentinel) ? _value.media : media as Coding?,
        network: identical(network, fhirSentinel)
            ? _value.network
            : network as AuditEventNetwork?,
        purposeOfUse: identical(purposeOfUse, fhirSentinel)
            ? _value.purposeOfUse
            : purposeOfUse as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventAgentCopyWithExtension on AuditEventAgent {
  $AuditEventAgentCopyWith<AuditEventAgent> get copyWith =>
      _$AuditEventAgentCopyWithImpl<AuditEventAgent>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventNetworkCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? address,
    AuditEventAgentNetworkType? type,
    bool? disallowExtensions,
  });
}

class _$AuditEventNetworkCopyWithImpl<T>
    implements $AuditEventNetworkCopyWith<T> {
  final AuditEventNetwork _value;
  final T Function(AuditEventNetwork) _then;

  _$AuditEventNetworkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? address = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventNetwork(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as AuditEventAgentNetworkType?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventNetworkCopyWithExtension on AuditEventNetwork {
  $AuditEventNetworkCopyWith<AuditEventNetwork> get copyWith =>
      _$AuditEventNetworkCopyWithImpl<AuditEventNetwork>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventSourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? site,
    Reference? observer,
    List<Coding>? type,
    bool? disallowExtensions,
  });
}

class _$AuditEventSourceCopyWithImpl<T>
    implements $AuditEventSourceCopyWith<T> {
  final AuditEventSource _value;
  final T Function(AuditEventSource) _then;

  _$AuditEventSourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? site = fhirSentinel,
    Object? observer = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventSource(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        site: identical(site, fhirSentinel) ? _value.site : site as FhirString?,
        observer: identical(observer, fhirSentinel)
            ? _value.observer
            : (observer as Reference?) ?? _value.observer,
        type:
            identical(type, fhirSentinel) ? _value.type : type as List<Coding>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventSourceCopyWithExtension on AuditEventSource {
  $AuditEventSourceCopyWith<AuditEventSource> get copyWith =>
      _$AuditEventSourceCopyWithImpl<AuditEventSource>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventEntityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? what,
    Coding? type,
    Coding? role,
    Coding? lifecycle,
    List<Coding>? securityLabel,
    FhirString? name,
    FhirString? description,
    FhirBase64Binary? query,
    List<AuditEventDetail>? detail,
    bool? disallowExtensions,
  });
}

class _$AuditEventEntityCopyWithImpl<T>
    implements $AuditEventEntityCopyWith<T> {
  final AuditEventEntity _value;
  final T Function(AuditEventEntity) _then;

  _$AuditEventEntityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? what = fhirSentinel,
    Object? type = fhirSentinel,
    Object? role = fhirSentinel,
    Object? lifecycle = fhirSentinel,
    Object? securityLabel = fhirSentinel,
    Object? name = fhirSentinel,
    Object? description = fhirSentinel,
    Object? query = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventEntity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        what: identical(what, fhirSentinel) ? _value.what : what as Reference?,
        type: identical(type, fhirSentinel) ? _value.type : type as Coding?,
        role: identical(role, fhirSentinel) ? _value.role : role as Coding?,
        lifecycle: identical(lifecycle, fhirSentinel)
            ? _value.lifecycle
            : lifecycle as Coding?,
        securityLabel: identical(securityLabel, fhirSentinel)
            ? _value.securityLabel
            : securityLabel as List<Coding>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        query: identical(query, fhirSentinel)
            ? _value.query
            : query as FhirBase64Binary?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<AuditEventDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventEntityCopyWithExtension on AuditEventEntity {
  $AuditEventEntityCopyWith<AuditEventEntity> get copyWith =>
      _$AuditEventEntityCopyWithImpl<AuditEventEntity>(
        this,
        (value) => value,
      );
}

abstract class $AuditEventDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? type,
    FhirString? valueX,
    bool? disallowExtensions,
  });
}

class _$AuditEventDetailCopyWithImpl<T>
    implements $AuditEventDetailCopyWith<T> {
  final AuditEventDetail _value;
  final T Function(AuditEventDetail) _then;

  _$AuditEventDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      AuditEventDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as FhirString?) ?? _value.type,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as FhirString?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AuditEventDetailCopyWithExtension on AuditEventDetail {
  $AuditEventDetailCopyWith<AuditEventDetail> get copyWith =>
      _$AuditEventDetailCopyWithImpl<AuditEventDetail>(
        this,
        (value) => value,
      );
}
