import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/hooks/cds_hook_context.dart';

/// Context for the `order-dispatch` hook.
class OrderDispatchContext extends CdsHookContext {
  /// Creates an [OrderDispatchContext].
  OrderDispatchContext({
    required this.patientId,
    required this.dispatchedOrders,
    required this.performer,
    this.fulfillmentTasks,
  });

  /// Creates an [OrderDispatchContext] from a JSON map.
  factory OrderDispatchContext.fromJson(Map<String, dynamic> json) {
    return OrderDispatchContext(
      patientId: json['patientId'] as String,
      dispatchedOrders:
          (json['dispatchedOrders'] as List<dynamic>).cast<String>(),
      performer: json['performer'] as String,
      fulfillmentTasks: json['fulfillmentTasks'] != null
          ? Bundle.fromJson(
              json['fulfillmentTasks'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// The FHIR id of the patient.
  final String patientId;

  /// The resource IDs of the orders being dispatched.
  final List<String> dispatchedOrders;

  /// The FHIR resource URI of the intended performer.
  final String performer;

  /// An optional Bundle of fulfillment Task resources.
  final Bundle? fulfillmentTasks;

  @override
  String get hookName => 'order-dispatch';

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'patientId': patientId,
        'dispatchedOrders': dispatchedOrders,
        'performer': performer,
        if (fulfillmentTasks != null)
          'fulfillmentTasks': fulfillmentTasks!.toJson(),
      };
}
