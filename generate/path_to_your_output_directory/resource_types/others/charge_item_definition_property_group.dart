import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ChargeItemDefinition_PropertyGroup] The ChargeItemDefinition resource
/// provides the properties that apply to the (billing) codes necessary to
/// calculate costs and prices. The properties may differ largely depending on
/// type and realm, therefore this resource gives only a rough structure and
/// requires profiling for each type of billing code system.

@freezed
class ChargeItemDefinition_PropertyGroup with _$ChargeItemDefinition_PropertyGroup {
  const ChargeItemDefinition_PropertyGroup._();

  const factory ChargeItemDefinition_PropertyGroup({
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
/// [applicability] Expressions that describe applicability criteria for
/// the priceComponent.

    @JsonKey(name: 'applicability') List<List<ChargeItemDefinition_Applicability>>? applicability,
/// [priceComponent] The price for a ChargeItem may be calculated as a base
/// price with surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development. The
/// priceComponent element can be used to offer transparency to the recipient
/// of the Invoice of how the prices have been calculated.

    @JsonKey(name: 'priceComponent') List<List<MonetaryComponent>>? priceComponent,
  }) = _$ChargeItemDefinition_PropertyGroup;

  @override
  String get fhirType => 'ChargeItemDefinition_PropertyGroup';

  factory ChargeItemDefinition_PropertyGroup.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemDefinition_PropertyGroupFromJson(json);

  factory ChargeItemDefinition_PropertyGroup.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemDefinition_PropertyGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ChargeItemDefinition_PropertyGroup.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ChargeItemDefinition_PropertyGroup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ChargeItemDefinition_PropertyGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ChargeItemDefinition_PropertyGroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
