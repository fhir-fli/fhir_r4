// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'human_name.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $HumanNameCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    NameUse? use,
    FhirString? text,
    FhirString? family,
    List<FhirString>? given,
    List<FhirString>? prefix,
    List<FhirString>? suffix,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$HumanNameCopyWithImpl<T> implements $HumanNameCopyWith<T> {
  final HumanName _value;
  final T Function(HumanName) _then;

  _$HumanNameCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? use = fhirSentinel,
    Object? text = fhirSentinel,
    Object? family = fhirSentinel,
    Object? given = fhirSentinel,
    Object? prefix = fhirSentinel,
    Object? suffix = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      HumanName(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        use: identical(use, fhirSentinel) ? _value.use : use as NameUse?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        family: identical(family, fhirSentinel)
            ? _value.family
            : family as FhirString?,
        given: identical(given, fhirSentinel)
            ? _value.given
            : given as List<FhirString>?,
        prefix: identical(prefix, fhirSentinel)
            ? _value.prefix
            : prefix as List<FhirString>?,
        suffix: identical(suffix, fhirSentinel)
            ? _value.suffix
            : suffix as List<FhirString>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension HumanNameCopyWithExtension on HumanName {
  $HumanNameCopyWith<HumanName> get copyWith =>
      _$HumanNameCopyWithImpl<HumanName>(
        this,
        (value) => value,
      );
}
