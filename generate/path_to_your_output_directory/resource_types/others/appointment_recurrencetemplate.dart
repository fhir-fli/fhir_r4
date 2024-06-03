import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Appointment_RecurrenceTemplate] A booking of a healthcare event among
/// patient(s), practitioner(s), related person(s) and/or device(s) for a
/// specific date/time. This may result in one or more Encounter(s).

@freezed
class Appointment_RecurrenceTemplate with _$Appointment_RecurrenceTemplate {
  const Appointment_RecurrenceTemplate._();

  const factory Appointment_RecurrenceTemplate({
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
/// [timezone] The timezone of the recurring appointment occurrences.

    @JsonKey(name: 'timezone') CodeableConcept? timezone,
/// [recurrenceType] How often the appointment series should recur.

    @JsonKey(name: 'recurrenceType') CodeableConcept? recurrenceType,
/// [lastOccurrenceDate] Recurring appointments will not occur after this
/// date.

    @JsonKey(name: 'lastOccurrenceDate') FhirDate? lastOccurrenceDate,
/// [_lastOccurrenceDate] Extensions for lastOccurrenceDate

    @JsonKey(name: '_lastOccurrenceDate') PrimitiveElement? lastOccurrenceDateElement,
/// [occurrenceCount] How many appointments are planned in the recurrence.

    @JsonKey(name: 'occurrenceCount') FhirPositiveInt? occurrenceCount,
/// [_occurrenceCount] Extensions for occurrenceCount

    @JsonKey(name: '_occurrenceCount') PrimitiveElement? occurrenceCountElement,
/// [occurrenceDate] The list of specific dates that will have appointments
/// generated.

    @JsonKey(name: 'occurrenceDate') List<List<FhirDate>>? occurrenceDate,
/// [_occurrenceDate] Extensions for occurrenceDate

    @JsonKey(name: '_occurrenceDate') List<PrimitiveElement>? occurrenceDateElement,
/// [weeklyTemplate] Information about weekly recurring appointments.

    @JsonKey(name: 'weeklyTemplate') Appointment_WeeklyTemplate? weeklyTemplate,
/// [monthlyTemplate] Information about monthly recurring appointments.

    @JsonKey(name: 'monthlyTemplate') Appointment_MonthlyTemplate? monthlyTemplate,
/// [yearlyTemplate] Information about yearly recurring appointments.

    @JsonKey(name: 'yearlyTemplate') Appointment_YearlyTemplate? yearlyTemplate,
/// [excludingDate] Any dates, such as holidays, that should be excluded
/// from the recurrence.

    @JsonKey(name: 'excludingDate') List<List<FhirDate>>? excludingDate,
/// [_excludingDate] Extensions for excludingDate

    @JsonKey(name: '_excludingDate') List<PrimitiveElement>? excludingDateElement,
/// [excludingRecurrenceId] Any dates, such as holidays, that should be
/// excluded from the recurrence.

    @JsonKey(name: 'excludingRecurrenceId') List<List<FhirPositiveInt>>? excludingRecurrenceId,
/// [_excludingRecurrenceId] Extensions for excludingRecurrenceId

    @JsonKey(name: '_excludingRecurrenceId') List<PrimitiveElement>? excludingRecurrenceIdElement,
  }) = _$Appointment_RecurrenceTemplate;

  @override
  String get fhirType => 'Appointment_RecurrenceTemplate';

  factory Appointment_RecurrenceTemplate.fromJson(Map<String, dynamic> json) =>
      _$Appointment_RecurrenceTemplateFromJson(json);

  factory Appointment_RecurrenceTemplate.fromYaml(dynamic yaml) => yaml is String
      ? Appointment_RecurrenceTemplate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Appointment_RecurrenceTemplate.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Appointment_RecurrenceTemplate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Appointment_RecurrenceTemplate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Appointment_RecurrenceTemplateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
