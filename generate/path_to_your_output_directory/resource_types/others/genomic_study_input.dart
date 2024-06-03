import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [GenomicStudy_Input] A GenomicStudy is a set of analyses performed to
/// analyze and generate genomic data.

@freezed
class GenomicStudy_Input with _$GenomicStudy_Input {
  const GenomicStudy_Input._();

  const factory GenomicStudy_Input({
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
/// [file] File containing input data.

    @JsonKey(name: 'file') Reference? file,
/// [type] Type of input data, e.g., BAM, CRAM, or FASTA.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [generatedByIdentifier] The analysis event or other GenomicStudy that
/// generated this input file.

    @JsonKey(name: 'generatedByIdentifier') Identifier? generatedByIdentifier,
/// [generatedByReference] The analysis event or other GenomicStudy that
/// generated this input file.

    @JsonKey(name: 'generatedByReference') Reference? generatedByReference,
  }) = _$GenomicStudy_Input;

  @override
  String get fhirType => 'GenomicStudy_Input';

  factory GenomicStudy_Input.fromJson(Map<String, dynamic> json) =>
      _$GenomicStudy_InputFromJson(json);

  factory GenomicStudy_Input.fromYaml(dynamic yaml) => yaml is String
      ? GenomicStudy_Input.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GenomicStudy_Input.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GenomicStudy_Input cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory GenomicStudy_Input.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GenomicStudy_InputFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
