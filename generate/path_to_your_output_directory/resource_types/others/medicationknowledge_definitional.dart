import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationKnowledge_Definitional] Information about a medication that
/// is used to support knowledge.

@freezed
class MedicationKnowledge_Definitional with _$MedicationKnowledge_Definitional {
  const MedicationKnowledge_Definitional._();

  const factory MedicationKnowledge_Definitional({
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
/// [definition] Associated definitions for this medication.

    @JsonKey(name: 'definition') List<List<Reference>>? definition,
/// [doseForm] Describes the form of the item.  Powder; tablets; capsule.

    @JsonKey(name: 'doseForm') CodeableConcept? doseForm,
/// [intendedRoute] The intended or approved route of administration.

    @JsonKey(name: 'intendedRoute') List<List<CodeableConcept>>? intendedRoute,
/// [ingredient] Identifies a particular constituent of interest in the
/// product.

    @JsonKey(name: 'ingredient') List<List<MedicationKnowledge_Ingredient>>? ingredient,
/// [drugCharacteristic] Specifies descriptive properties of the medicine,
/// such as color, shape, imprints, etc.

    @JsonKey(name: 'drugCharacteristic') List<List<MedicationKnowledge_DrugCharacteristic>>? drugCharacteristic,
  }) = _$MedicationKnowledge_Definitional;

  @override
  String get fhirType => 'MedicationKnowledge_Definitional';

  factory MedicationKnowledge_Definitional.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledge_DefinitionalFromJson(json);

  factory MedicationKnowledge_Definitional.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge_Definitional.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge_Definitional.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge_Definitional cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationKnowledge_Definitional.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledge_DefinitionalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
