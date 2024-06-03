import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Device_Name] A type of a manufactured item that is used in the
/// provision of healthcare without being substantially changed through that
/// activity. The device may be a medical or non-medical device.

@freezed
class Device_Name with _$Device_Name {
  const Device_Name._();

  const factory Device_Name({
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
/// [value] The actual name that identifies the device.

    @JsonKey(name: 'value') String? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
/// [type] Indicates the kind of name. RegisteredName | UserFriendlyName |
/// PatientReportedName.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [display] Indicates the default or preferred name to be displayed.

    @JsonKey(name: 'display') FhirBoolean? display,
/// [_display] Extensions for display

    @JsonKey(name: '_display') PrimitiveElement? displayElement,
  }) = _$Device_Name;

  @override
  String get fhirType => 'Device_Name';

  factory Device_Name.fromJson(Map<String, dynamic> json) =>
      _$Device_NameFromJson(json);

  factory Device_Name.fromYaml(dynamic yaml) => yaml is String
      ? Device_Name.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Device_Name.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Device_Name cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Device_Name.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Device_NameFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
