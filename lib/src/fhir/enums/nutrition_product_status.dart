// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a product.
class NutritionProductStatus {
  // Private constructor for internal use (like enum)
  NutritionProductStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// NutritionProductStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutritionProductStatus active = NutritionProductStatus._(
    'active',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutritionProductStatus inactive = NutritionProductStatus._(
    'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutritionProductStatus entered_in_error =
      NutritionProductStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final NutritionProductStatus elementOnly =
      NutritionProductStatus._('');

  /// List of all enum-like values
  static final List<NutritionProductStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  NutritionProductStatus withElement(Element? newElement) {
    return NutritionProductStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [NutritionProductStatus] from JSON.
  static NutritionProductStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatus.elementOnly.withElement(element);
    }
    return NutritionProductStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
