import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Immunization_Reaction] Describes the event of a patient being
/// administered a vaccine or a record of an immunization as reported by a
/// patient, a clinician or another party.

@freezed
class Immunization_Reaction with _$Immunization_Reaction {
  const Immunization_Reaction._();

  const factory Immunization_Reaction({
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
/// [date] Date of reaction to the immunization.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [manifestation] Details of the reaction.

    @JsonKey(name: 'manifestation') CodeableReference? manifestation,
/// [reported] Self-reported indicator.

    @JsonKey(name: 'reported') FhirBoolean? reported,
/// [_reported] Extensions for reported

    @JsonKey(name: '_reported') PrimitiveElement? reportedElement,
  }) = _$Immunization_Reaction;

  @override
  String get fhirType => 'Immunization_Reaction';

  factory Immunization_Reaction.fromJson(Map<String, dynamic> json) =>
      _$Immunization_ReactionFromJson(json);

  factory Immunization_Reaction.fromYaml(dynamic yaml) => yaml is String
      ? Immunization_Reaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Immunization_Reaction.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Immunization_Reaction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Immunization_Reaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Immunization_ReactionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
