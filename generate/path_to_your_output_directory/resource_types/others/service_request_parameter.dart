import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ServiceRequest_Parameter] A record of a request for service such as
/// diagnostic investigations, treatments, or operations to be performed.

@freezed
class ServiceRequest_Parameter with _$ServiceRequest_Parameter {
  const ServiceRequest_Parameter._();

  const factory ServiceRequest_Parameter({
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
/// [code] A value representing the additional detail or instructions for
/// the order (e.g., catheter insertion, body elevation, descriptive device
/// configuration and/or setting instructions).

    @JsonKey(name: 'code') CodeableConcept? code,
/// [valueQuantity] Indicates a value for the order detail.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRatio] Indicates a value for the order detail.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueRange] Indicates a value for the order detail.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueBoolean] Indicates a value for the order detail.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueCodeableConcept] Indicates a value for the order detail.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueString] Indicates a value for the order detail.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valuePeriod] Indicates a value for the order detail.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
  }) = _$ServiceRequest_Parameter;

  @override
  String get fhirType => 'ServiceRequest_Parameter';

  factory ServiceRequest_Parameter.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequest_ParameterFromJson(json);

  factory ServiceRequest_Parameter.fromYaml(dynamic yaml) => yaml is String
      ? ServiceRequest_Parameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ServiceRequest_Parameter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ServiceRequest_Parameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ServiceRequest_Parameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ServiceRequest_ParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
