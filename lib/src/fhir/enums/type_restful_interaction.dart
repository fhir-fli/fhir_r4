// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the type or instance level.
class TypeRestfulInteraction {
  // Private constructor for internal use (like enum)
  TypeRestfulInteraction._(this.fhirCode, {this.element});

  /// Factory constructor to create [TypeRestfulInteraction] from JSON.
  factory TypeRestfulInteraction.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TypeRestfulInteraction.elementOnly.withElement(element);
    }
    return TypeRestfulInteraction._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TypeRestfulInteraction values
  /// read
  static final TypeRestfulInteraction read = TypeRestfulInteraction._(
    'read',
  );

  /// vread
  static final TypeRestfulInteraction vread = TypeRestfulInteraction._(
    'vread',
  );

  /// update
  static final TypeRestfulInteraction update = TypeRestfulInteraction._(
    'update',
  );

  /// patch
  static final TypeRestfulInteraction patch = TypeRestfulInteraction._(
    'patch',
  );

  /// delete
  static final TypeRestfulInteraction delete = TypeRestfulInteraction._(
    'delete',
  );

  /// history
  static final TypeRestfulInteraction history = TypeRestfulInteraction._(
    'history',
  );

  /// history_instance
  static final TypeRestfulInteraction history_instance =
      TypeRestfulInteraction._(
    'history-instance',
  );

  /// history_type
  static final TypeRestfulInteraction history_type = TypeRestfulInteraction._(
    'history-type',
  );

  /// history_system
  static final TypeRestfulInteraction history_system = TypeRestfulInteraction._(
    'history-system',
  );

  /// create
  static final TypeRestfulInteraction create = TypeRestfulInteraction._(
    'create',
  );

  /// search
  static final TypeRestfulInteraction search = TypeRestfulInteraction._(
    'search',
  );

  /// search_type
  static final TypeRestfulInteraction search_type = TypeRestfulInteraction._(
    'search-type',
  );

  /// search_system
  static final TypeRestfulInteraction search_system = TypeRestfulInteraction._(
    'search-system',
  );

  /// capabilities
  static final TypeRestfulInteraction capabilities = TypeRestfulInteraction._(
    'capabilities',
  );

  /// transaction
  static final TypeRestfulInteraction transaction = TypeRestfulInteraction._(
    'transaction',
  );

  /// batch
  static final TypeRestfulInteraction batch = TypeRestfulInteraction._(
    'batch',
  );

  /// operation
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

  /// String representation
  @override
  String toString() => fhirCode;
}
