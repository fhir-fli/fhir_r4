import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDispense_Performer] A record of dispensation of a device - i.e.,
/// assigning a device to a patient, or to a professional for their use.

@freezed
class DeviceDispense_Performer with _$DeviceDispense_Performer {
  const DeviceDispense_Performer._();

  const factory DeviceDispense_Performer({
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
/// [function] Distinguishes the type of performer in the dispense.  For
/// example, date enterer, packager, final checker.

    @JsonKey(name: 'function') CodeableConcept? function,
/// [actor] The device, practitioner, etc. who performed the action.  It
/// should be assumed that the actor is the dispenser of the device.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$DeviceDispense_Performer;

  @override
  String get fhirType => 'DeviceDispense_Performer';

  factory DeviceDispense_Performer.fromJson(Map<String, dynamic> json) =>
      _$DeviceDispense_PerformerFromJson(json);

  factory DeviceDispense_Performer.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDispense_Performer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDispense_Performer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDispense_Performer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDispense_Performer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDispense_PerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
