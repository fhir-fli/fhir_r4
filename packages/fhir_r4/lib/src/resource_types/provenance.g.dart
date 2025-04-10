// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'provenance.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ProvenanceCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Reference>? target,
    Period? occurredX,
    FhirInstant? recorded,
    List<FhirUri>? policy,
    Reference? location,
    List<CodeableConcept>? reason,
    CodeableConcept? activity,
    List<ProvenanceAgent>? agent,
    List<ProvenanceEntity>? entity,
    List<Signature>? signature,
    bool? disallowExtensions,
  });
}

class _$ProvenanceCopyWithImpl<T> implements $ProvenanceCopyWith<T> {
  final Provenance _value;
  final T Function(Provenance) _then;

  _$ProvenanceCopyWithImpl(this._value, this._then);

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
    Object? target = fhirSentinel,
    Object? occurredX = fhirSentinel,
    Object? recorded = fhirSentinel,
    Object? policy = fhirSentinel,
    Object? location = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? activity = fhirSentinel,
    Object? agent = fhirSentinel,
    Object? entity = fhirSentinel,
    Object? signature = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Provenance(
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
        target: identical(target, fhirSentinel)
            ? _value.target
            : (target as List<Reference>?) ?? _value.target,
        occurredX: identical(occurredX, fhirSentinel)
            ? _value.occurredX
            : occurredX as Period?,
        recorded: identical(recorded, fhirSentinel)
            ? _value.recorded
            : (recorded as FhirInstant?) ?? _value.recorded,
        policy: identical(policy, fhirSentinel)
            ? _value.policy
            : policy as List<FhirUri>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableConcept>?,
        activity: identical(activity, fhirSentinel)
            ? _value.activity
            : activity as CodeableConcept?,
        agent: identical(agent, fhirSentinel)
            ? _value.agent
            : (agent as List<ProvenanceAgent>?) ?? _value.agent,
        entity: identical(entity, fhirSentinel)
            ? _value.entity
            : entity as List<ProvenanceEntity>?,
        signature: identical(signature, fhirSentinel)
            ? _value.signature
            : signature as List<Signature>?,
      ),
    );
  }
}

extension ProvenanceCopyWithExtension on Provenance {
  $ProvenanceCopyWith<Provenance> get copyWith =>
      _$ProvenanceCopyWithImpl<Provenance>(
        this,
        (value) => value,
      );
}

abstract class $ProvenanceAgentCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? role,
    Reference? who,
    Reference? onBehalfOf,
    bool? disallowExtensions,
  });
}

class _$ProvenanceAgentCopyWithImpl<T> implements $ProvenanceAgentCopyWith<T> {
  final ProvenanceAgent _value;
  final T Function(ProvenanceAgent) _then;

  _$ProvenanceAgentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? role = fhirSentinel,
    Object? who = fhirSentinel,
    Object? onBehalfOf = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ProvenanceAgent(
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
        who: identical(who, fhirSentinel)
            ? _value.who
            : (who as Reference?) ?? _value.who,
        onBehalfOf: identical(onBehalfOf, fhirSentinel)
            ? _value.onBehalfOf
            : onBehalfOf as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ProvenanceAgentCopyWithExtension on ProvenanceAgent {
  $ProvenanceAgentCopyWith<ProvenanceAgent> get copyWith =>
      _$ProvenanceAgentCopyWithImpl<ProvenanceAgent>(
        this,
        (value) => value,
      );
}

abstract class $ProvenanceEntityCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ProvenanceEntityRole? role,
    Reference? what,
    List<ProvenanceAgent>? agent,
    bool? disallowExtensions,
  });
}

class _$ProvenanceEntityCopyWithImpl<T>
    implements $ProvenanceEntityCopyWith<T> {
  final ProvenanceEntity _value;
  final T Function(ProvenanceEntity) _then;

  _$ProvenanceEntityCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? what = fhirSentinel,
    Object? agent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ProvenanceEntity(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : (role as ProvenanceEntityRole?) ?? _value.role,
        what: identical(what, fhirSentinel)
            ? _value.what
            : (what as Reference?) ?? _value.what,
        agent: identical(agent, fhirSentinel)
            ? _value.agent
            : agent as List<ProvenanceAgent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ProvenanceEntityCopyWithExtension on ProvenanceEntity {
  $ProvenanceEntityCopyWith<ProvenanceEntity> get copyWith =>
      _$ProvenanceEntityCopyWithImpl<ProvenanceEntity>(
        this,
        (value) => value,
      );
}
