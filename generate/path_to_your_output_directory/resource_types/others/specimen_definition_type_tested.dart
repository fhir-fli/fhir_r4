import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SpecimenDefinition_TypeTested] A kind of specimen with associated set
/// of requirements.

@freezed
class SpecimenDefinition_TypeTested with _$SpecimenDefinition_TypeTested {
  const SpecimenDefinition_TypeTested._();

  const factory SpecimenDefinition_TypeTested({
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
/// [isDerived] Primary of secondary specimen.

    @JsonKey(name: 'isDerived') FhirBoolean? isDerived,
/// [_isDerived] Extensions for isDerived

    @JsonKey(name: '_isDerived') PrimitiveElement? isDerivedElement,
/// [type] The kind of specimen conditioned for testing expected by lab.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [preference] The preference for this type of conditioned specimen.

    @JsonKey(name: 'preference') FhirCode? preference,
/// [_preference] Extensions for preference

    @JsonKey(name: '_preference') PrimitiveElement? preferenceElement,
/// [container] The specimen's container.

    @JsonKey(name: 'container') SpecimenDefinition_Container? container,
/// [requirement] Requirements for delivery and special handling of this
/// kind of conditioned specimen.

    @JsonKey(name: 'requirement') FhirMarkdown? requirement,
/// [_requirement] Extensions for requirement

    @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,
/// [retentionTime] The usual time that a specimen of this kind is retained
/// after the ordered tests are completed, for the purpose of additional
/// testing.

    @JsonKey(name: 'retentionTime') FhirDuration? retentionTime,
/// [singleUse] Specimen can be used by only one test or panel if the value
/// is "true".

    @JsonKey(name: 'singleUse') FhirBoolean? singleUse,
/// [_singleUse] Extensions for singleUse

    @JsonKey(name: '_singleUse') PrimitiveElement? singleUseElement,
/// [rejectionCriterion] Criterion for rejection of the specimen in its
/// container by the laboratory.

    @JsonKey(name: 'rejectionCriterion') List<List<CodeableConcept>>? rejectionCriterion,
/// [handling] Set of instructions for preservation/transport of the
/// specimen at a defined temperature interval, prior the testing process.

    @JsonKey(name: 'handling') List<List<SpecimenDefinition_Handling>>? handling,
/// [testingDestination] Where the specimen will be tested: e.g., lab,
/// sector, device or any combination of these.

    @JsonKey(name: 'testingDestination') List<List<CodeableConcept>>? testingDestination,
  }) = _$SpecimenDefinition_TypeTested;

  @override
  String get fhirType => 'SpecimenDefinition_TypeTested';

  factory SpecimenDefinition_TypeTested.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinition_TypeTestedFromJson(json);

  factory SpecimenDefinition_TypeTested.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinition_TypeTested.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinition_TypeTested.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinition_TypeTested cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinition_TypeTested.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinition_TypeTestedFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
