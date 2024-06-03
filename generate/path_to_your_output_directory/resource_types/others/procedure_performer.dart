import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Procedure_Performer] An action that is or was performed on or for a
/// patient, practitioner, device, organization, or location. For example, this
/// can be a physical intervention on a patient like an operation, or less
/// invasive like long term services, counseling, or hypnotherapy.  This can be
/// a quality or safety inspection for a location, organization, or device.
/// This can be an accreditation procedure on a practitioner for licensing.

@freezed
class Procedure_Performer with _$Procedure_Performer {
  const Procedure_Performer._();

  const factory Procedure_Performer({
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
/// [function] Distinguishes the type of involvement of the performer in
/// the procedure. For example, surgeon, anaesthetist, endoscopist.

    @JsonKey(name: 'function') CodeableConcept? function,
/// [actor] Indicates who or what performed the procedure.

    @JsonKey(name: 'actor') Reference? actor,
/// [onBehalfOf] The Organization the Patient, RelatedPerson, Device,
/// CareTeam, and HealthcareService was acting on behalf of.

    @JsonKey(name: 'onBehalfOf') Reference? onBehalfOf,
/// [period] Time period during which the performer performed the
/// procedure.

    @JsonKey(name: 'period') Period? period,
  }) = _$Procedure_Performer;

  @override
  String get fhirType => 'Procedure_Performer';

  factory Procedure_Performer.fromJson(Map<String, dynamic> json) =>
      _$Procedure_PerformerFromJson(json);

  factory Procedure_Performer.fromYaml(dynamic yaml) => yaml is String
      ? Procedure_Performer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Procedure_Performer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Procedure_Performer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Procedure_Performer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Procedure_PerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
