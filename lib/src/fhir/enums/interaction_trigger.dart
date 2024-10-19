// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
@collection
class InteractionTrigger {
  /// Constructor for internal use (like enum)
  InteractionTrigger({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InteractionTrigger values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger read = InteractionTrigger(
    fhirCode: 'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger vread = InteractionTrigger(
    fhirCode: 'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger update = InteractionTrigger(
    fhirCode: 'update',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger patch = InteractionTrigger(
    fhirCode: 'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger delete = InteractionTrigger(
    fhirCode: 'delete',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history = InteractionTrigger(
    fhirCode: 'history',
  );

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history_instance = InteractionTrigger(
    fhirCode: 'history-instance',
  );

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history_type = InteractionTrigger(
    fhirCode: 'history-type',
  );

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger history_system = InteractionTrigger(
    fhirCode: 'history-system',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger create = InteractionTrigger(
    fhirCode: 'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger search = InteractionTrigger(
    fhirCode: 'search',
  );

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger search_type = InteractionTrigger(
    fhirCode: 'search-type',
  );

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger search_system = InteractionTrigger(
    fhirCode: 'search-system',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger capabilities = InteractionTrigger(
    fhirCode: 'capabilities',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger transaction = InteractionTrigger(
    fhirCode: 'transaction',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger batch = InteractionTrigger(
    fhirCode: 'batch',
  );

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionTrigger operation = InteractionTrigger(
    fhirCode: 'operation',
  );

  /// For instances where an Element is present but not value

  static final InteractionTrigger elementOnly = InteractionTrigger();

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
    return InteractionTrigger(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return InteractionTrigger.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InteractionTrigger.$fhirCode';
}
