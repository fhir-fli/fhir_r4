import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [FamilyMemberHistory_Condition] Significant health conditions for a
/// person related to the patient relevant in the context of care for the
/// patient.

@freezed
class FamilyMemberHistory_Condition with _$FamilyMemberHistory_Condition {
  const FamilyMemberHistory_Condition._();

  const factory FamilyMemberHistory_Condition({
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
/// [code] The actual condition, allergy, or intolerance specified. Could
/// be a coded condition (like MI or Diabetes) or a less specific string like
/// 'cancer' depending on how much is known about the condition and the
/// capabilities of the creating system.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [outcome] Indicates what happened following the condition.  If the
/// condition resulted in death, deceased date is captured on the relation.

    @JsonKey(name: 'outcome') CodeableConcept? outcome,
/// [contributedToDeath] This condition contributed to the cause of death
/// of the related person. If contributedToDeath is not populated, then it is
/// unknown.

    @JsonKey(name: 'contributedToDeath') FhirBoolean? contributedToDeath,
/// [_contributedToDeath] Extensions for contributedToDeath

    @JsonKey(name: '_contributedToDeath') PrimitiveElement? contributedToDeathElement,
/// [onsetAge] Either the age of onset, range of approximate age or
/// descriptive string can be recorded.  For conditions with multiple
/// occurrences, this describes the first known occurrence.

    @JsonKey(name: 'onsetAge') Age? onsetAge,
/// [onsetRange] Either the age of onset, range of approximate age or
/// descriptive string can be recorded.  For conditions with multiple
/// occurrences, this describes the first known occurrence.

    @JsonKey(name: 'onsetRange') Range? onsetRange,
/// [onsetPeriod] Either the age of onset, range of approximate age or
/// descriptive string can be recorded.  For conditions with multiple
/// occurrences, this describes the first known occurrence.

    @JsonKey(name: 'onsetPeriod') Period? onsetPeriod,
/// [onsetString] Either the age of onset, range of approximate age or
/// descriptive string can be recorded.  For conditions with multiple
/// occurrences, this describes the first known occurrence.

    @JsonKey(name: 'onsetString') String? onsetString,
/// [_onsetString] Extensions for onsetString

    @JsonKey(name: '_onsetString') PrimitiveElement? onsetStringElement,
/// [note] An area where general notes can be placed about this specific
/// condition.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$FamilyMemberHistory_Condition;

  @override
  String get fhirType => 'FamilyMemberHistory_Condition';

  factory FamilyMemberHistory_Condition.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistory_ConditionFromJson(json);

  factory FamilyMemberHistory_Condition.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistory_Condition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FamilyMemberHistory_Condition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FamilyMemberHistory_Condition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory FamilyMemberHistory_Condition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FamilyMemberHistory_ConditionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
