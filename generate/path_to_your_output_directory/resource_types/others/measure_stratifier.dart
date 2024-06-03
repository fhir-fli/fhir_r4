import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Measure_Stratifier] The Measure resource provides the definition of a
/// quality measure.

@freezed
class Measure_Stratifier with _$Measure_Stratifier {
  const Measure_Stratifier._();

  const factory Measure_Stratifier({
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
/// [linkId] An identifier that is unique within the Measure allowing
/// linkage to the equivalent item in a MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [code] Indicates a meaning for the stratifier. This can be as simple as
/// a unique identifier, or it can establish meaning in a broader context by
/// drawing from a terminology, allowing stratifiers to be correlated across
/// measures.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [description] The human readable description of this stratifier
/// criteria.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [criteria] An expression that specifies the criteria for the
/// stratifier. This is typically the name of an expression defined within a
/// referenced library, but it may also be a path to a stratifier element.

    @JsonKey(name: 'criteria') FhirExpression? criteria,
/// [groupDefinition] A Group resource that defines this population as a
/// set of characteristics.

    @JsonKey(name: 'groupDefinition') Reference? groupDefinition,
/// [component] A component of the stratifier criteria for the measure
/// report, specified as either the name of a valid CQL expression defined
/// within a referenced library or a valid FHIR Resource Path.

    @JsonKey(name: 'component') List<List<Measure_Component>>? component,
  }) = _$Measure_Stratifier;

  @override
  String get fhirType => 'Measure_Stratifier';

  factory Measure_Stratifier.fromJson(Map<String, dynamic> json) =>
      _$Measure_StratifierFromJson(json);

  factory Measure_Stratifier.fromYaml(dynamic yaml) => yaml is String
      ? Measure_Stratifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Measure_Stratifier.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Measure_Stratifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Measure_Stratifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Measure_StratifierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
