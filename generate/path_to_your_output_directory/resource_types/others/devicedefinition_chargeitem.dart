import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_ChargeItem] The characteristics, operational status
/// and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_ChargeItem with _$DeviceDefinition_ChargeItem {
  const DeviceDefinition_ChargeItem._();

  const factory DeviceDefinition_ChargeItem({
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
/// [chargeItemCode] The code or reference for the charge item.

    @JsonKey(name: 'chargeItemCode') CodeableReference? chargeItemCode,
/// [count] Coefficient applicable to the billing code.

    @JsonKey(name: 'count') Quantity? count,
/// [effectivePeriod] A specific time period in which this charge item
/// applies.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// [useContext] The context to which this charge item applies.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
  }) = _$DeviceDefinition_ChargeItem;

  @override
  String get fhirType => 'DeviceDefinition_ChargeItem';

  factory DeviceDefinition_ChargeItem.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_ChargeItemFromJson(json);

  factory DeviceDefinition_ChargeItem.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_ChargeItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_ChargeItem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_ChargeItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_ChargeItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_ChargeItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
