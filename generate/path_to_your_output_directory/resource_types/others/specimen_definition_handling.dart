import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SpecimenDefinition_Handling] A kind of specimen with associated set of
/// requirements.

@freezed
class SpecimenDefinition_Handling with _$SpecimenDefinition_Handling {
  const SpecimenDefinition_Handling._();

  const factory SpecimenDefinition_Handling({
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
/// [temperatureQualifier] It qualifies the interval of temperature, which
/// characterizes an occurrence of handling. Conditions that are not related to
/// temperature may be handled in the instruction element.

    @JsonKey(name: 'temperatureQualifier') CodeableConcept? temperatureQualifier,
/// [temperatureRange] The temperature interval for this set of handling
/// instructions.

    @JsonKey(name: 'temperatureRange') Range? temperatureRange,
/// [maxDuration] The maximum time interval of preservation of the specimen
/// with these conditions.

    @JsonKey(name: 'maxDuration') FhirDuration? maxDuration,
/// [instruction] Additional textual instructions for the preservation or
/// transport of the specimen. For instance, 'Protect from light exposure'.

    @JsonKey(name: 'instruction') FhirMarkdown? instruction,
/// [_instruction] Extensions for instruction

    @JsonKey(name: '_instruction') PrimitiveElement? instructionElement,
  }) = _$SpecimenDefinition_Handling;

  @override
  String get fhirType => 'SpecimenDefinition_Handling';

  factory SpecimenDefinition_Handling.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinition_HandlingFromJson(json);

  factory SpecimenDefinition_Handling.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinition_Handling.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinition_Handling.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinition_Handling cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinition_Handling.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinition_HandlingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
