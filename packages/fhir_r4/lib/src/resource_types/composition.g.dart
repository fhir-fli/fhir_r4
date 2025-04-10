// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'composition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CompositionCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Identifier? identifier,
    CompositionStatus? status,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    List<Reference>? author,
    FhirString? title,
    FhirCode? confidentiality,
    List<CompositionAttester>? attester,
    Reference? custodian,
    List<CompositionRelatesTo>? relatesTo,
    List<CompositionEvent>? event,
    List<CompositionSection>? section,
    bool? disallowExtensions,
  });
}

class _$CompositionCopyWithImpl<T> implements $CompositionCopyWith<T> {
  final Composition _value;
  final T Function(Composition) _then;

  _$CompositionCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? category = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? date = fhirSentinel,
    Object? author = fhirSentinel,
    Object? title = fhirSentinel,
    Object? confidentiality = fhirSentinel,
    Object? attester = fhirSentinel,
    Object? custodian = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? event = fhirSentinel,
    Object? section = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Composition(
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
            : identifier as Identifier?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as CompositionStatus?) ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        date: identical(date, fhirSentinel)
            ? _value.date
            : (date as FhirDateTime?) ?? _value.date,
        author: identical(author, fhirSentinel)
            ? _value.author
            : (author as List<Reference>?) ?? _value.author,
        title: identical(title, fhirSentinel)
            ? _value.title
            : (title as FhirString?) ?? _value.title,
        confidentiality: identical(confidentiality, fhirSentinel)
            ? _value.confidentiality
            : confidentiality as FhirCode?,
        attester: identical(attester, fhirSentinel)
            ? _value.attester
            : attester as List<CompositionAttester>?,
        custodian: identical(custodian, fhirSentinel)
            ? _value.custodian
            : custodian as Reference?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<CompositionRelatesTo>?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as List<CompositionEvent>?,
        section: identical(section, fhirSentinel)
            ? _value.section
            : section as List<CompositionSection>?,
      ),
    );
  }
}

extension CompositionCopyWithExtension on Composition {
  $CompositionCopyWith<Composition> get copyWith =>
      _$CompositionCopyWithImpl<Composition>(
        this,
        (value) => value,
      );
}

abstract class $CompositionAttesterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CompositionAttestationMode? mode,
    FhirDateTime? time,
    Reference? party,
    bool? disallowExtensions,
  });
}

class _$CompositionAttesterCopyWithImpl<T>
    implements $CompositionAttesterCopyWith<T> {
  final CompositionAttester _value;
  final T Function(CompositionAttester) _then;

  _$CompositionAttesterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? time = fhirSentinel,
    Object? party = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompositionAttester(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as CompositionAttestationMode?) ?? _value.mode,
        time:
            identical(time, fhirSentinel) ? _value.time : time as FhirDateTime?,
        party:
            identical(party, fhirSentinel) ? _value.party : party as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CompositionAttesterCopyWithExtension on CompositionAttester {
  $CompositionAttesterCopyWith<CompositionAttester> get copyWith =>
      _$CompositionAttesterCopyWithImpl<CompositionAttester>(
        this,
        (value) => value,
      );
}

abstract class $CompositionRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DocumentRelationshipType? code,
    Identifier? targetX,
    bool? disallowExtensions,
  });
}

class _$CompositionRelatesToCopyWithImpl<T>
    implements $CompositionRelatesToCopyWith<T> {
  final CompositionRelatesTo _value;
  final T Function(CompositionRelatesTo) _then;

  _$CompositionRelatesToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? targetX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompositionRelatesTo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as DocumentRelationshipType?) ?? _value.code,
        targetX: identical(targetX, fhirSentinel)
            ? _value.targetX
            : (targetX as Identifier?) ?? _value.targetX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CompositionRelatesToCopyWithExtension on CompositionRelatesTo {
  $CompositionRelatesToCopyWith<CompositionRelatesTo> get copyWith =>
      _$CompositionRelatesToCopyWithImpl<CompositionRelatesTo>(
        this,
        (value) => value,
      );
}

abstract class $CompositionEventCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    Period? period,
    List<Reference>? detail,
    bool? disallowExtensions,
  });
}

class _$CompositionEventCopyWithImpl<T>
    implements $CompositionEventCopyWith<T> {
  final CompositionEvent _value;
  final T Function(CompositionEvent) _then;

  _$CompositionEventCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? period = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompositionEvent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<Reference>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CompositionEventCopyWithExtension on CompositionEvent {
  $CompositionEventCopyWith<CompositionEvent> get copyWith =>
      _$CompositionEventCopyWithImpl<CompositionEvent>(
        this,
        (value) => value,
      );
}

abstract class $CompositionSectionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    CodeableConcept? code,
    List<Reference>? author,
    Reference? focus,
    Narrative? text,
    ListMode? mode,
    CodeableConcept? orderedBy,
    List<Reference>? entry,
    CodeableConcept? emptyReason,
    List<CompositionSection>? section,
    bool? disallowExtensions,
  });
}

class _$CompositionSectionCopyWithImpl<T>
    implements $CompositionSectionCopyWith<T> {
  final CompositionSection _value;
  final T Function(CompositionSection) _then;

  _$CompositionSectionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? code = fhirSentinel,
    Object? author = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? text = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? orderedBy = fhirSentinel,
    Object? entry = fhirSentinel,
    Object? emptyReason = fhirSentinel,
    Object? section = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CompositionSection(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<Reference>?,
        focus:
            identical(focus, fhirSentinel) ? _value.focus : focus as Reference?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        mode: identical(mode, fhirSentinel) ? _value.mode : mode as ListMode?,
        orderedBy: identical(orderedBy, fhirSentinel)
            ? _value.orderedBy
            : orderedBy as CodeableConcept?,
        entry: identical(entry, fhirSentinel)
            ? _value.entry
            : entry as List<Reference>?,
        emptyReason: identical(emptyReason, fhirSentinel)
            ? _value.emptyReason
            : emptyReason as CodeableConcept?,
        section: identical(section, fhirSentinel)
            ? _value.section
            : section as List<CompositionSection>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CompositionSectionCopyWithExtension on CompositionSection {
  $CompositionSectionCopyWith<CompositionSection> get copyWith =>
      _$CompositionSectionCopyWithImpl<CompositionSection>(
        this,
        (value) => value,
      );
}
