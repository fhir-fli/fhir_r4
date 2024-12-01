// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the system level.
class SystemRestfulInteraction {
  // Private constructor for internal use (like enum)
  SystemRestfulInteraction._(this.fhirCode, {this.element});

  /// Factory constructor to create [SystemRestfulInteraction] from JSON.
  factory SystemRestfulInteraction.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SystemRestfulInteraction.elementOnly.withElement(element);
    }
    return SystemRestfulInteraction._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SystemRestfulInteraction values
  /// read
  static final SystemRestfulInteraction read = SystemRestfulInteraction._(
    'read',
  );

  /// vread
  static final SystemRestfulInteraction vread = SystemRestfulInteraction._(
    'vread',
  );

  /// update
  static final SystemRestfulInteraction update = SystemRestfulInteraction._(
    'update',
  );

  /// patch
  static final SystemRestfulInteraction patch = SystemRestfulInteraction._(
    'patch',
  );

  /// delete
  static final SystemRestfulInteraction delete = SystemRestfulInteraction._(
    'delete',
  );

  /// history
  static final SystemRestfulInteraction history = SystemRestfulInteraction._(
    'history',
  );

  /// history_instance
  static final SystemRestfulInteraction history_instance =
      SystemRestfulInteraction._(
    'history-instance',
  );

  /// history_type
  static final SystemRestfulInteraction history_type =
      SystemRestfulInteraction._(
    'history-type',
  );

  /// history_system
  static final SystemRestfulInteraction history_system =
      SystemRestfulInteraction._(
    'history-system',
  );

  /// create
  static final SystemRestfulInteraction create = SystemRestfulInteraction._(
    'create',
  );

  /// search
  static final SystemRestfulInteraction search = SystemRestfulInteraction._(
    'search',
  );

  /// search_type
  static final SystemRestfulInteraction search_type =
      SystemRestfulInteraction._(
    'search-type',
  );

  /// search_system
  static final SystemRestfulInteraction search_system =
      SystemRestfulInteraction._(
    'search-system',
  );

  /// capabilities
  static final SystemRestfulInteraction capabilities =
      SystemRestfulInteraction._(
    'capabilities',
  );

  /// transaction
  static final SystemRestfulInteraction transaction =
      SystemRestfulInteraction._(
    'transaction',
  );

  /// batch
  static final SystemRestfulInteraction batch = SystemRestfulInteraction._(
    'batch',
  );

  /// operation
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

  /// String representation
  @override
  String toString() => fhirCode;
}
