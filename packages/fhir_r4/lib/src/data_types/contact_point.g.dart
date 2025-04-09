// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'contact_point.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ContactPointCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    ContactPointSystem? system,
    FhirString? value,
    ContactPointUse? use,
    FhirPositiveInt? rank,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$ContactPointCopyWithImpl<T> implements $ContactPointCopyWith<T> {
  final ContactPoint _value;
  final T Function(ContactPoint) _then;

  _$ContactPointCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? system = fhirSentinel,
    Object? value = fhirSentinel,
    Object? use = fhirSentinel,
    Object? rank = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContactPoint(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as ContactPointSystem?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirString?,
        use:
            identical(use, fhirSentinel) ? _value.use : use as ContactPointUse?,
        rank: identical(rank, fhirSentinel)
            ? _value.rank
            : rank as FhirPositiveInt?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContactPointCopyWithExtension on ContactPoint {
  $ContactPointCopyWith<ContactPoint> get copyWith =>
      _$ContactPointCopyWithImpl<ContactPoint>(
        this,
        (value) => value,
      );
}
