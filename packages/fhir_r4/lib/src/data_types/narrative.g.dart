// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'narrative.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $NarrativeCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    NarrativeStatus? status,
    FhirXhtml? div,
    bool? disallowExtensions,
  });
}

class _$NarrativeCopyWithImpl<T> implements $NarrativeCopyWith<T> {
  final Narrative _value;
  final T Function(Narrative) _then;

  _$NarrativeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? status = fhirSentinel,
    Object? div = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Narrative(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as NarrativeStatus?) ?? _value.status,
        div: identical(div, fhirSentinel)
            ? _value.div
            : (div as FhirXhtml?) ?? _value.div,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension NarrativeCopyWithExtension on Narrative {
  $NarrativeCopyWith<Narrative> get copyWith =>
      _$NarrativeCopyWithImpl<Narrative>(
        this,
        (value) => value,
      );
}
