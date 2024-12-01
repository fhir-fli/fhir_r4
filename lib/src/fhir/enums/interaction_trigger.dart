// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTrigger {
  // Private constructor for internal use (like enum)
  InteractionTrigger._(this.fhirCode, {this.element});

  /// Factory constructor to create [InteractionTrigger] from JSON.
  factory InteractionTrigger.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTrigger.elementOnly.withElement(element);
    }
    return InteractionTrigger._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InteractionTrigger values
  /// read
  static final InteractionTrigger read = InteractionTrigger._(
    'read',
  );

  /// vread
  static final InteractionTrigger vread = InteractionTrigger._(
    'vread',
  );

  /// update
  static final InteractionTrigger update = InteractionTrigger._(
    'update',
  );

  /// patch
  static final InteractionTrigger patch = InteractionTrigger._(
    'patch',
  );

  /// delete
  static final InteractionTrigger delete = InteractionTrigger._(
    'delete',
  );

  /// history
  static final InteractionTrigger history = InteractionTrigger._(
    'history',
  );

  /// history_instance
  static final InteractionTrigger history_instance = InteractionTrigger._(
    'history-instance',
  );

  /// history_type
  static final InteractionTrigger history_type = InteractionTrigger._(
    'history-type',
  );

  /// history_system
  static final InteractionTrigger history_system = InteractionTrigger._(
    'history-system',
  );

  /// create
  static final InteractionTrigger create = InteractionTrigger._(
    'create',
  );

  /// search
  static final InteractionTrigger search = InteractionTrigger._(
    'search',
  );

  /// search_type
  static final InteractionTrigger search_type = InteractionTrigger._(
    'search-type',
  );

  /// search_system
  static final InteractionTrigger search_system = InteractionTrigger._(
    'search-system',
  );

  /// capabilities
  static final InteractionTrigger capabilities = InteractionTrigger._(
    'capabilities',
  );

  /// transaction
  static final InteractionTrigger transaction = InteractionTrigger._(
    'transaction',
  );

  /// batch
  static final InteractionTrigger batch = InteractionTrigger._(
    'batch',
  );

  /// operation
  static final InteractionTrigger operation = InteractionTrigger._(
    'operation',
  );

  /// For instances where an Element is present but not value

  static final InteractionTrigger elementOnly = InteractionTrigger._('');

  /// List of all enum-like values
  static final List<InteractionTrigger> values = [
    read,
    vread,
    update,
    patch,
    delete,
    history,
    history_instance,
    history_type,
    history_system,
    create,
    search,
    search_type,
    search_system,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Returns the enum value with an element attached
  InteractionTrigger withElement(Element? newElement) {
    return InteractionTrigger._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
