import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestScript_RequestHeader] A structured set of tests against a FHIR
/// server or client implementation to determine compliance against the FHIR
/// specification.

@freezed
class TestScript_RequestHeader with _$TestScript_RequestHeader {
  const TestScript_RequestHeader._();

  const factory TestScript_RequestHeader({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [field] The HTTP header field e.g. "Accept".

    @JsonKey(name: 'field') String? field,
/// [_field] Extensions for field

    @JsonKey(name: '_field') PrimitiveElement? fieldElement,
/// [value] The value of the header e.g. "application/fhir+xml".

    @JsonKey(name: 'value') String? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _$TestScript_RequestHeader;

  @override
  String get fhirType => 'TestScript_RequestHeader';

  factory TestScript_RequestHeader.fromJson(Map<String, dynamic> json) =>
      _$TestScript_RequestHeaderFromJson(json);

  factory TestScript_RequestHeader.fromYaml(dynamic yaml) => yaml is String
      ? TestScript_RequestHeader.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript_RequestHeader.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript_RequestHeader cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestScript_RequestHeader.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScript_RequestHeaderFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
