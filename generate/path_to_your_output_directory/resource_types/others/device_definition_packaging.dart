import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_Packaging] The characteristics, operational status
/// and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_Packaging with _$DeviceDefinition_Packaging {
  const DeviceDefinition_Packaging._();

  const factory DeviceDefinition_Packaging({
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
/// [identifier] The business identifier of the packaged medication.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [type] A code that defines the specific type of packaging.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [count] The number of items contained in the package (devices or
/// sub-packages).

    @JsonKey(name: 'count') FhirInteger? count,
/// [_count] Extensions for count

    @JsonKey(name: '_count') PrimitiveElement? countElement,
/// [distributor] An organization that distributes the packaged device.

    @JsonKey(name: 'distributor') List<List<DeviceDefinition_Distributor>>? distributor,
/// [udiDeviceIdentifier] Unique Device Identifier (UDI) Barcode string on
/// the packaging.

    @JsonKey(name: 'udiDeviceIdentifier') List<List<DeviceDefinition_UdiDeviceIdentifier>>? udiDeviceIdentifier,
/// [packaging] Allows packages within packages.

    @JsonKey(name: 'packaging') List<List<DeviceDefinition_Packaging>>? packaging,
  }) = _$DeviceDefinition_Packaging;

  @override
  String get fhirType => 'DeviceDefinition_Packaging';

  factory DeviceDefinition_Packaging.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_PackagingFromJson(json);

  factory DeviceDefinition_Packaging.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_Packaging.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_Packaging.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_Packaging cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_Packaging.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_PackagingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
