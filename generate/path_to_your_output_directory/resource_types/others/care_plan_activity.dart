import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CarePlan_Activity] Describes the intention of how one or more
/// practitioners intend to deliver care for a particular patient, group or
/// community for a period of time, possibly limited to care for a specific
/// condition or set of conditions.

@freezed
class CarePlan_Activity with _$CarePlan_Activity {
  const CarePlan_Activity._();

  const factory CarePlan_Activity({
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
/// [performedActivity] Identifies the activity that was performed. For
/// example, an activity could be patient education, exercise, or a medication
/// administration. The reference to an "event" resource, such as Procedure or
/// Encounter or Observation, represents the activity that was performed. The
/// requested activity can be conveyed using the
/// CarePlan.activity.plannedActivityReference (a reference to a “request”
/// resource).

    @JsonKey(name: 'performedActivity') List<List<CodeableReference>>? performedActivity,
/// [progress] Notes about the adherence/status/progress of the activity.

    @JsonKey(name: 'progress') List<List<Annotation>>? progress,
/// [plannedActivityReference] The details of the proposed activity
/// represented in a specific resource.

    @JsonKey(name: 'plannedActivityReference') Reference? plannedActivityReference,
  }) = _$CarePlan_Activity;

  @override
  String get fhirType => 'CarePlan_Activity';

  factory CarePlan_Activity.fromJson(Map<String, dynamic> json) =>
      _$CarePlan_ActivityFromJson(json);

  factory CarePlan_Activity.fromYaml(dynamic yaml) => yaml is String
      ? CarePlan_Activity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CarePlan_Activity.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CarePlan_Activity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CarePlan_Activity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CarePlan_ActivityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
