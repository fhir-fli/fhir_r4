// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'period.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PeriodCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDateTime? start,
    FhirDateTime? end,
    bool? disallowExtensions,
  });
}

class _$PeriodCopyWithImpl<T> implements $PeriodCopyWith<T> {
  final Period _value;
  final T Function(Period) _then;

  _$PeriodCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? start = fhirSentinel,
    Object? end = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Period(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        start: identical(start, fhirSentinel)
            ? _value.start
            : start as FhirDateTime?,
        end: identical(end, fhirSentinel) ? _value.end : end as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PeriodCopyWithExtension on Period {
  $PeriodCopyWith<Period> get copyWith => _$PeriodCopyWithImpl<Period>(
        this,
        (value) => value,
      );
}
