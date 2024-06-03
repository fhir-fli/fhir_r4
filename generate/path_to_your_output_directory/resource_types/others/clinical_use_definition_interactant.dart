import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClinicalUseDefinition_Interactant] A single issue - either an
/// indication, contraindication, interaction or an undesirable effect for a
/// medicinal product, medication, device or procedure.

@freezed
class ClinicalUseDefinition_Interactant with _$ClinicalUseDefinition_Interactant {
  const ClinicalUseDefinition_Interactant._();

  const factory ClinicalUseDefinition_Interactant({
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
/// [itemReference] The specific medication, product, food, substance etc.
/// or laboratory test that interacts.

    @JsonKey(name: 'itemReference') Reference? itemReference,
/// [itemCodeableConcept] The specific medication, product, food, substance
/// etc. or laboratory test that interacts.

    @JsonKey(name: 'itemCodeableConcept') CodeableConcept? itemCodeableConcept,
  }) = _$ClinicalUseDefinition_Interactant;

  @override
  String get fhirType => 'ClinicalUseDefinition_Interactant';

  factory ClinicalUseDefinition_Interactant.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinition_InteractantFromJson(json);

  factory ClinicalUseDefinition_Interactant.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition_Interactant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition_Interactant.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition_Interactant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinition_Interactant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinition_InteractantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
