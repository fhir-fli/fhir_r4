import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `medication-refill` hook.
class MedicationRefillContext extends CdsHookContext {
  /// Creates a [MedicationRefillContext].
  MedicationRefillContext({
    required this.patientId,
    required this.medications,
    this.userId,
    this.encounterId,
  });

  /// Creates a [MedicationRefillContext] from a JSON map.
  factory MedicationRefillContext.fromJson(Map<String, dynamic> json) {
    return MedicationRefillContext(
      patientId: json['patientId'] as String,
      medications: Bundle.fromJson(
        json['medications'] as Map<String, dynamic>,
      ),
      userId: json['userId'] as String?,
      encounterId: json['encounterId'] as String?,
    );
  }

  /// The FHIR id of the patient.
  final String patientId;

  /// A Bundle of MedicationRequest resources being refilled.
  final Bundle medications;

  /// The FHIR resource URI of the current user, if applicable.
  final String? userId;

  /// The FHIR id of the current encounter, if applicable.
  final String? encounterId;

  @override
  String get hookName => 'medication-refill';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'patientId': patientId,
        'medications': medications.toJson(),
        if (userId != null) 'userId': userId,
        if (encounterId != null) 'encounterId': encounterId,
      };
}
