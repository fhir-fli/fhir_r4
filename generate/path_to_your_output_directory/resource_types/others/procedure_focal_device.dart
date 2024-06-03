import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Procedure_FocalDevice] An action that is or was performed on or for a
/// patient, practitioner, device, organization, or location. For example, this
/// can be a physical intervention on a patient like an operation, or less
/// invasive like long term services, counseling, or hypnotherapy.  This can be
/// a quality or safety inspection for a location, organization, or device.
/// This can be an accreditation procedure on a practitioner for licensing.

@freezed
class Procedure_FocalDevice with _$Procedure_FocalDevice {
  const Procedure_FocalDevice._();

  const factory Procedure_FocalDevice({
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
/// [action] The kind of change that happened to the device during the
/// procedure.

    @JsonKey(name: 'action') CodeableConcept? action,
/// [manipulated] The device that was manipulated (changed) during the
/// procedure.

    @JsonKey(name: 'manipulated') Reference? manipulated,
  }) = _$Procedure_FocalDevice;

  @override
  String get fhirType => 'Procedure_FocalDevice';

  factory Procedure_FocalDevice.fromJson(Map<String, dynamic> json) =>
      _$Procedure_FocalDeviceFromJson(json);

  factory Procedure_FocalDevice.fromYaml(dynamic yaml) => yaml is String
      ? Procedure_FocalDevice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Procedure_FocalDevice.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Procedure_FocalDevice cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Procedure_FocalDevice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Procedure_FocalDeviceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
