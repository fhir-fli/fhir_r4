// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'parameters.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ParametersCopyWith<T> extends $ResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    List<ParametersParameter>? parameter,
    bool? disallowExtensions,
  });
}

class _$ParametersCopyWithImpl<T> implements $ParametersCopyWith<T> {
  final Parameters _value;
  final T Function(Parameters) _then;

  _$ParametersCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Parameters(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<ParametersParameter>?,
      ),
    );
  }
}

extension ParametersCopyWithExtension on Parameters {
  $ParametersCopyWith<Parameters> get copyWith =>
      _$ParametersCopyWithImpl<Parameters>(
        this,
        (value) => value,
      );
}

abstract class $ParametersParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    FhirBase64Binary? valueX,
    Resource? resource,
    List<ParametersParameter>? part_,
    bool? disallowExtensions,
  });
}

class _$ParametersParameterCopyWithImpl<T>
    implements $ParametersParameterCopyWith<T> {
  final ParametersParameter _value;
  final T Function(ParametersParameter) _then;

  _$ParametersParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? part_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ParametersParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirBase64Binary?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as Resource?,
        part_: identical(part_, fhirSentinel)
            ? _value.part_
            : part_ as List<ParametersParameter>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ParametersParameterCopyWithExtension on ParametersParameter {
  $ParametersParameterCopyWith<ParametersParameter> get copyWith =>
      _$ParametersParameterCopyWithImpl<ParametersParameter>(
        this,
        (value) => value,
      );
}
