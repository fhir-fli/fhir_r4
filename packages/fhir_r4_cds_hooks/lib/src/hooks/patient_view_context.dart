import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `patient-view` hook.
class PatientViewContext extends CdsHookContext {
  /// Creates a [PatientViewContext].
  PatientViewContext({
    required this.userId,
    required this.patientId,
    this.encounterId,
  });

  /// Creates a [PatientViewContext] from a JSON map.
  factory PatientViewContext.fromJson(Map<String, dynamic> json) {
    return PatientViewContext(
      userId: json['userId'] as String,
      patientId: json['patientId'] as String,
      encounterId: json['encounterId'] as String?,
    );
  }

  /// The FHIR resource URI of the current user (e.g., `Practitioner/123`).
  final String userId;

  /// The FHIR id of the patient whose chart is being viewed.
  final String patientId;

  /// The FHIR id of the current encounter, if applicable.
  final String? encounterId;

  @override
  String get hookName => 'patient-view';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'patientId': patientId,
        if (encounterId != null) 'encounterId': encounterId,
      };
}
