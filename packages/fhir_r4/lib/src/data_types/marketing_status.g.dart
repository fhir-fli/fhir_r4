// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'marketing_status.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MarketingStatusCopyWith<T> extends $BackboneTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? country,
    CodeableConcept? jurisdiction,
    CodeableConcept? status,
    Period? dateRange,
    FhirDateTime? restoreDate,
    bool? disallowExtensions,
  });
}

class _$MarketingStatusCopyWithImpl<T> implements $MarketingStatusCopyWith<T> {
  final MarketingStatus _value;
  final T Function(MarketingStatus) _then;

  _$MarketingStatusCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? country = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? status = fhirSentinel,
    Object? dateRange = fhirSentinel,
    Object? restoreDate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MarketingStatus(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        country: identical(country, fhirSentinel)
            ? _value.country
            : country as CodeableConcept?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as CodeableConcept?) ?? _value.status,
        dateRange: identical(dateRange, fhirSentinel)
            ? _value.dateRange
            : dateRange as Period?,
        restoreDate: identical(restoreDate, fhirSentinel)
            ? _value.restoreDate
            : restoreDate as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MarketingStatusCopyWithExtension on MarketingStatus {
  $MarketingStatusCopyWith<MarketingStatus> get copyWith =>
      _$MarketingStatusCopyWithImpl<MarketingStatus>(
        this,
        (value) => value,
      );
}
