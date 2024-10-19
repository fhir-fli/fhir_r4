// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Whether an operation parameter is an input or an output parameter.
@Entity()
class OperationParameterUse extends FhirCode {
  /// Factory constructor to create [OperationParameterUse] from JSON.
  factory OperationParameterUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return OperationParameterUse._(value, element);
    }
    throw ArgumentError(
      'OperationParameterUse.fromJson: JSON value is not a valid value',
    );
  }

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OperationParameterUse.in_([this.element])
      : dbValue = 'in',
        super('in', element);

  /// out
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  OperationParameterUse.out([this.element])
      : dbValue = 'out',
        super('out', element);

  /// For instances where an Element is present but not value

  OperationParameterUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  OperationParameterUse._(super.input, [super.element])
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
    'in',
    'out',
  ];

  /// Returns the enum value with an element attached
  OperationParameterUse withElement(Element? newElement) {
    return OperationParameterUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'OperationParameterUse.$value';
}
