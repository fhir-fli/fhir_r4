import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `allergyintolerance-create` hook.
class AllergyintoleranceCreateContext extends CdsHookContext {
  /// Creates an [AllergyintoleranceCreateContext].
  AllergyintoleranceCreateContext({
    required this.userId,
    required this.patientId,
    required this.allergyIntolerance,
    this.encounterId,
  });

  /// Creates an [AllergyintoleranceCreateContext] from a JSON map.
  factory AllergyintoleranceCreateContext.fromJson(
    Map<String, dynamic> json,
  ) {
    return AllergyintoleranceCreateContext(
      userId: json['userId'] as String,
      patientId: json['patientId'] as String,
      allergyIntolerance: AllergyIntolerance.fromJson(
        json['allergyIntolerance'] as Map<String, dynamic>,
      ),
      encounterId: json['encounterId'] as String?,
    );
  }

  /// The FHIR resource URI of the current user.
  final String userId;

  /// The FHIR id of the patient.
  final String patientId;

  /// The AllergyIntolerance resource being created.
  final AllergyIntolerance allergyIntolerance;

  /// The FHIR id of the current encounter, if applicable.
  final String? encounterId;

  @override
  String get hookName => 'allergyintolerance-create';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'patientId': patientId,
        'allergyIntolerance': allergyIntolerance.toJson(),
        if (encounterId != null) 'encounterId': encounterId,
      };
}
