import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Measure_SupplementalData] The Measure resource provides the definition
/// of a quality measure.

@freezed
class Measure_SupplementalData with _$Measure_SupplementalData {
  const Measure_SupplementalData._();

  const factory Measure_SupplementalData({
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
/// [linkId] An identifier that is unique within the Measure allowing
/// linkage to the equivalent item in a MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [code] Indicates a meaning for the supplemental data. This can be as
/// simple as a unique identifier, or it can establish meaning in a broader
/// context by drawing from a terminology, allowing supplemental data to be
/// correlated across measures.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [usage] An indicator of the intended usage for the supplemental data
/// element. Supplemental data indicates the data is additional information
/// requested to augment the measure information. Risk adjustment factor
/// indicates the data is additional information used to calculate risk
/// adjustment factors when applying a risk model to the measure calculation.

    @JsonKey(name: 'usage') List<List<CodeableConcept>>? usage,
/// [description] The human readable description of this supplemental data.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [criteria] The criteria for the supplemental data. This is typically
/// the name of a valid expression defined within a referenced library, but it
/// may also be a path to a specific data element. The criteria defines the
/// data to be returned for this element.

    @JsonKey(name: 'criteria') FhirExpression? criteria,
  }) = _$Measure_SupplementalData;

  @override
  String get fhirType => 'Measure_SupplementalData';

  factory Measure_SupplementalData.fromJson(Map<String, dynamic> json) =>
      _$Measure_SupplementalDataFromJson(json);

  factory Measure_SupplementalData.fromYaml(dynamic yaml) => yaml is String
      ? Measure_SupplementalData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Measure_SupplementalData.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Measure_SupplementalData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Measure_SupplementalData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Measure_SupplementalDataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
