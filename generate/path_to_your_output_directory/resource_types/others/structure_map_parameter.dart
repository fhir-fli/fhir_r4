import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [StructureMap_Parameter] A Map of relationships between 2 structures
/// that can be used to transform data.

@freezed
class StructureMap_Parameter with _$StructureMap_Parameter {
  const StructureMap_Parameter._();

  const factory StructureMap_Parameter({
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
/// [valueId] Parameter value - variable or literal.

    @JsonKey(name: 'valueId') FhirId? valueId,
/// [_valueId] Extensions for valueId

    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,
/// [valueString] Parameter value - variable or literal.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueBoolean] Parameter value - variable or literal.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueInteger] Parameter value - variable or literal.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueDecimal] Parameter value - variable or literal.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
/// [valueDate] Parameter value - variable or literal.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
/// [valueTime] Parameter value - variable or literal.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueDateTime] Parameter value - variable or literal.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
  }) = _$StructureMap_Parameter;

  @override
  String get fhirType => 'StructureMap_Parameter';

  factory StructureMap_Parameter.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_ParameterFromJson(json);

  factory StructureMap_Parameter.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap_Parameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMap_Parameter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMap_Parameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureMap_Parameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMap_ParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
