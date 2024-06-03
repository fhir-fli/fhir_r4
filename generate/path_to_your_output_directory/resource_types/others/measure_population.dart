import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Measure_Population] The Measure resource provides the definition of a
/// quality measure.

@freezed
class Measure_Population with _$Measure_Population {
  const Measure_Population._();

  const factory Measure_Population({
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
/// linkage to the equivalent population in a MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [code] The type of population criteria.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [description] The human readable description of this population
/// criteria.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [criteria] An expression that specifies the criteria for the
/// population, typically the name of an expression in a library.

    @JsonKey(name: 'criteria') FhirExpression? criteria,
/// [groupDefinition] A Group resource that defines this population as a
/// set of characteristics.

    @JsonKey(name: 'groupDefinition') Reference? groupDefinition,
/// [inputPopulationId] The id of a population element in this measure that
/// provides the input for this population criteria. In most cases, the scoring
/// structure of the measure implies specific relationships (e.g. the Numerator
/// uses the Denominator as the source in a proportion scoring). In some cases,
/// however, multiple possible choices exist and must be resolved explicitly.
/// For example in a ratio measure with multiple initial populations, the
/// denominator must specify which population should be used as the starting
/// point.

    @JsonKey(name: 'inputPopulationId') String? inputPopulationId,
/// [_inputPopulationId] Extensions for inputPopulationId

    @JsonKey(name: '_inputPopulationId') PrimitiveElement? inputPopulationIdElement,
/// [aggregateMethod] Specifies which method should be used to aggregate
/// measure observation values. For most scoring types, this is implied by
/// scoring (e.g. a proportion measure counts members of the populations). For
/// continuous variables, however, this information must be specified to ensure
/// correct calculation.

    @JsonKey(name: 'aggregateMethod') CodeableConcept? aggregateMethod,
  }) = _$Measure_Population;

  @override
  String get fhirType => 'Measure_Population';

  factory Measure_Population.fromJson(Map<String, dynamic> json) =>
      _$Measure_PopulationFromJson(json);

  factory Measure_Population.fromYaml(dynamic yaml) => yaml is String
      ? Measure_Population.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Measure_Population.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Measure_Population cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Measure_Population.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Measure_PopulationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
