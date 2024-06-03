import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [GenomicStudy_Analysis] A GenomicStudy is a set of analyses performed
/// to analyze and generate genomic data.

@freezed
class GenomicStudy_Analysis with _$GenomicStudy_Analysis {
  const GenomicStudy_Analysis._();

  const factory GenomicStudy_Analysis({
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
/// [identifier] Identifiers for the analysis event.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [methodType] Type of the methods used in the analysis, e.g.,
/// Fluorescence in situ hybridization (FISH), Karyotyping, or Microsatellite
/// instability testing (MSI).

    @JsonKey(name: 'methodType') List<List<CodeableConcept>>? methodType,
/// [changeType] Type of the genomic changes studied in the analysis, e.g.,
/// DNA, RNA, or amino acid change.

    @JsonKey(name: 'changeType') List<List<CodeableConcept>>? changeType,
/// [genomeBuild] The reference genome build that is used in this analysis.

    @JsonKey(name: 'genomeBuild') CodeableConcept? genomeBuild,
/// [instantiatesCanonical] The defined protocol that describes the
/// analysis.

    @JsonKey(name: 'instantiatesCanonical') FhirCanonical? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained protocol
/// that describes the analysis.

    @JsonKey(name: 'instantiatesUri') FhirUri? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') PrimitiveElement? instantiatesUriElement,
/// [title] Name of the analysis event (human friendly).

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [focus] The focus of a genomic analysis when it is not the patient of
/// record representing something or someone associated with the patient such
/// as a spouse, parent, child, or sibling. For example, in trio testing, the
/// GenomicStudy.subject would be the child (proband) and the
/// GenomicStudy.analysis.focus of a specific analysis would be the parent.

    @JsonKey(name: 'focus') List<List<Reference>>? focus,
/// [specimen] The specimen used in the analysis event.

    @JsonKey(name: 'specimen') List<List<Reference>>? specimen,
/// [date] The date of the analysis event.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [note] Any notes capture with the analysis event.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [protocolPerformed] The protocol that was performed for the analysis
/// event.

    @JsonKey(name: 'protocolPerformed') Reference? protocolPerformed,
/// [regionsStudied] The genomic regions to be studied in the analysis (BED
/// file).

    @JsonKey(name: 'regionsStudied') List<List<Reference>>? regionsStudied,
/// [regionsCalled] Genomic regions actually called in the analysis event
/// (BED file).

    @JsonKey(name: 'regionsCalled') List<List<Reference>>? regionsCalled,
/// [input] Inputs for the analysis event.

    @JsonKey(name: 'input') List<List<GenomicStudy_Input>>? input,
/// [output] Outputs for the analysis event.

    @JsonKey(name: 'output') List<List<GenomicStudy_Output>>? output,
/// [performer] Performer for the analysis event.

    @JsonKey(name: 'performer') List<List<GenomicStudy_Performer>>? performer,
/// [device] Devices used for the analysis (e.g., instruments, software),
/// with settings and parameters.

    @JsonKey(name: 'device') List<List<GenomicStudy_Device>>? device,
  }) = _$GenomicStudy_Analysis;

  @override
  String get fhirType => 'GenomicStudy_Analysis';

  factory GenomicStudy_Analysis.fromJson(Map<String, dynamic> json) =>
      _$GenomicStudy_AnalysisFromJson(json);

  factory GenomicStudy_Analysis.fromYaml(dynamic yaml) => yaml is String
      ? GenomicStudy_Analysis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GenomicStudy_Analysis.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GenomicStudy_Analysis cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory GenomicStudy_Analysis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GenomicStudy_AnalysisFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
