// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'parameter_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ParameterDefinitionCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? name,
    OperationParameterUse? use,
    FhirInteger? min,
    FhirString? max,
    FhirString? documentation,
    FHIRAllTypes? type,
    FhirCanonical? profile,
    bool? disallowExtensions,
  });
}

class _$ParameterDefinitionCopyWithImpl<T>
    implements $ParameterDefinitionCopyWith<T> {
  final ParameterDefinition _value;
  final T Function(ParameterDefinition) _then;

  _$ParameterDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? name = fhirSentinel,
    Object? use = fhirSentinel,
    Object? min = fhirSentinel,
    Object? max = fhirSentinel,
    Object? documentation = fhirSentinel,
    Object? type = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ParameterDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirCode?,
        use: identical(use, fhirSentinel)
            ? _value.use
            : (use as OperationParameterUse?) ?? _value.use,
        min: identical(min, fhirSentinel) ? _value.min : min as FhirInteger?,
        max: identical(max, fhirSentinel) ? _value.max : max as FhirString?,
        documentation: identical(documentation, fhirSentinel)
            ? _value.documentation
            : documentation as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as FHIRAllTypes?) ?? _value.type,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ParameterDefinitionCopyWithExtension on ParameterDefinition {
  $ParameterDefinitionCopyWith<ParameterDefinition> get copyWith =>
      _$ParameterDefinitionCopyWithImpl<ParameterDefinition>(
        this,
        (value) => value,
      );
}
