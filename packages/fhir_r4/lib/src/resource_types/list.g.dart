// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'list.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirListCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    ListStatus? status,
    ListMode? mode,
    FhirString? title,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    Reference? source,
    CodeableConcept? orderedBy,
    List<Annotation>? note,
    List<ListEntry>? entry,
    CodeableConcept? emptyReason,
    bool? disallowExtensions,
  });
}

class _$FhirListCopyWithImpl<T> implements $FhirListCopyWith<T> {
  final FhirList _value;
  final T Function(FhirList) _then;

  _$FhirListCopyWithImpl(this._value, this._then);

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
    Object? mode = fhirSentinel,
    Object? title = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? date = fhirSentinel,
    Object? source = fhirSentinel,
    Object? orderedBy = fhirSentinel,
    Object? note = fhirSentinel,
    Object? entry = fhirSentinel,
    Object? emptyReason = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirList(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ListStatus?) ?? _value.status,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : (mode as ListMode?) ?? _value.mode,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        orderedBy: identical(orderedBy, fhirSentinel)
            ? _value.orderedBy
            : orderedBy as CodeableConcept?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        entry: identical(entry, fhirSentinel)
            ? _value.entry
            : entry as List<ListEntry>?,
        emptyReason: identical(emptyReason, fhirSentinel)
            ? _value.emptyReason
            : emptyReason as CodeableConcept?,
      ),
    );
  }
}

extension FhirListCopyWithExtension on FhirList {
  $FhirListCopyWith<FhirList> get copyWith => _$FhirListCopyWithImpl<FhirList>(
        this,
        (value) => value,
      );
}

abstract class $ListEntryCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? flag,
    FhirBoolean? deleted,
    FhirDateTime? date,
    Reference? item,
    bool? disallowExtensions,
  });
}

class _$ListEntryCopyWithImpl<T> implements $ListEntryCopyWith<T> {
  final ListEntry _value;
  final T Function(ListEntry) _then;

  _$ListEntryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? flag = fhirSentinel,
    Object? deleted = fhirSentinel,
    Object? date = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ListEntry(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        flag: identical(flag, fhirSentinel)
            ? _value.flag
            : flag as CodeableConcept?,
        deleted: identical(deleted, fhirSentinel)
            ? _value.deleted
            : deleted as FhirBoolean?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : (item as Reference?) ?? _value.item,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ListEntryCopyWithExtension on ListEntry {
  $ListEntryCopyWith<ListEntry> get copyWith =>
      _$ListEntryCopyWithImpl<ListEntry>(
        this,
        (value) => value,
      );
}
