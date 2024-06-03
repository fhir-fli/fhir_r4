import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CodeSystem_Property1] The CodeSystem resource is used to declare the
/// existence of and describe a code system or code system supplement and its
/// key properties, and optionally define a part or all of its content.

@freezed
class CodeSystem_Property1 with _$CodeSystem_Property1 {
  const CodeSystem_Property1._();

  const factory CodeSystem_Property1({
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
/// [code] A code that is a reference to CodeSystem.property.code.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [valueCode] The value of this property.

    @JsonKey(name: 'valueCode') FhirCode? valueCode,
/// [_valueCode] Extensions for valueCode

    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,
/// [valueCoding] The value of this property.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// [valueString] The value of this property.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueInteger] The value of this property.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueBoolean] The value of this property.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueDateTime] The value of this property.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valueDecimal] The value of this property.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
  }) = _$CodeSystem_Property1;

  @override
  String get fhirType => 'CodeSystem_Property1';

  factory CodeSystem_Property1.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_Property1FromJson(json);

  factory CodeSystem_Property1.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystem_Property1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystem_Property1.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystem_Property1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CodeSystem_Property1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystem_Property1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
