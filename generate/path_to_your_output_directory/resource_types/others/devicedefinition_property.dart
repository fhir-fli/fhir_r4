import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_Property] The characteristics, operational status and
/// capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_Property with _$DeviceDefinition_Property {
  const DeviceDefinition_Property._();

  const factory DeviceDefinition_Property({
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
/// [type] Code that specifies the property such as a resolution or color
/// being represented.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [valueQuantity] The value of the property specified by the associated
/// property.type code.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueCodeableConcept] The value of the property specified by the
/// associated property.type code.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueString] The value of the property specified by the associated
/// property.type code.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueBoolean] The value of the property specified by the associated
/// property.type code.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueInteger] The value of the property specified by the associated
/// property.type code.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueRange] The value of the property specified by the associated
/// property.type code.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueAttachment] The value of the property specified by the associated
/// property.type code.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
  }) = _$DeviceDefinition_Property;

  @override
  String get fhirType => 'DeviceDefinition_Property';

  factory DeviceDefinition_Property.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_PropertyFromJson(json);

  factory DeviceDefinition_Property.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_Property.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_Property.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_Property cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_Property.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_PropertyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
