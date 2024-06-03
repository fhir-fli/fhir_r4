import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Availability_AvailableTime] Availability data for an {item}, declaring
/// what days/times are available, and any exceptions. The exceptions could be
/// textual only, e.g. Public holidays, or could be time period specific and
/// indicate a specific years dates.

@freezed
class Availability_AvailableTime with _$Availability_AvailableTime {
  const Availability_AvailableTime._();

  const factory Availability_AvailableTime({
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
/// [daysOfWeek] Indicates which days of the week are available between the
/// start and end Times.

    @JsonKey(name: 'daysOfWeek') List<List<FhirCode>>? daysOfWeek,
/// [_daysOfWeek] Extensions for daysOfWeek

    @JsonKey(name: '_daysOfWeek') List<PrimitiveElement>? daysOfWeekElement,
/// [allDay] Is this always available? (hence times are irrelevant) i.e. 24
/// hour service.

    @JsonKey(name: 'allDay') FhirBoolean? allDay,
/// [_allDay] Extensions for allDay

    @JsonKey(name: '_allDay') PrimitiveElement? allDayElement,
/// [availableStartTime] The opening time of day. Note: If the AllDay flag
/// is set, then this time is ignored.

    @JsonKey(name: 'availableStartTime') FhirTime? availableStartTime,
/// [_availableStartTime] Extensions for availableStartTime

    @JsonKey(name: '_availableStartTime') PrimitiveElement? availableStartTimeElement,
/// [availableEndTime] The closing time of day. Note: If the AllDay flag is
/// set, then this time is ignored.

    @JsonKey(name: 'availableEndTime') FhirTime? availableEndTime,
/// [_availableEndTime] Extensions for availableEndTime

    @JsonKey(name: '_availableEndTime') PrimitiveElement? availableEndTimeElement,
  }) = _$Availability_AvailableTime;

  @override
  String get fhirType => 'Availability_AvailableTime';

  factory Availability_AvailableTime.fromJson(Map<String, dynamic> json) =>
      _$Availability_AvailableTimeFromJson(json);

  factory Availability_AvailableTime.fromYaml(dynamic yaml) => yaml is String
      ? Availability_AvailableTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Availability_AvailableTime.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Availability_AvailableTime cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Availability_AvailableTime.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Availability_AvailableTimeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
