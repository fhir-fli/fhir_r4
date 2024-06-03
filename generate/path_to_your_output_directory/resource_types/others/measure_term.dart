import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Measure_Term] The Measure resource provides the definition of a
/// quality measure.

@freezed
class Measure_Term with _$Measure_Term {
  const Measure_Term._();

  const factory Measure_Term({
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
/// [code] A codeable representation of the defined term.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [definition] Provides a definition for the term as used within the
/// measure.

    @JsonKey(name: 'definition') FhirMarkdown? definition,
/// [_definition] Extensions for definition

    @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
  }) = _$Measure_Term;

  @override
  String get fhirType => 'Measure_Term';

  factory Measure_Term.fromJson(Map<String, dynamic> json) =>
      _$Measure_TermFromJson(json);

  factory Measure_Term.fromYaml(dynamic yaml) => yaml is String
      ? Measure_Term.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Measure_Term.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Measure_Term cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Measure_Term.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Measure_TermFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
