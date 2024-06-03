import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [InventoryItem_Characteristic] A functional description of an inventory
/// item used in inventory and supply-related workflows.

@freezed
class InventoryItem_Characteristic with _$InventoryItem_Characteristic {
  const InventoryItem_Characteristic._();

  const factory InventoryItem_Characteristic({
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
/// [characteristicType] The type of characteristic that is being defined.

    @JsonKey(name: 'characteristicType') CodeableConcept? characteristicType,
/// [valueString] The value of the attribute.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueInteger] The value of the attribute.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueDecimal] The value of the attribute.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
/// [valueBoolean] The value of the attribute.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueUrl] The value of the attribute.

    @JsonKey(name: 'valueUrl') FhirUrl? valueUrl,
/// [_valueUrl] Extensions for valueUrl

    @JsonKey(name: '_valueUrl') PrimitiveElement? valueUrlElement,
/// [valueDateTime] The value of the attribute.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valueQuantity] The value of the attribute.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] The value of the attribute.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueRatio] The value of the attribute.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueAnnotation] The value of the attribute.

    @JsonKey(name: 'valueAnnotation') Annotation? valueAnnotation,
/// [valueAddress] The value of the attribute.

    @JsonKey(name: 'valueAddress') Address? valueAddress,
/// [valueDuration] The value of the attribute.

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
/// [valueCodeableConcept] The value of the attribute.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
  }) = _$InventoryItem_Characteristic;

  @override
  String get fhirType => 'InventoryItem_Characteristic';

  factory InventoryItem_Characteristic.fromJson(Map<String, dynamic> json) =>
      _$InventoryItem_CharacteristicFromJson(json);

  factory InventoryItem_Characteristic.fromYaml(dynamic yaml) => yaml is String
      ? InventoryItem_Characteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InventoryItem_Characteristic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InventoryItem_Characteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory InventoryItem_Characteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InventoryItem_CharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
