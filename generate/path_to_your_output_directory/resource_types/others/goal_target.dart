import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Goal_Target] Describes the intended objective(s) for a patient, group
/// or organization care, for example, weight loss, restoring an activity of
/// daily living, obtaining herd immunity via immunization, meeting a process
/// improvement objective, etc.

@freezed
class Goal_Target with _$Goal_Target {
  const Goal_Target._();

  const factory Goal_Target({
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
/// [measure] The parameter whose value is being tracked, e.g. body weight,
/// blood pressure, or hemoglobin A1c level.

    @JsonKey(name: 'measure') CodeableConcept? measure,
/// [detailQuantity] The target value of the focus to be achieved to
/// signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high
/// or low or both values of the range can be specified. When a low value is
/// missing, it indicates that the goal is achieved at any focus value at or
/// below the high value. Similarly, if the high value is missing, it indicates
/// that the goal is achieved at any focus value at or above the low value.

    @JsonKey(name: 'detailQuantity') Quantity? detailQuantity,
/// [detailRange] The target value of the focus to be achieved to signify
/// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
/// or both values of the range can be specified. When a low value is missing,
/// it indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any focus value at or above the low value.

    @JsonKey(name: 'detailRange') Range? detailRange,
/// [detailCodeableConcept] The target value of the focus to be achieved to
/// signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high
/// or low or both values of the range can be specified. When a low value is
/// missing, it indicates that the goal is achieved at any focus value at or
/// below the high value. Similarly, if the high value is missing, it indicates
/// that the goal is achieved at any focus value at or above the low value.

    @JsonKey(name: 'detailCodeableConcept') CodeableConcept? detailCodeableConcept,
/// [detailString] The target value of the focus to be achieved to signify
/// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
/// or both values of the range can be specified. When a low value is missing,
/// it indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any focus value at or above the low value.

    @JsonKey(name: 'detailString') String? detailString,
/// [_detailString] Extensions for detailString

    @JsonKey(name: '_detailString') PrimitiveElement? detailStringElement,
/// [detailBoolean] The target value of the focus to be achieved to signify
/// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
/// or both values of the range can be specified. When a low value is missing,
/// it indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any focus value at or above the low value.

    @JsonKey(name: 'detailBoolean') FhirBoolean? detailBoolean,
/// [_detailBoolean] Extensions for detailBoolean

    @JsonKey(name: '_detailBoolean') PrimitiveElement? detailBooleanElement,
/// [detailInteger] The target value of the focus to be achieved to signify
/// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
/// or both values of the range can be specified. When a low value is missing,
/// it indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any focus value at or above the low value.

    @JsonKey(name: 'detailInteger') FhirInteger? detailInteger,
/// [_detailInteger] Extensions for detailInteger

    @JsonKey(name: '_detailInteger') PrimitiveElement? detailIntegerElement,
/// [detailRatio] The target value of the focus to be achieved to signify
/// the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low
/// or both values of the range can be specified. When a low value is missing,
/// it indicates that the goal is achieved at any focus value at or below the
/// high value. Similarly, if the high value is missing, it indicates that the
/// goal is achieved at any focus value at or above the low value.

    @JsonKey(name: 'detailRatio') Ratio? detailRatio,
/// [dueDate] Indicates either the date or the duration after start by
/// which the goal should be met.

    @JsonKey(name: 'dueDate') FhirDate? dueDate,
/// [_dueDate] Extensions for dueDate

    @JsonKey(name: '_dueDate') PrimitiveElement? dueDateElement,
/// [dueDuration] Indicates either the date or the duration after start by
/// which the goal should be met.

    @JsonKey(name: 'dueDuration') FhirDuration? dueDuration,
  }) = _$Goal_Target;

  @override
  String get fhirType => 'Goal_Target';

  factory Goal_Target.fromJson(Map<String, dynamic> json) =>
      _$Goal_TargetFromJson(json);

  factory Goal_Target.fromYaml(dynamic yaml) => yaml is String
      ? Goal_Target.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Goal_Target.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Goal_Target cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Goal_Target.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Goal_TargetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
