import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Immunization_ProtocolApplied] Describes the event of a patient being
/// administered a vaccine or a record of an immunization as reported by a
/// patient, a clinician or another party.

@freezed
class Immunization_ProtocolApplied with _$Immunization_ProtocolApplied {
  const Immunization_ProtocolApplied._();

  const factory Immunization_ProtocolApplied({
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
/// [series] One possible path to achieve presumed immunity against a
/// disease - within the context of an authority.

    @JsonKey(name: 'series') String? series,
/// [_series] Extensions for series

    @JsonKey(name: '_series') PrimitiveElement? seriesElement,
/// [authority] Indicates the authority who published the protocol (e.g.
/// ACIP) that is being followed.

    @JsonKey(name: 'authority') Reference? authority,
/// [targetDisease] The vaccine preventable disease the dose is being
/// administered against.

    @JsonKey(name: 'targetDisease') List<List<CodeableConcept>>? targetDisease,
/// [doseNumber] Nominal position in a series as intended by the
/// practitioner administering the dose.

    @JsonKey(name: 'doseNumber') String? doseNumber,
/// [_doseNumber] Extensions for doseNumber

    @JsonKey(name: '_doseNumber') PrimitiveElement? doseNumberElement,
/// [seriesDoses] The recommended number of doses to achieve immunity as
/// intended by the practitioner administering the dose.

    @JsonKey(name: 'seriesDoses') String? seriesDoses,
/// [_seriesDoses] Extensions for seriesDoses

    @JsonKey(name: '_seriesDoses') PrimitiveElement? seriesDosesElement,
  }) = _$Immunization_ProtocolApplied;

  @override
  String get fhirType => 'Immunization_ProtocolApplied';

  factory Immunization_ProtocolApplied.fromJson(Map<String, dynamic> json) =>
      _$Immunization_ProtocolAppliedFromJson(json);

  factory Immunization_ProtocolApplied.fromYaml(dynamic yaml) => yaml is String
      ? Immunization_ProtocolApplied.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Immunization_ProtocolApplied.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Immunization_ProtocolApplied cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Immunization_ProtocolApplied.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Immunization_ProtocolAppliedFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
