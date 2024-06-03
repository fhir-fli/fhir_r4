import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceRequest_Parameter] Represents a request for a patient to employ
/// a medical device. The device may be an implantable device, or an external
/// assistive device, such as a walker.

@freezed
class DeviceRequest_Parameter with _$DeviceRequest_Parameter {
  const DeviceRequest_Parameter._();

  const factory DeviceRequest_Parameter({
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
/// [code] A code or string that identifies the device detail being
/// asserted.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [valueCodeableConcept] The value of the device detail.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueQuantity] The value of the device detail.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] The value of the device detail.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueBoolean] The value of the device detail.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
  }) = _$DeviceRequest_Parameter;

  @override
  String get fhirType => 'DeviceRequest_Parameter';

  factory DeviceRequest_Parameter.fromJson(Map<String, dynamic> json) =>
      _$DeviceRequest_ParameterFromJson(json);

  factory DeviceRequest_Parameter.fromYaml(dynamic yaml) => yaml is String
      ? DeviceRequest_Parameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceRequest_Parameter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceRequest_Parameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceRequest_Parameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceRequest_ParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
