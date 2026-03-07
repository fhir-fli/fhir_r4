import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `encounter-start` hook.
class EncounterStartContext extends CdsHookContext {
  /// Creates an [EncounterStartContext].
  EncounterStartContext({
    required this.userId,
    required this.patientId,
    required this.encounterId,
  });

  /// Creates an [EncounterStartContext] from a JSON map.
  factory EncounterStartContext.fromJson(Map<String, dynamic> json) {
    return EncounterStartContext(
      userId: json['userId'] as String,
      patientId: json['patientId'] as String,
      encounterId: json['encounterId'] as String,
    );
  }

  /// The FHIR resource URI of the current user.
  final String userId;

  /// The FHIR id of the patient.
  final String patientId;

  /// The FHIR id of the encounter being started.
  final String encounterId;

  @override
  String get hookName => 'encounter-start';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'patientId': patientId,
        'encounterId': encounterId,
      };
}
