// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
@Entity()
class InteractionTrigger extends FhirCode {
  /// Factory constructor to create [InteractionTrigger] from JSON.
  factory InteractionTrigger.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTrigger.elementOnly(element);
    }
    if (values.contains(value)) {
      return InteractionTrigger._(value, element);
    }
    throw ArgumentError(
      'InteractionTrigger.fromJson: JSON value is not a valid value',
    );
  }

  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.read([this.element])
      : dbValue = 'read',
        super('read', element);

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.vread([this.element])
      : dbValue = 'vread',
        super('vread', element);

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.update([this.element])
      : dbValue = 'update',
        super('update', element);

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.patch([this.element])
      : dbValue = 'patch',
        super('patch', element);

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.delete([this.element])
      : dbValue = 'delete',
        super('delete', element);

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.history([this.element])
      : dbValue = 'history',
        super('history', element);

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.history_instance([this.element])
      : dbValue = 'history-instance',
        super('history-instance', element);

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.history_type([this.element])
      : dbValue = 'history-type',
        super('history-type', element);

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.history_system([this.element])
      : dbValue = 'history-system',
        super('history-system', element);

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.create([this.element])
      : dbValue = 'create',
        super('create', element);

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.search([this.element])
      : dbValue = 'search',
        super('search', element);

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.search_type([this.element])
      : dbValue = 'search-type',
        super('search-type', element);

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.search_system([this.element])
      : dbValue = 'search-system',
        super('search-system', element);

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.capabilities([this.element])
      : dbValue = 'capabilities',
        super('capabilities', element);

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.transaction([this.element])
      : dbValue = 'transaction',
        super('transaction', element);

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.batch([this.element])
      : dbValue = 'batch',
        super('batch', element);

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionTrigger.operation([this.element])
      : dbValue = 'operation',
        super('operation', element);

  /// For instances where an Element is present but not value

  InteractionTrigger.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  InteractionTrigger._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'read',
    'vread',
    'update',
    'patch',
    'delete',
    'history',
    'history-instance',
    'history-type',
    'history-system',
    'create',
    'search',
    'search-type',
    'search-system',
    'capabilities',
    'transaction',
    'batch',
    'operation',
  ];

  /// Returns the enum value with an element attached
  InteractionTrigger withElement(Element? newElement) {
    return InteractionTrigger._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InteractionTrigger.$value';
}
