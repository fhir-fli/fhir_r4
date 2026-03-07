import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `appointment-book` hook.
class AppointmentBookContext extends CdsHookContext {
  /// Creates an [AppointmentBookContext].
  AppointmentBookContext({
    required this.userId,
    required this.patientId,
    required this.appointments,
    this.encounterId,
  });

  /// Creates an [AppointmentBookContext] from a JSON map.
  factory AppointmentBookContext.fromJson(Map<String, dynamic> json) {
    return AppointmentBookContext(
      userId: json['userId'] as String,
      patientId: json['patientId'] as String,
      appointments: Bundle.fromJson(
        json['appointments'] as Map<String, dynamic>,
      ),
      encounterId: json['encounterId'] as String?,
    );
  }

  /// The FHIR resource URI of the current user.
  final String userId;

  /// The FHIR id of the patient.
  final String patientId;

  /// A Bundle of Appointment resources being booked.
  final Bundle appointments;

  /// The FHIR id of the current encounter, if applicable.
  final String? encounterId;

  @override
  String get hookName => 'appointment-book';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'patientId': patientId,
        'appointments': appointments.toJson(),
        if (encounterId != null) 'encounterId': encounterId,
      };
}
