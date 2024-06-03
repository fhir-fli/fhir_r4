import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Observation_Component] Measurements and simple assertions made about a
/// patient, device or other subject.

@freezed
class Observation_Component with _$Observation_Component {
  const Observation_Component._();

  const factory Observation_Component({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [code] Describes what was observed. Sometimes this is called the
/// observation "code".

    @JsonKey(name: 'code') CodeableConcept? code,
/// [valueQuantity] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueCodeableConcept] The information determined as a result of making
/// the observation, if the information has a simple value.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueString] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueBoolean] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueInteger] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueRange] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueRatio] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueSampledData] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueSampledData') SampledData? valueSampledData,
/// [valueTime] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueDateTime] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valuePeriod] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// [valueAttachment] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// [valueReference] The information determined as a result of making the
/// observation, if the information has a simple value.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [dataAbsentReason] Provides a reason why the expected value in the
/// element Observation.component.value[x] is missing.

    @JsonKey(name: 'dataAbsentReason') CodeableConcept? dataAbsentReason,
/// [interpretation] A categorical assessment of an observation value.  For
/// example, high, low, normal.

    @JsonKey(name: 'interpretation') List<List<CodeableConcept>>? interpretation,
/// [referenceRange] Guidance on how to interpret the value by comparison
/// to a normal or recommended range.

    @JsonKey(name: 'referenceRange') List<List<Observation_ReferenceRange>>? referenceRange,
  }) = _$Observation_Component;

  @override
  String get fhirType => 'Observation_Component';

  factory Observation_Component.fromJson(Map<String, dynamic> json) =>
      _$Observation_ComponentFromJson(json);

  factory Observation_Component.fromYaml(dynamic yaml) => yaml is String
      ? Observation_Component.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Observation_Component.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Observation_Component cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Observation_Component.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Observation_ComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
