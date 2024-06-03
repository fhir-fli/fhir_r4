import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MolecularSequence] Representation of a molecular sequence.

@freezed
class MolecularSequence with _$MolecularSequence {
  const MolecularSequence._();

  const factory MolecularSequence({
/// [resourceType] This is a MolecularSequence resource

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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] A unique identifier for this particular sequence instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [type] Amino Acid Sequence/ DNA Sequence / RNA Sequence.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [subject] Indicates the subject this sequence is associated too.

    @JsonKey(name: 'subject') Reference? subject,
/// [focus] The actual focus of a molecular sequence when it is not the
/// patient of record representing something or someone associated with the
/// patient such as a spouse, parent, child, or sibling. For example, in trio
/// testing, the subject would be the child (proband) and the focus would be
/// the parent.

    @JsonKey(name: 'focus') List<List<Reference>>? focus,
/// [specimen] Specimen used for sequencing.

    @JsonKey(name: 'specimen') Reference? specimen,
/// [device] The method for sequencing, for example, chip information.

    @JsonKey(name: 'device') Reference? device,
/// [performer] The organization or lab that should be responsible for this
/// result.

    @JsonKey(name: 'performer') Reference? performer,
/// [literal] Sequence that was observed.

    @JsonKey(name: 'literal') String? literal,
/// [_literal] Extensions for literal

    @JsonKey(name: '_literal') PrimitiveElement? literalElement,
/// [formatted] Sequence that was observed as file content. Can be an
/// actual file contents, or referenced by a URL to an external system.

    @JsonKey(name: 'formatted') List<List<Attachment>>? formatted,
/// [relative] A sequence defined relative to another sequence.

    @JsonKey(name: 'relative') List<List<MolecularSequence_Relative>>? relative,
  }) = _$MolecularSequence;

  @override
  String get fhirType => 'MolecularSequence';

  factory MolecularSequence.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceFromJson(json);

  factory MolecularSequence.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequence.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MolecularSequence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
