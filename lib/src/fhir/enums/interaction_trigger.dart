// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTrigger {
  // Private constructor for internal use (like enum)
  InteractionTrigger._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InteractionTrigger values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger read = InteractionTrigger._(
    'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger vread = InteractionTrigger._(
    'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger update = InteractionTrigger._(
    'update',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger patch = InteractionTrigger._(
    'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger delete = InteractionTrigger._(
    'delete',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history = InteractionTrigger._(
    'history',
  );

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history_instance = InteractionTrigger._(
    'history-instance',
  );

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history_type = InteractionTrigger._(
    'history-type',
  );

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history_system = InteractionTrigger._(
    'history-system',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger create = InteractionTrigger._(
    'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger search = InteractionTrigger._(
    'search',
  );

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger search_type = InteractionTrigger._(
    'search-type',
  );

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger search_system = InteractionTrigger._(
    'search-system',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger capabilities = InteractionTrigger._(
    'capabilities',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger transaction = InteractionTrigger._(
    'transaction',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger batch = InteractionTrigger._(
    'batch',
  );

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Factory constructor to create [InteractionTrigger] from JSON.
  static InteractionTrigger fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTrigger.elementOnly.withElement(element);
    }
    return InteractionTrigger._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
