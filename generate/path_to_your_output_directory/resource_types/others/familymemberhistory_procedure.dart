import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [FamilyMemberHistory_Procedure] Significant health conditions for a
/// person related to the patient relevant in the context of care for the
/// patient.

@freezed
class FamilyMemberHistory_Procedure with _$FamilyMemberHistory_Procedure {
  const FamilyMemberHistory_Procedure._();

  const factory FamilyMemberHistory_Procedure({
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
/// [code] The actual procedure specified. Could be a coded procedure or a
/// less specific string depending on how much is known about the procedure and
/// the capabilities of the creating system.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [outcome] Indicates what happened following the procedure. If the
/// procedure resulted in death, deceased date is captured on the relation.

    @JsonKey(name: 'outcome') CodeableConcept? outcome,
/// [contributedToDeath] This procedure contributed to the cause of death
/// of the related person. If contributedToDeath is not populated, then it is
/// unknown.

    @JsonKey(name: 'contributedToDeath') FhirBoolean? contributedToDeath,
/// [_contributedToDeath] Extensions for contributedToDeath

    @JsonKey(name: '_contributedToDeath') PrimitiveElement? contributedToDeathElement,
/// [performedAge] Estimated or actual date, date-time, period, or age when
/// the procedure was performed. Allows a period to support complex procedures
/// that span more than one date, and also allows for the length of the
/// procedure to be captured.

    @JsonKey(name: 'performedAge') Age? performedAge,
/// [performedRange] Estimated or actual date, date-time, period, or age
/// when the procedure was performed. Allows a period to support complex
/// procedures that span more than one date, and also allows for the length of
/// the procedure to be captured.

    @JsonKey(name: 'performedRange') Range? performedRange,
/// [performedPeriod] Estimated or actual date, date-time, period, or age
/// when the procedure was performed. Allows a period to support complex
/// procedures that span more than one date, and also allows for the length of
/// the procedure to be captured.

    @JsonKey(name: 'performedPeriod') Period? performedPeriod,
/// [performedString] Estimated or actual date, date-time, period, or age
/// when the procedure was performed. Allows a period to support complex
/// procedures that span more than one date, and also allows for the length of
/// the procedure to be captured.

    @JsonKey(name: 'performedString') String? performedString,
/// [_performedString] Extensions for performedString

    @JsonKey(name: '_performedString') PrimitiveElement? performedStringElement,
/// [performedDateTime] Estimated or actual date, date-time, period, or age
/// when the procedure was performed. Allows a period to support complex
/// procedures that span more than one date, and also allows for the length of
/// the procedure to be captured.

    @JsonKey(name: 'performedDateTime') FhirDateTime? performedDateTime,
/// [_performedDateTime] Extensions for performedDateTime

    @JsonKey(name: '_performedDateTime') PrimitiveElement? performedDateTimeElement,
/// [note] An area where general notes can be placed about this specific
/// procedure.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$FamilyMemberHistory_Procedure;

  @override
  String get fhirType => 'FamilyMemberHistory_Procedure';

  factory FamilyMemberHistory_Procedure.fromJson(Map<String, dynamic> json) =>
      _$FamilyMemberHistory_ProcedureFromJson(json);

  factory FamilyMemberHistory_Procedure.fromYaml(dynamic yaml) => yaml is String
      ? FamilyMemberHistory_Procedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FamilyMemberHistory_Procedure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FamilyMemberHistory_Procedure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory FamilyMemberHistory_Procedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FamilyMemberHistory_ProcedureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
