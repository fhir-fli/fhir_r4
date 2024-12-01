// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The relationship between two substance types.
class SubstanceAmountType {
  // Private constructor for internal use (like enum)
  SubstanceAmountType._(this.fhirCode, {this.element});

  /// Factory constructor to create [SubstanceAmountType] from JSON.
  factory SubstanceAmountType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceAmountType.elementOnly.withElement(element);
    }
    return SubstanceAmountType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubstanceAmountType values
  /// Average
  static final SubstanceAmountType Average = SubstanceAmountType._(
    'Average',
  );

  /// Approximately
  static final SubstanceAmountType Approximately = SubstanceAmountType._(
    'Approximately',
  );

  /// LessThan
  static final SubstanceAmountType LessThan = SubstanceAmountType._(
    'LessThan',
  );

  /// MoreThan
  static final SubstanceAmountType MoreThan = SubstanceAmountType._(
    'MoreThan',
  );

  /// For instances where an Element is present but not value

  static final SubstanceAmountType elementOnly = SubstanceAmountType._('');

  /// List of all enum-like values
  static final List<SubstanceAmountType> values = [
    Average,
    Approximately,
    LessThan,
    MoreThan,
  ];

  /// Returns the enum value with an element attached
  SubstanceAmountType withElement(Element? newElement) {
    return SubstanceAmountType._(fhirCode, element: newElement);
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
