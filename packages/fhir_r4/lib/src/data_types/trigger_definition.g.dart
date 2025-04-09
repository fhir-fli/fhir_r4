// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'trigger_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TriggerDefinitionCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    TriggerType? type,
    FhirString? name,
    Timing? timingX,
    List<DataRequirement>? data,
    FhirExpression? condition,
    bool? disallowExtensions,
  });
}

class _$TriggerDefinitionCopyWithImpl<T>
    implements $TriggerDefinitionCopyWith<T> {
  final TriggerDefinition _value;
  final T Function(TriggerDefinition) _then;

  _$TriggerDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? data = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TriggerDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: type as TriggerType? ?? _value.type,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as Timing?,
        data: identical(data, fhirSentinel)
            ? _value.data
            : data as List<DataRequirement>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as FhirExpression?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TriggerDefinitionCopyWithExtension on TriggerDefinition {
  $TriggerDefinitionCopyWith<TriggerDefinition> get copyWith =>
      _$TriggerDefinitionCopyWithImpl<TriggerDefinition>(
        this,
        (value) => value,
      );
}
