// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'usage_context.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $UsageContextCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    Coding? code,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$UsageContextCopyWithImpl<T> implements $UsageContextCopyWith<T> {
  final UsageContext _value;
  final T Function(UsageContext) _then;

  _$UsageContextCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      UsageContext(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as Coding?) ?? _value.code,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as CodeableConcept?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension UsageContextCopyWithExtension on UsageContext {
  $UsageContextCopyWith<UsageContext> get copyWith =>
      _$UsageContextCopyWithImpl<UsageContext>(
        this,
        (value) => value,
      );
}
