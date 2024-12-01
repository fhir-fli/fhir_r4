// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Whether an operation parameter is an input or an output parameter.
class OperationParameterUse {
  // Private constructor for internal use (like enum)
  OperationParameterUse._(this.fhirCode, {this.element});

  /// Factory constructor to create [OperationParameterUse] from JSON.
  factory OperationParameterUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUse.elementOnly.withElement(element);
    }
    return OperationParameterUse._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// OperationParameterUse values
  /// in_
  static final OperationParameterUse in_ = OperationParameterUse._(
    'in',
  );

  /// out
  static final OperationParameterUse out = OperationParameterUse._(
    'out',
  );

  /// For instances where an Element is present but not value

  static final OperationParameterUse elementOnly = OperationParameterUse._('');

  /// List of all enum-like values
  static final List<OperationParameterUse> values = [
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  OperationParameterUse withElement(Element? newElement) {
    return OperationParameterUse._(fhirCode, element: newElement);
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
