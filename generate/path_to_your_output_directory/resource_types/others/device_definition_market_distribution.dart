import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_MarketDistribution] The characteristics, operational
/// status and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_MarketDistribution with _$DeviceDefinition_MarketDistribution {
  const DeviceDefinition_MarketDistribution._();

  const factory DeviceDefinition_MarketDistribution({
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
/// [marketPeriod] Begin and end dates for the commercial distribution of
/// the device.

    @JsonKey(name: 'marketPeriod') Period? marketPeriod,
/// [subJurisdiction] National state or territory to which the
/// marketDistribution recers, typically where the device is commercialized.

    @JsonKey(name: 'subJurisdiction') FhirUri? subJurisdiction,
/// [_subJurisdiction] Extensions for subJurisdiction

    @JsonKey(name: '_subJurisdiction') PrimitiveElement? subJurisdictionElement,
  }) = _$DeviceDefinition_MarketDistribution;

  @override
  String get fhirType => 'DeviceDefinition_MarketDistribution';

  factory DeviceDefinition_MarketDistribution.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_MarketDistributionFromJson(json);

  factory DeviceDefinition_MarketDistribution.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_MarketDistribution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_MarketDistribution.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_MarketDistribution cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_MarketDistribution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_MarketDistributionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
