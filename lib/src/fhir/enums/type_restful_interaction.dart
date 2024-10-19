// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Operations supported by REST at the type or instance level.
@Entity()
class TypeRestfulInteraction extends FhirCode {
  /// Factory constructor to create [TypeRestfulInteraction] from JSON.
  factory TypeRestfulInteraction.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteraction.elementOnly(element);
    }
    if (values.contains(value)) {
      return TypeRestfulInteraction._(value, element);
    }
    throw ArgumentError(
      'TypeRestfulInteraction.fromJson: JSON value is not a valid value',
    );
  }

  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.read([this.element])
      : dbValue = 'read',
        super('read', element);

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.vread([this.element])
      : dbValue = 'vread',
        super('vread', element);

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.update([this.element])
      : dbValue = 'update',
        super('update', element);

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.patch([this.element])
      : dbValue = 'patch',
        super('patch', element);

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.delete([this.element])
      : dbValue = 'delete',
        super('delete', element);

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.history([this.element])
      : dbValue = 'history',
        super('history', element);

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.history_instance([this.element])
      : dbValue = 'history-instance',
        super('history-instance', element);

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.history_type([this.element])
      : dbValue = 'history-type',
        super('history-type', element);

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.history_system([this.element])
      : dbValue = 'history-system',
        super('history-system', element);

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.create([this.element])
      : dbValue = 'create',
        super('create', element);

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.search([this.element])
      : dbValue = 'search',
        super('search', element);

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.search_type([this.element])
      : dbValue = 'search-type',
        super('search-type', element);

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.search_system([this.element])
      : dbValue = 'search-system',
        super('search-system', element);

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.capabilities([this.element])
      : dbValue = 'capabilities',
        super('capabilities', element);

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.transaction([this.element])
      : dbValue = 'transaction',
        super('transaction', element);

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.batch([this.element])
      : dbValue = 'batch',
        super('batch', element);

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TypeRestfulInteraction.operation([this.element])
      : dbValue = 'operation',
        super('operation', element);

  /// For instances where an Element is present but not value

  TypeRestfulInteraction.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TypeRestfulInteraction._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
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
  TypeRestfulInteraction withElement(Element? newElement) {
    return TypeRestfulInteraction._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TypeRestfulInteraction.$value';
}
