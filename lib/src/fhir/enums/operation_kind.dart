// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Whether an operation is a normal operation or a query.
@collection
class OperationKind {
  /// Constructor for internal use (like enum)
  OperationKind({this.fhirCode, this.element})
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

  /// OperationKind values
  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OperationKind operation = OperationKind(
    fhirCode: 'operation',
  );

  /// query
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final OperationKind query = OperationKind(
    fhirCode: 'query',
  );

  /// For instances where an Element is present but not value

  static final OperationKind elementOnly = OperationKind();

  /// List of all enum-like values
  static final List<OperationKind> values = [
    operation,
    query,
  ];

  /// Returns the enum value with an element attached
  OperationKind withElement(Element? newElement) {
    return OperationKind(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [OperationKind] from JSON.
  static OperationKind fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKind.elementOnly.withElement(element);
    }
    return OperationKind.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OperationKind.$fhirCode';
}
