import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [GenomicStudy] A GenomicStudy is a set of analyses performed to analyze
/// and generate genomic data.

@freezed
class GenomicStudy with _$GenomicStudy {
  const GenomicStudy._();

  const factory GenomicStudy({
/// [resourceType] This is a GenomicStudy resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Identifiers for this genomic study.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The status of the genomic study.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [type] The type of the study, e.g., Familial variant segregation,
/// Functional variation detection, or Gene expression profiling.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [subject] The primary subject of the genomic study.

    @JsonKey(name: 'subject') Reference? subject,
/// [encounter] The healthcare event with which this genomics study is
/// associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [startDate] When the genomic study was started.

    @JsonKey(name: 'startDate') FhirDateTime? startDate,
/// [_startDate] Extensions for startDate

    @JsonKey(name: '_startDate') PrimitiveElement? startDateElement,
/// [basedOn] Event resources that the genomic study is based on.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// [referrer] Healthcare professional who requested or referred the
/// genomic study.

    @JsonKey(name: 'referrer') Reference? referrer,
/// [interpreter] Healthcare professionals who interpreted the genomic
/// study.

    @JsonKey(name: 'interpreter') List<List<Reference>>? interpreter,
/// [reason] Why the genomic study was performed.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [instantiatesCanonical] The defined protocol that describes the study.

    @JsonKey(name: 'instantiatesCanonical') FhirCanonical? instantiatesCanonical,
/// [instantiatesUri] The URL pointing to an externally maintained protocol
/// that describes the study.

    @JsonKey(name: 'instantiatesUri') FhirUri? instantiatesUri,
/// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') PrimitiveElement? instantiatesUriElement,
/// [note] Comments related to the genomic study.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [description] Description of the genomic study.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [analysis] The details about a specific analysis that was performed in
/// this GenomicStudy.

    @JsonKey(name: 'analysis') List<List<GenomicStudy_Analysis>>? analysis,
  }) = _$GenomicStudy;

  @override
  String get fhirType => 'GenomicStudy';

  factory GenomicStudy.fromJson(Map<String, dynamic> json) =>
      _$GenomicStudyFromJson(json);

  factory GenomicStudy.fromYaml(dynamic yaml) => yaml is String
      ? GenomicStudy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GenomicStudy.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GenomicStudy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory GenomicStudy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GenomicStudyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
