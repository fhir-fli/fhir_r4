import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Evidence_AttributeEstimate] The Evidence Resource provides a
/// machine-interpretable expression of an evidence concept including the
/// evidence variables (e.g., population, exposures/interventions, comparators,
/// outcomes, measured variables, confounding variables), the statistics, and
/// the certainty of this evidence.

@freezed
class Evidence_AttributeEstimate with _$Evidence_AttributeEstimate {
  const Evidence_AttributeEstimate._();

  const factory Evidence_AttributeEstimate({
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
/// [description] Human-readable summary of the estimate.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [note] Footnote or explanatory note about the estimate.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [type] The type of attribute estimate, e.g., confidence interval or p
/// value.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [quantity] The singular quantity of the attribute estimate, for
/// attribute estimates represented as single values; also used to report unit
/// of measure.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [level] Use 95 for a 95% confidence interval.

    @JsonKey(name: 'level') FhirDecimal? level,
/// [_level] Extensions for level

    @JsonKey(name: '_level') PrimitiveElement? levelElement,
/// [range] Lower bound of confidence interval.

    @JsonKey(name: 'range') Range? range,
/// [attributeEstimate] A nested attribute estimate; which is the attribute
/// estimate of an attribute estimate.

    @JsonKey(name: 'attributeEstimate') List<List<Evidence_AttributeEstimate>>? attributeEstimate,
  }) = _$Evidence_AttributeEstimate;

  @override
  String get fhirType => 'Evidence_AttributeEstimate';

  factory Evidence_AttributeEstimate.fromJson(Map<String, dynamic> json) =>
      _$Evidence_AttributeEstimateFromJson(json);

  factory Evidence_AttributeEstimate.fromYaml(dynamic yaml) => yaml is String
      ? Evidence_AttributeEstimate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence_AttributeEstimate.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence_AttributeEstimate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Evidence_AttributeEstimate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Evidence_AttributeEstimateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
