// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Operations supported by REST at the type or instance level.
@collection
class TypeRestfulInteraction {
  /// Constructor for internal use (like enum)
  TypeRestfulInteraction({this.fhirCode, this.element})
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

  /// TypeRestfulInteraction values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction read = TypeRestfulInteraction(
    fhirCode: 'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction vread = TypeRestfulInteraction(
    fhirCode: 'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction update = TypeRestfulInteraction(
    fhirCode: 'update',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction patch = TypeRestfulInteraction(
    fhirCode: 'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction delete = TypeRestfulInteraction(
    fhirCode: 'delete',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history = TypeRestfulInteraction(
    fhirCode: 'history',
  );

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history_instance = TypeRestfulInteraction(
    fhirCode: 'history-instance',
  );

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history_type = TypeRestfulInteraction(
    fhirCode: 'history-type',
  );

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction history_system = TypeRestfulInteraction(
    fhirCode: 'history-system',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction create = TypeRestfulInteraction(
    fhirCode: 'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction search = TypeRestfulInteraction(
    fhirCode: 'search',
  );

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction search_type = TypeRestfulInteraction(
    fhirCode: 'search-type',
  );

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction search_system = TypeRestfulInteraction(
    fhirCode: 'search-system',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction capabilities = TypeRestfulInteraction(
    fhirCode: 'capabilities',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction transaction = TypeRestfulInteraction(
    fhirCode: 'transaction',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction batch = TypeRestfulInteraction(
    fhirCode: 'batch',
  );

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TypeRestfulInteraction operation = TypeRestfulInteraction(
    fhirCode: 'operation',
  );

  /// For instances where an Element is present but not value

  static final TypeRestfulInteraction elementOnly = TypeRestfulInteraction();

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
    return TypeRestfulInteraction(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
