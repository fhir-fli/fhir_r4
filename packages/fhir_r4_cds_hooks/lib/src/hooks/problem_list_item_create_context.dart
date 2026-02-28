import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `problem-list-item-create` hook.
class ProblemListItemCreateContext extends CdsHookContext {
  /// Creates a [ProblemListItemCreateContext].
  ProblemListItemCreateContext({
    required this.userId,
    required this.patientId,
    required this.conditions,
    this.encounterId,
  });

  /// Creates a [ProblemListItemCreateContext] from a JSON map.
  factory ProblemListItemCreateContext.fromJson(Map<String, dynamic> json) {
    return ProblemListItemCreateContext(
      userId: json['userId'] as String,
      patientId: json['patientId'] as String,
      conditions: Bundle.fromJson(
        json['conditions'] as Map<String, dynamic>,
      ),
      encounterId: json['encounterId'] as String?,
    );
  }

  /// The FHIR resource URI of the current user.
  final String userId;

  /// The FHIR id of the patient.
  final String patientId;

  /// A Bundle of Condition resources being added to the problem list.
  final Bundle conditions;

  /// The FHIR id of the current encounter, if applicable.
  final String? encounterId;

  @override
  String get hookName => 'problem-list-item-create';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'patientId': patientId,
        'conditions': conditions.toJson(),
        if (encounterId != null) 'encounterId': encounterId,
      };
}
