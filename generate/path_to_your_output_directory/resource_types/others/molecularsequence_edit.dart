import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MolecularSequence_Edit] Representation of a molecular sequence.

@freezed
class MolecularSequence_Edit with _$MolecularSequence_Edit {
  const MolecularSequence_Edit._();

  const factory MolecularSequence_Edit({
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
/// [start] Start position of the edit on the starting sequence. If the
/// coordinate system is either 0-based or 1-based, then start position is
/// inclusive.

    @JsonKey(name: 'start') FhirInteger? start,
/// [_start] Extensions for start

    @JsonKey(name: '_start') PrimitiveElement? startElement,
/// [end] End position of the edit on the starting sequence. If the
/// coordinate system is 0-based then end is exclusive and does not include the
/// last position. If the coordinate system is 1-base, then end is inclusive
/// and includes the last position.

    @JsonKey(name: 'end') FhirInteger? end,
/// [_end] Extensions for end

    @JsonKey(name: '_end') PrimitiveElement? endElement,
/// [replacementSequence] Allele that was observed. Nucleotide(s)/amino
/// acids from start position of sequence to stop position of sequence on the
/// positive (+) strand of the observed sequence. When the sequence type is
/// DNA, it should be the sequence on the positive (+) strand. This will lay in
/// the range between variant.start and variant.end.

    @JsonKey(name: 'replacementSequence') String? replacementSequence,
/// [_replacementSequence] Extensions for replacementSequence

    @JsonKey(name: '_replacementSequence') PrimitiveElement? replacementSequenceElement,
/// [replacedSequence] Allele in the starting sequence. Nucleotide(s)/amino
/// acids from start position of sequence to stop position of sequence on the
/// positive (+) strand of the starting sequence. When the sequence  type is
/// DNA, it should be the sequence on the positive (+) strand. This will lay in
/// the range between variant.start and variant.end.

    @JsonKey(name: 'replacedSequence') String? replacedSequence,
/// [_replacedSequence] Extensions for replacedSequence

    @JsonKey(name: '_replacedSequence') PrimitiveElement? replacedSequenceElement,
  }) = _$MolecularSequence_Edit;

  @override
  String get fhirType => 'MolecularSequence_Edit';

  factory MolecularSequence_Edit.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_EditFromJson(json);

  factory MolecularSequence_Edit.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequence_Edit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequence_Edit.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequence_Edit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MolecularSequence_Edit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequence_EditFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
