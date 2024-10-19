// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the type or instance level.
class TypeRestfulInteraction {
  // Private constructor for internal use (like enum)
  TypeRestfulInteraction._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TypeRestfulInteraction values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction read = TypeRestfulInteraction._(
    'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction vread = TypeRestfulInteraction._(
    'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction update = TypeRestfulInteraction._(
    'update',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction patch = TypeRestfulInteraction._(
    'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction delete = TypeRestfulInteraction._(
    'delete',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history = TypeRestfulInteraction._(
    'history',
  );

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history_instance =
      TypeRestfulInteraction._(
    'history-instance',
  );

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history_type = TypeRestfulInteraction._(
    'history-type',
  );

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history_system = TypeRestfulInteraction._(
    'history-system',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction create = TypeRestfulInteraction._(
    'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction search = TypeRestfulInteraction._(
    'search',
  );

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction search_type = TypeRestfulInteraction._(
    'search-type',
  );

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction search_system = TypeRestfulInteraction._(
    'search-system',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction capabilities = TypeRestfulInteraction._(
    'capabilities',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction transaction = TypeRestfulInteraction._(
    'transaction',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction batch = TypeRestfulInteraction._(
    'batch',
  );

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction operation = TypeRestfulInteraction._(
    'operation',
  );

  /// For instances where an Element is present but not value

  static final TypeRestfulInteraction elementOnly =
      TypeRestfulInteraction._('');

  /// List of all enum-like values
  static final List<TypeRestfulInteraction> values = [
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
  TypeRestfulInteraction withElement(Element? newElement) {
    return TypeRestfulInteraction._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TypeRestfulInteraction] from JSON.
  static TypeRestfulInteraction fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteraction.elementOnly.withElement(element);
    }
    return TypeRestfulInteraction.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TypeRestfulInteraction.$fhirCode';
}
