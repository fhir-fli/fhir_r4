import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MolecularSequence_Relative] Representation of a molecular sequence.

@freezed
class MolecularSequence_Relative with _$MolecularSequence_Relative {
  const MolecularSequence_Relative._();

  const factory MolecularSequence_Relative({
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
/// [coordinateSystem] These are different ways of identifying nucleotides
/// or amino acids within a sequence. Different databases and file types may
/// use different systems. For detail definitions, see
/// https://loinc.org/92822-6/ for more detail.

    @JsonKey(name: 'coordinateSystem') CodeableConcept? coordinateSystem,
/// [ordinalPosition] Indicates the order in which the sequence should be
/// considered when putting multiple 'relative' elements together.

    @JsonKey(name: 'ordinalPosition') FhirInteger? ordinalPosition,
/// [_ordinalPosition] Extensions for ordinalPosition

    @JsonKey(name: '_ordinalPosition') PrimitiveElement? ordinalPositionElement,
/// [sequenceRange] Indicates the nucleotide range in the composed sequence
/// when multiple 'relative' elements are used together.

    @JsonKey(name: 'sequenceRange') Range? sequenceRange,
/// [startingSequence] A sequence that is used as a starting sequence to
/// describe variants that are present in a sequence analyzed.

    @JsonKey(name: 'startingSequence') MolecularSequence_StartingSequence? startingSequence,
/// [edit] Changes in sequence from the starting sequence.

    @JsonKey(name: 'edit') List<List<MolecularSequence_Edit>>? edit,
  }) = _$MolecularSequence_Relative;

  @override
  String get fhirType => 'MolecularSequence_Relative';

  factory MolecularSequence_Relative.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_RelativeFromJson(json);

  factory MolecularSequence_Relative.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequence_Relative.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequence_Relative.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequence_Relative cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MolecularSequence_Relative.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequence_RelativeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
