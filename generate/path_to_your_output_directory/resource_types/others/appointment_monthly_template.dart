import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Appointment_MonthlyTemplate] A booking of a healthcare event among
/// patient(s), practitioner(s), related person(s) and/or device(s) for a
/// specific date/time. This may result in one or more Encounter(s).

@freezed
class Appointment_MonthlyTemplate with _$Appointment_MonthlyTemplate {
  const Appointment_MonthlyTemplate._();

  const factory Appointment_MonthlyTemplate({
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
/// [dayOfMonth] Indicates that appointments in the series of recurring
/// appointments should occur on a specific day of the month.

    @JsonKey(name: 'dayOfMonth') FhirPositiveInt? dayOfMonth,
/// [_dayOfMonth] Extensions for dayOfMonth

    @JsonKey(name: '_dayOfMonth') PrimitiveElement? dayOfMonthElement,
/// [nthWeekOfMonth] Indicates which week within a month the appointments
/// in the series of recurring appointments should occur on.

    @JsonKey(name: 'nthWeekOfMonth') Coding? nthWeekOfMonth,
/// [dayOfWeek] Indicates which day of the week the recurring appointments
/// should occur each nth week.

    @JsonKey(name: 'dayOfWeek') Coding? dayOfWeek,
/// [monthInterval] Indicates that recurring appointments should occur
/// every nth month.

    @JsonKey(name: 'monthInterval') FhirPositiveInt? monthInterval,
/// [_monthInterval] Extensions for monthInterval

    @JsonKey(name: '_monthInterval') PrimitiveElement? monthIntervalElement,
  }) = _$Appointment_MonthlyTemplate;

  @override
  String get fhirType => 'Appointment_MonthlyTemplate';

  factory Appointment_MonthlyTemplate.fromJson(Map<String, dynamic> json) =>
      _$Appointment_MonthlyTemplateFromJson(json);

  factory Appointment_MonthlyTemplate.fromYaml(dynamic yaml) => yaml is String
      ? Appointment_MonthlyTemplate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Appointment_MonthlyTemplate.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Appointment_MonthlyTemplate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Appointment_MonthlyTemplate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Appointment_MonthlyTemplateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
