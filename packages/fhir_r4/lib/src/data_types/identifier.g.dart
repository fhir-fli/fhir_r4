// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'identifier.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $IdentifierCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    IdentifierUse? use,
    CodeableConcept? type,
    FhirUri? system,
    FhirString? value,
    Period? period,
    Reference? assigner,
    bool? disallowExtensions,
  });
}

class _$IdentifierCopyWithImpl<T> implements $IdentifierCopyWith<T> {
  final Identifier _value;
  final T Function(Identifier) _then;

  _$IdentifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? use = fhirSentinel,
    Object? type = fhirSentinel,
    Object? system = fhirSentinel,
    Object? value = fhirSentinel,
    Object? period = fhirSentinel,
    Object? assigner = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Identifier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        use: identical(use, fhirSentinel) ? _value.use : use as IdentifierUse?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as FhirUri?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirString?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        assigner: identical(assigner, fhirSentinel)
            ? _value.assigner
            : assigner as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension IdentifierCopyWithExtension on Identifier {
  $IdentifierCopyWith<Identifier> get copyWith =>
      _$IdentifierCopyWithImpl<Identifier>(
        this,
        (value) => value,
      );
}
