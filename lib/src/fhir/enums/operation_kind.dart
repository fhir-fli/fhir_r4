// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Whether an operation is a normal operation or a query.
@Entity()
class OperationKind extends FhirCode {
  /// Factory constructor to create [OperationKind] from JSON.
  factory OperationKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKind.elementOnly(element);
    }
    if (values.contains(value)) {
      return OperationKind._(value, element);
    }
    throw ArgumentError(
      'OperationKind.fromJson: JSON value is not a valid value',
    );
  }

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OperationKind.operation([this.element])
      : dbValue = 'operation',
        super('operation', element);

  /// query
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OperationKind.query([this.element])
      : dbValue = 'query',
        super('query', element);

  /// For instances where an Element is present but not value

  OperationKind.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  OperationKind._(super.input, [super.element])
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
    'operation',
    'query',
  ];

  /// Returns the enum value with an element attached
  OperationKind withElement(Element? newElement) {
    return OperationKind._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OperationKind.$value';
}
