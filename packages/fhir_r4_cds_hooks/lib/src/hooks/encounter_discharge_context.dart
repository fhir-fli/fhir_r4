import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `encounter-discharge` hook.
class EncounterDischargeContext extends CdsHookContext {
  /// Creates an [EncounterDischargeContext].
  EncounterDischargeContext({
    required this.userId,
    required this.patientId,
    required this.encounterId,
  });

  /// Creates an [EncounterDischargeContext] from a JSON map.
  factory EncounterDischargeContext.fromJson(Map<String, dynamic> json) {
    return EncounterDischargeContext(
      userId: json['userId'] as String,
      patientId: json['patientId'] as String,
      encounterId: json['encounterId'] as String,
    );
  }

  /// The FHIR resource URI of the current user.
  final String userId;

  /// The FHIR id of the patient.
  final String patientId;

  /// The FHIR id of the encounter being discharged.
  final String encounterId;

  @override
  String get hookName => 'encounter-discharge';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'patientId': patientId,
        'encounterId': encounterId,
      };
}
