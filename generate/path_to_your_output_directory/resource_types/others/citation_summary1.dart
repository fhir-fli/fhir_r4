import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Citation_Summary1] The Citation Resource enables reference to any
/// knowledge artifact for purposes of identification and attribution. The
/// Citation Resource supports existing reference structures and developing
/// publication practices such as versioning, expressing complex
/// contributorship roles, and referencing computable resources.

@freezed
class Citation_Summary1 with _$Citation_Summary1 {
  const Citation_Summary1._();

  const factory Citation_Summary1({
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
/// [type] Used most commonly to express an author list or a
/// contributorship statement.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [style] The format for the display string, such as author last name
/// with first letter capitalized followed by forename initials.

    @JsonKey(name: 'style') CodeableConcept? style,
/// [source] Used to code the producer or rule for creating the display
/// string.

    @JsonKey(name: 'source') CodeableConcept? source,
/// [value] The display string for the author list, contributor list, or
/// contributorship statement.

    @JsonKey(name: 'value') FhirMarkdown? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _$Citation_Summary1;

  @override
  String get fhirType => 'Citation_Summary1';

  factory Citation_Summary1.fromJson(Map<String, dynamic> json) =>
      _$Citation_Summary1FromJson(json);

  factory Citation_Summary1.fromYaml(dynamic yaml) => yaml is String
      ? Citation_Summary1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation_Summary1.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation_Summary1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation_Summary1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Citation_Summary1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
