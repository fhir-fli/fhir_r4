import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `order-select` hook.
class OrderSelectContext extends CdsHookContext {
  /// Creates an [OrderSelectContext].
  OrderSelectContext({
    required this.userId,
    required this.patientId,
    required this.selections,
    required this.draftOrders,
    this.encounterId,
  });

  /// Creates an [OrderSelectContext] from a JSON map.
  factory OrderSelectContext.fromJson(Map<String, dynamic> json) {
    return OrderSelectContext(
      userId: json['userId'] as String,
      patientId: json['patientId'] as String,
      selections: (json['selections'] as List<dynamic>).cast<String>(),
      draftOrders: Bundle.fromJson(
        json['draftOrders'] as Map<String, dynamic>,
      ),
      encounterId: json['encounterId'] as String?,
    );
  }

  /// The FHIR resource URI of the current user.
  final String userId;

  /// The FHIR id of the patient.
  final String patientId;

  /// The resource IDs of the newly selected orders.
  final List<String> selections;

  /// A Bundle of draft orders being composed.
  final Bundle draftOrders;

  /// The FHIR id of the current encounter, if applicable.
  final String? encounterId;

  @override
  String get hookName => 'order-select';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'patientId': patientId,
        'selections': selections,
        'draftOrders': draftOrders.toJson(),
        if (encounterId != null) 'encounterId': encounterId,
      };
}
