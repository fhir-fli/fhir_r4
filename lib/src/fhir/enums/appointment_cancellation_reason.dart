import 'package:json_annotation/json_annotation.dart';

/// This example value set defines a set of reasons for the cancellation of an appointment.
enum AppointmentCancellationReason {
  /// Display: Patient
  @JsonValue('pat')
  pat,
  /// Display: Provider
  @JsonValue('prov')
  prov,
  /// Display: Equipment Maintenance/Repair
  @JsonValue('maint')
  maint,
  /// Display: Prep/Med Incomplete
  @JsonValue('meds-inc')
  meds_inc,
  /// Display: Other
  @JsonValue('other')
  other,
;

@override
  String toString() {
      switch(this) {
        case pat: return 'pat';
        case prov: return 'prov';
        case maint: return 'maint';
        case meds_inc: return 'meds-inc';
        case other: return 'other';
      }
      }
String toJson() => toString();
  AppointmentCancellationReason fromString(String str) {
    switch(str) {
      case 'pat': return AppointmentCancellationReason.pat;
      case 'prov': return AppointmentCancellationReason.prov;
      case 'maint': return AppointmentCancellationReason.maint;
      case 'meds-inc': return AppointmentCancellationReason.meds_inc;
      case 'other': return AppointmentCancellationReason.other;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 AppointmentCancellationReason fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

