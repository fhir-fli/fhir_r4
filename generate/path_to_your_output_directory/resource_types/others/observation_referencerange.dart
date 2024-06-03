import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Observation_ReferenceRange] Measurements and simple assertions made
/// about a patient, device or other subject.

@freezed
class Observation_ReferenceRange with _$Observation_ReferenceRange {
  const Observation_ReferenceRange._();

  const factory Observation_ReferenceRange({
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
/// [low] The value of the low bound of the reference range.  The low bound
/// of the reference range endpoint is inclusive of the value (e.g.  reference
/// range is >=5 - <=9). If the low bound is omitted,  it is assumed to be
/// meaningless (e.g. reference range is <=2.3).

    @JsonKey(name: 'low') Quantity? low,
/// [high] The value of the high bound of the reference range.  The high
/// bound of the reference range endpoint is inclusive of the value (e.g.
/// reference range is >=5 - <=9). If the high bound is omitted,  it is assumed
/// to be meaningless (e.g. reference range is >= 2.3).

    @JsonKey(name: 'high') Quantity? high,
/// [normalValue] The value of the normal value of the reference range.

    @JsonKey(name: 'normalValue') CodeableConcept? normalValue,
/// [type] Codes to indicate the what part of the targeted reference
/// population it applies to. For example, the normal or therapeutic range.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [appliesTo] Codes to indicate the target population this reference
/// range applies to.  For example, a reference range may be based on the
/// normal population or a particular sex or race.  Multiple `appliesTo`  are
/// interpreted as an "AND" of the target populations.  For example, to
/// represent a target population of African American females, both a code of
/// female and a code for African American would be used.

    @JsonKey(name: 'appliesTo') List<List<CodeableConcept>>? appliesTo,
/// [age] The age at which this reference range is applicable. This is a
/// neonatal age (e.g. number of weeks at term) if the meaning says so.

    @JsonKey(name: 'age') Range? age,
/// [text] Text based reference range in an observation which may be used
/// when a quantitative range is not appropriate for an observation.  An
/// example would be a reference value of "Negative" or a list or table of
/// "normals".

    @JsonKey(name: 'text') FhirMarkdown? text,
/// [_text] Extensions for text

    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _$Observation_ReferenceRange;

  @override
  String get fhirType => 'Observation_ReferenceRange';

  factory Observation_ReferenceRange.fromJson(Map<String, dynamic> json) =>
      _$Observation_ReferenceRangeFromJson(json);

  factory Observation_ReferenceRange.fromYaml(dynamic yaml) => yaml is String
      ? Observation_ReferenceRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Observation_ReferenceRange.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Observation_ReferenceRange cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Observation_ReferenceRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Observation_ReferenceRangeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
