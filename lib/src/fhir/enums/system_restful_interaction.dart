// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the system level.
class SystemRestfulInteraction {
  // Private constructor for internal use (like enum)
  SystemRestfulInteraction._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SystemRestfulInteraction values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction read = SystemRestfulInteraction._(
    'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction vread = SystemRestfulInteraction._(
    'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction update = SystemRestfulInteraction._(
    'update',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction patch = SystemRestfulInteraction._(
    'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction delete = SystemRestfulInteraction._(
    'delete',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history = SystemRestfulInteraction._(
    'history',
  );

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history_instance =
      SystemRestfulInteraction._(
    'history-instance',
  );

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history_type =
      SystemRestfulInteraction._(
    'history-type',
  );

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history_system =
      SystemRestfulInteraction._(
    'history-system',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction create = SystemRestfulInteraction._(
    'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction search = SystemRestfulInteraction._(
    'search',
  );

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction search_type =
      SystemRestfulInteraction._(
    'search-type',
  );

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction search_system =
      SystemRestfulInteraction._(
    'search-system',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction capabilities =
      SystemRestfulInteraction._(
    'capabilities',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction transaction =
      SystemRestfulInteraction._(
    'transaction',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction batch = SystemRestfulInteraction._(
    'batch',
  );

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction operation = SystemRestfulInteraction._(
    'operation',
  );

  /// For instances where an Element is present but not value

  static final SystemRestfulInteraction elementOnly =
      SystemRestfulInteraction._('');

  /// List of all enum-like values
  static final List<SystemRestfulInteraction> values = [
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
  SystemRestfulInteraction withElement(Element? newElement) {
    return SystemRestfulInteraction._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SystemRestfulInteraction] from JSON.
  static SystemRestfulInteraction fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SystemRestfulInteraction.elementOnly.withElement(element);
    }
    return SystemRestfulInteraction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
