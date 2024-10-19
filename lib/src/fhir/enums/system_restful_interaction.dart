// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Operations supported by REST at the system level.
@collection
class SystemRestfulInteraction {
  /// Constructor for internal use (like enum)
  SystemRestfulInteraction({this.fhirCode, this.element})
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

  /// SystemRestfulInteraction values
  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction read = SystemRestfulInteraction(
    fhirCode: 'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction vread = SystemRestfulInteraction(
    fhirCode: 'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction update = SystemRestfulInteraction(
    fhirCode: 'update',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction patch = SystemRestfulInteraction(
    fhirCode: 'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction delete = SystemRestfulInteraction(
    fhirCode: 'delete',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history = SystemRestfulInteraction(
    fhirCode: 'history',
  );

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history_instance =
      SystemRestfulInteraction(
    fhirCode: 'history-instance',
  );

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history_type = SystemRestfulInteraction(
    fhirCode: 'history-type',
  );

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction history_system =
      SystemRestfulInteraction(
    fhirCode: 'history-system',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction create = SystemRestfulInteraction(
    fhirCode: 'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction search = SystemRestfulInteraction(
    fhirCode: 'search',
  );

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction search_type = SystemRestfulInteraction(
    fhirCode: 'search-type',
  );

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction search_system =
      SystemRestfulInteraction(
    fhirCode: 'search-system',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction capabilities = SystemRestfulInteraction(
    fhirCode: 'capabilities',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction transaction = SystemRestfulInteraction(
    fhirCode: 'transaction',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction batch = SystemRestfulInteraction(
    fhirCode: 'batch',
  );

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SystemRestfulInteraction operation = SystemRestfulInteraction(
    fhirCode: 'operation',
  );

  /// For instances where an Element is present but not value

  static final SystemRestfulInteraction elementOnly =
      SystemRestfulInteraction();

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
    return SystemRestfulInteraction(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SystemRestfulInteraction.$fhirCode';
}
