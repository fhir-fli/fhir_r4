import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ChargeItemDefinition_Applicability] The ChargeItemDefinition resource
/// provides the properties that apply to the (billing) codes necessary to
/// calculate costs and prices. The properties may differ largely depending on
/// type and realm, therefore this resource gives only a rough structure and
/// requires profiling for each type of billing code system.

@freezed
class ChargeItemDefinition_Applicability with _$ChargeItemDefinition_Applicability {
  const ChargeItemDefinition_Applicability._();

  const factory ChargeItemDefinition_Applicability({
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
/// [condition] An expression that returns true or false, indicating
/// whether the condition is satisfied. When using FHIRPath expressions, the
/// %context environment variable must be replaced at runtime with the
/// ChargeItem resource to which this definition is applied.

    @JsonKey(name: 'condition') FhirExpression? condition,
/// [effectivePeriod] The period during which the charge item definition
/// content was or is planned to be in active use.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// [relatedArtifact] Reference to / quotation of the external source of
/// the group of properties.

    @JsonKey(name: 'relatedArtifact') RelatedArtifact? relatedArtifact,
  }) = _$ChargeItemDefinition_Applicability;

  @override
  String get fhirType => 'ChargeItemDefinition_Applicability';

  factory ChargeItemDefinition_Applicability.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemDefinition_ApplicabilityFromJson(json);

  factory ChargeItemDefinition_Applicability.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemDefinition_Applicability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ChargeItemDefinition_Applicability.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ChargeItemDefinition_Applicability cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ChargeItemDefinition_Applicability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ChargeItemDefinition_ApplicabilityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
