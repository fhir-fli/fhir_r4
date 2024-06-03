import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AuditEvent_Detail] A record of an event relevant for purposes such as
/// operations, privacy, security, maintenance, and performance analysis.

@freezed
class AuditEvent_Detail with _$AuditEvent_Detail {
  const AuditEvent_Detail._();

  const factory AuditEvent_Detail({
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
/// [type] The type of extra detail provided in the value.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [valueQuantity] The  value of the extra detail.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueCodeableConcept] The  value of the extra detail.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueString] The  value of the extra detail.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueBoolean] The  value of the extra detail.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueInteger] The  value of the extra detail.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueRange] The  value of the extra detail.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueRatio] The  value of the extra detail.

    @JsonKey(name: 'valueRatio') Ratio? valueRatio,
/// [valueTime] The  value of the extra detail.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueDateTime] The  value of the extra detail.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valuePeriod] The  value of the extra detail.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// [valueBase64Binary] The  value of the extra detail.

    @JsonKey(name: 'valueBase64Binary') FhirBase64Binary? valueBase64Binary,
/// [_valueBase64Binary] Extensions for valueBase64Binary

    @JsonKey(name: '_valueBase64Binary') PrimitiveElement? valueBase64BinaryElement,
  }) = _$AuditEvent_Detail;

  @override
  String get fhirType => 'AuditEvent_Detail';

  factory AuditEvent_Detail.fromJson(Map<String, dynamic> json) =>
      _$AuditEvent_DetailFromJson(json);

  factory AuditEvent_Detail.fromYaml(dynamic yaml) => yaml is String
      ? AuditEvent_Detail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AuditEvent_Detail.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AuditEvent_Detail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AuditEvent_Detail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AuditEvent_DetailFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
