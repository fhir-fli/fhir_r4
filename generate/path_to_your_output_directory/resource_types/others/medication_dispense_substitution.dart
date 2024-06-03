import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicationDispense_Substitution] Indicates that a medication product
/// is to be or has been dispensed for a named person/patient.  This includes a
/// description of the medication product (supply) provided and the
/// instructions for administering the medication.  The medication dispense is
/// the result of a pharmacy system responding to a medication order.

@freezed
class MedicationDispense_Substitution with _$MedicationDispense_Substitution {
  const MedicationDispense_Substitution._();

  const factory MedicationDispense_Substitution({
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
/// [wasSubstituted] True if the dispenser dispensed a different drug or
/// product from what was prescribed.

    @JsonKey(name: 'wasSubstituted') FhirBoolean? wasSubstituted,
/// [_wasSubstituted] Extensions for wasSubstituted

    @JsonKey(name: '_wasSubstituted') PrimitiveElement? wasSubstitutedElement,
/// [type] A code signifying whether a different drug was dispensed from
/// what was prescribed.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [reason] Indicates the reason for the substitution (or lack of
/// substitution) from what was prescribed.

    @JsonKey(name: 'reason') List<List<CodeableConcept>>? reason,
/// [responsibleParty] The person or organization that has primary
/// responsibility for the substitution.

    @JsonKey(name: 'responsibleParty') Reference? responsibleParty,
  }) = _$MedicationDispense_Substitution;

  @override
  String get fhirType => 'MedicationDispense_Substitution';

  factory MedicationDispense_Substitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationDispense_SubstitutionFromJson(json);

  factory MedicationDispense_Substitution.fromYaml(dynamic yaml) => yaml is String
      ? MedicationDispense_Substitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationDispense_Substitution.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationDispense_Substitution cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicationDispense_Substitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationDispense_SubstitutionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
