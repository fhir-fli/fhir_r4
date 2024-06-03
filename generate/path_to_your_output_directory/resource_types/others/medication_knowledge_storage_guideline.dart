import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationKnowledge_StorageGuideline] Information about a medication
/// that is used to support knowledge.

@freezed
class MedicationKnowledge_StorageGuideline with _$MedicationKnowledge_StorageGuideline {
  const MedicationKnowledge_StorageGuideline._();

  const factory MedicationKnowledge_StorageGuideline({
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
/// [reference] Reference to additional information about the storage
/// guidelines.

    @JsonKey(name: 'reference') FhirUri? reference,
/// [_reference] Extensions for reference

    @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
/// [note] Additional notes about the storage.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [stabilityDuration] Duration that the medication remains stable if the
/// environmentalSetting is respected.

    @JsonKey(name: 'stabilityDuration') FhirDuration? stabilityDuration,
/// [environmentalSetting] Describes a setting/value on the environment for
/// the adequate storage of the medication and other substances.  Environment
/// settings may involve temperature, humidity, or exposure to light.

    @JsonKey(name: 'environmentalSetting') List<List<MedicationKnowledge_EnvironmentalSetting>>? environmentalSetting,
  }) = _$MedicationKnowledge_StorageGuideline;

  @override
  String get fhirType => 'MedicationKnowledge_StorageGuideline';

  factory MedicationKnowledge_StorageGuideline.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_StorageGuidelineFromJson(json);

  factory MedicationKnowledge_StorageGuideline.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_StorageGuideline.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_StorageGuideline.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_StorageGuideline cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_StorageGuideline.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_StorageGuidelineFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
