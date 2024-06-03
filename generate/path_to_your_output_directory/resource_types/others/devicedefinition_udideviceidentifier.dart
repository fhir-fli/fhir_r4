import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_UdiDeviceIdentifier] The characteristics, operational
/// status and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_UdiDeviceIdentifier with _$DeviceDefinition_UdiDeviceIdentifier {
  const DeviceDefinition_UdiDeviceIdentifier._();

  const factory DeviceDefinition_UdiDeviceIdentifier({
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
/// [deviceIdentifier] The identifier that is to be associated with every
/// Device that references this DeviceDefintiion for the issuer and
/// jurisdiction provided in the DeviceDefinition.udiDeviceIdentifier.

    @JsonKey(name: 'deviceIdentifier') String? deviceIdentifier,
/// [_deviceIdentifier] Extensions for deviceIdentifier

    @JsonKey(name: '_deviceIdentifier') PrimitiveElement? deviceIdentifierElement,
/// [issuer] The organization that assigns the identifier algorithm.

    @JsonKey(name: 'issuer') FhirUri? issuer,
/// [_issuer] Extensions for issuer

    @JsonKey(name: '_issuer') PrimitiveElement? issuerElement,
/// [jurisdiction] The jurisdiction to which the deviceIdentifier applies.

    @JsonKey(name: 'jurisdiction') FhirUri? jurisdiction,
/// [_jurisdiction] Extensions for jurisdiction

    @JsonKey(name: '_jurisdiction') PrimitiveElement? jurisdictionElement,
/// [marketDistribution] Indicates where and when the device is available
/// on the market.

    @JsonKey(name: 'marketDistribution') List<List<DeviceDefinition_MarketDistribution>>? marketDistribution,
  }) = _$DeviceDefinition_UdiDeviceIdentifier;

  @override
  String get fhirType => 'DeviceDefinition_UdiDeviceIdentifier';

  factory DeviceDefinition_UdiDeviceIdentifier.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_UdiDeviceIdentifierFromJson(json);

  factory DeviceDefinition_UdiDeviceIdentifier.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_UdiDeviceIdentifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_UdiDeviceIdentifier.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_UdiDeviceIdentifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_UdiDeviceIdentifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_UdiDeviceIdentifierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
