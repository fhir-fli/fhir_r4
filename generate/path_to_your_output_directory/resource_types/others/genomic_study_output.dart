import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [GenomicStudy_Output] A GenomicStudy is a set of analyses performed to
/// analyze and generate genomic data.

@freezed
class GenomicStudy_Output with _$GenomicStudy_Output {
  const GenomicStudy_Output._();

  const factory GenomicStudy_Output({
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
/// [file] File containing output data.

    @JsonKey(name: 'file') Reference? file,
/// [type] Type of output data, e.g., VCF, MAF, or BAM.

    @JsonKey(name: 'type') CodeableConcept? type,
  }) = _$GenomicStudy_Output;

  @override
  String get fhirType => 'GenomicStudy_Output';

  factory GenomicStudy_Output.fromJson(Map<String, dynamic> json) =>
      _$GenomicStudy_OutputFromJson(json);

  factory GenomicStudy_Output.fromYaml(dynamic yaml) => yaml is String
      ? GenomicStudy_Output.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GenomicStudy_Output.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GenomicStudy_Output cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory GenomicStudy_Output.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GenomicStudy_OutputFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
