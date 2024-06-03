import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AllergyIntolerance_Reaction] Risk of harmful or undesirable
/// physiological response which is specific to an individual and associated
/// with exposure to a substance.

@freezed
class AllergyIntolerance_Reaction with _$AllergyIntolerance_Reaction {
  const AllergyIntolerance_Reaction._();

  const factory AllergyIntolerance_Reaction({
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
/// [substance] Identification of the specific substance (or pharmaceutical
/// product) considered to be responsible for the Adverse Reaction event. Note:
/// the substance for a specific reaction may be different from the substance
/// identified as the cause of the risk, but it must be consistent with it. For
/// instance, it may be a more specific substance (e.g. a brand medication) or
/// a composite product that includes the identified substance. It must be
/// clinically safe to only process the 'code' and ignore the
/// 'reaction.substance'.  If a receiving system is unable to confirm that
/// AllergyIntolerance.reaction.substance falls within the semantic scope of
/// AllergyIntolerance.code, then the receiving system should ignore
/// AllergyIntolerance.reaction.substance.

    @JsonKey(name: 'substance') CodeableConcept? substance,
/// [manifestation] Clinical symptoms and/or signs that are observed or
/// associated with the adverse reaction event.

    @JsonKey(name: 'manifestation') List<List<CodeableReference>>? manifestation,
/// [description] Text description about the reaction as a whole, including
/// details of the manifestation if required.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [onset] Record of the date and/or time of the onset of the Reaction.

    @JsonKey(name: 'onset') FhirDateTime? onset,
/// [_onset] Extensions for onset

    @JsonKey(name: '_onset') PrimitiveElement? onsetElement,
/// [severity] Clinical assessment of the severity of the reaction event as
/// a whole, potentially considering multiple different manifestations.

    @JsonKey(name: 'severity') FhirCode? severity,
/// [_severity] Extensions for severity

    @JsonKey(name: '_severity') PrimitiveElement? severityElement,
/// [exposureRoute] Identification of the route by which the subject was
/// exposed to the substance.

    @JsonKey(name: 'exposureRoute') CodeableConcept? exposureRoute,
/// [note] Additional text about the adverse reaction event not captured in
/// other fields.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$AllergyIntolerance_Reaction;

  @override
  String get fhirType => 'AllergyIntolerance_Reaction';

  factory AllergyIntolerance_Reaction.fromJson(Map<String, dynamic> json) =>
      _$AllergyIntolerance_ReactionFromJson(json);

  factory AllergyIntolerance_Reaction.fromYaml(dynamic yaml) => yaml is String
      ? AllergyIntolerance_Reaction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AllergyIntolerance_Reaction.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AllergyIntolerance_Reaction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AllergyIntolerance_Reaction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AllergyIntolerance_ReactionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
