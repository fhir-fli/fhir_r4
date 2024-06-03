import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Evidence_SampleSize] The Evidence Resource provides a
/// machine-interpretable expression of an evidence concept including the
/// evidence variables (e.g., population, exposures/interventions, comparators,
/// outcomes, measured variables, confounding variables), the statistics, and
/// the certainty of this evidence.

@freezed
class Evidence_SampleSize with _$Evidence_SampleSize {
  const Evidence_SampleSize._();

  const factory Evidence_SampleSize({
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
/// [description] Human-readable summary of population sample size.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [note] Footnote or explanatory note about the sample size.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [numberOfStudies] Number of participants in the population.

    @JsonKey(name: 'numberOfStudies') FhirUnsignedInt? numberOfStudies,
/// [_numberOfStudies] Extensions for numberOfStudies

    @JsonKey(name: '_numberOfStudies') PrimitiveElement? numberOfStudiesElement,
/// [numberOfParticipants] A human-readable string to clarify or explain
/// concepts about the sample size.

    @JsonKey(name: 'numberOfParticipants') FhirUnsignedInt? numberOfParticipants,
/// [_numberOfParticipants] Extensions for numberOfParticipants

    @JsonKey(name: '_numberOfParticipants') PrimitiveElement? numberOfParticipantsElement,
/// [knownDataCount] Number of participants with known results for measured
/// variables.

    @JsonKey(name: 'knownDataCount') FhirUnsignedInt? knownDataCount,
/// [_knownDataCount] Extensions for knownDataCount

    @JsonKey(name: '_knownDataCount') PrimitiveElement? knownDataCountElement,
  }) = _$Evidence_SampleSize;

  @override
  String get fhirType => 'Evidence_SampleSize';

  factory Evidence_SampleSize.fromJson(Map<String, dynamic> json) =>
      _$Evidence_SampleSizeFromJson(json);

  factory Evidence_SampleSize.fromYaml(dynamic yaml) => yaml is String
      ? Evidence_SampleSize.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence_SampleSize.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence_SampleSize cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Evidence_SampleSize.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Evidence_SampleSizeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
