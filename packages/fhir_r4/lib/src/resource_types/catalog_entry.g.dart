// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'catalog_entry.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CatalogEntryCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    CodeableConcept? type,
    FhirBoolean? orderable,
    Reference? referencedItem,
    List<Identifier>? additionalIdentifier,
    List<CodeableConcept>? classification,
    PublicationStatus? status,
    Period? validityPeriod,
    FhirDateTime? validTo,
    FhirDateTime? lastUpdated,
    List<CodeableConcept>? additionalCharacteristic,
    List<CodeableConcept>? additionalClassification,
    List<CatalogEntryRelatedEntry>? relatedEntry,
    bool? disallowExtensions,
  });
}

class _$CatalogEntryCopyWithImpl<T> implements $CatalogEntryCopyWith<T> {
  final CatalogEntry _value;
  final T Function(CatalogEntry) _then;

  _$CatalogEntryCopyWithImpl(this._value, this._then);

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
    Object? type = fhirSentinel,
    Object? orderable = fhirSentinel,
    Object? referencedItem = fhirSentinel,
    Object? additionalIdentifier = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? status = fhirSentinel,
    Object? validityPeriod = fhirSentinel,
    Object? validTo = fhirSentinel,
    Object? lastUpdated = fhirSentinel,
    Object? additionalCharacteristic = fhirSentinel,
    Object? additionalClassification = fhirSentinel,
    Object? relatedEntry = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CatalogEntry(
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
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        orderable: identical(orderable, fhirSentinel)
            ? _value.orderable
            : (orderable as FhirBoolean?) ?? _value.orderable,
        referencedItem: identical(referencedItem, fhirSentinel)
            ? _value.referencedItem
            : (referencedItem as Reference?) ?? _value.referencedItem,
        additionalIdentifier: identical(additionalIdentifier, fhirSentinel)
            ? _value.additionalIdentifier
            : additionalIdentifier as List<Identifier>?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<CodeableConcept>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as PublicationStatus?,
        validityPeriod: identical(validityPeriod, fhirSentinel)
            ? _value.validityPeriod
            : validityPeriod as Period?,
        validTo: identical(validTo, fhirSentinel)
            ? _value.validTo
            : validTo as FhirDateTime?,
        lastUpdated: identical(lastUpdated, fhirSentinel)
            ? _value.lastUpdated
            : lastUpdated as FhirDateTime?,
        additionalCharacteristic:
            identical(additionalCharacteristic, fhirSentinel)
                ? _value.additionalCharacteristic
                : additionalCharacteristic as List<CodeableConcept>?,
        additionalClassification:
            identical(additionalClassification, fhirSentinel)
                ? _value.additionalClassification
                : additionalClassification as List<CodeableConcept>?,
        relatedEntry: identical(relatedEntry, fhirSentinel)
            ? _value.relatedEntry
            : relatedEntry as List<CatalogEntryRelatedEntry>?,
      ),
    );
  }
}

extension CatalogEntryCopyWithExtension on CatalogEntry {
  $CatalogEntryCopyWith<CatalogEntry> get copyWith =>
      _$CatalogEntryCopyWithImpl<CatalogEntry>(
        this,
        (value) => value,
      );
}

abstract class $CatalogEntryRelatedEntryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CatalogEntryRelationType? relationtype,
    Reference? item,
    bool? disallowExtensions,
  });
}

class _$CatalogEntryRelatedEntryCopyWithImpl<T>
    implements $CatalogEntryRelatedEntryCopyWith<T> {
  final CatalogEntryRelatedEntry _value;
  final T Function(CatalogEntryRelatedEntry) _then;

  _$CatalogEntryRelatedEntryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relationtype = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CatalogEntryRelatedEntry(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relationtype: identical(relationtype, fhirSentinel)
            ? _value.relationtype
            : (relationtype as CatalogEntryRelationType?) ??
                _value.relationtype,
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

extension CatalogEntryRelatedEntryCopyWithExtension
    on CatalogEntryRelatedEntry {
  $CatalogEntryRelatedEntryCopyWith<CatalogEntryRelatedEntry> get copyWith =>
      _$CatalogEntryRelatedEntryCopyWithImpl<CatalogEntryRelatedEntry>(
        this,
        (value) => value,
      );
}
