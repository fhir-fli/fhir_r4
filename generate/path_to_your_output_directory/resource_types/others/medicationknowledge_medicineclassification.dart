import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationKnowledge_MedicineClassification] Information about a
/// medication that is used to support knowledge.

@freezed
class MedicationKnowledge_MedicineClassification with _$MedicationKnowledge_MedicineClassification {
  const MedicationKnowledge_MedicineClassification._();

  const factory MedicationKnowledge_MedicineClassification({
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
/// [type] The type of category for the medication (for example,
/// therapeutic classification, therapeutic sub-classification).

    @JsonKey(name: 'type') CodeableConcept? type,
/// [sourceString] Either a textual source of the classification or a
/// reference to an online source.

    @JsonKey(name: 'sourceString') String? sourceString,
/// [_sourceString] Extensions for sourceString

    @JsonKey(name: '_sourceString') PrimitiveElement? sourceStringElement,
/// [sourceUri] Either a textual source of the classification or a
/// reference to an online source.

    @JsonKey(name: 'sourceUri') FhirUri? sourceUri,
/// [_sourceUri] Extensions for sourceUri

    @JsonKey(name: '_sourceUri') PrimitiveElement? sourceUriElement,
/// [classification] Specific category assigned to the medication (e.g.
/// anti-infective, anti-hypertensive, antibiotic, etc.).

    @JsonKey(name: 'classification') List<List<CodeableConcept>>? classification,
  }) = _$MedicationKnowledge_MedicineClassification;

  @override
  String get fhirType => 'MedicationKnowledge_MedicineClassification';

  factory MedicationKnowledge_MedicineClassification.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_MedicineClassificationFromJson(json);

  factory MedicationKnowledge_MedicineClassification.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_MedicineClassification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_MedicineClassification.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_MedicineClassification cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_MedicineClassification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_MedicineClassificationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
