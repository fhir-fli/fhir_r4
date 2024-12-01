// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A classification of the ingredient identifying its purpose within the product.
class IngredientRole {
  // Private constructor for internal use (like enum)
  IngredientRole._(this.fhirCode, {this.element});

  /// Factory constructor to create [IngredientRole] from JSON.
  factory IngredientRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientRole.elementOnly.withElement(element);
    }
    return IngredientRole._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// IngredientRole values
  /// value100000072072
  static final IngredientRole value100000072072 = IngredientRole._(
    '100000072072',
  );

  /// value100000072073
  static final IngredientRole value100000072073 = IngredientRole._(
    '100000072073',
  );

  /// value100000072082
  static final IngredientRole value100000072082 = IngredientRole._(
    '100000072082',
  );

  /// value100000136065
  static final IngredientRole value100000136065 = IngredientRole._(
    '100000136065',
  );

  /// value100000136066
  static final IngredientRole value100000136066 = IngredientRole._(
    '100000136066',
  );

  /// value100000136178
  static final IngredientRole value100000136178 = IngredientRole._(
    '100000136178',
  );

  /// value100000136179
  static final IngredientRole value100000136179 = IngredientRole._(
    '100000136179',
  );

  /// value100000136561
  static final IngredientRole value100000136561 = IngredientRole._(
    '100000136561',
  );

  /// value200000003427
  static final IngredientRole value200000003427 = IngredientRole._(
    '200000003427',
  );

  /// For instances where an Element is present but not value

  static final IngredientRole elementOnly = IngredientRole._('');

  /// List of all enum-like values
  static final List<IngredientRole> values = [
    value100000072072,
    value100000072073,
    value100000072082,
    value100000136065,
    value100000136066,
    value100000136178,
    value100000136179,
    value100000136561,
    value200000003427,
  ];

  /// Returns the enum value with an element attached
  IngredientRole withElement(Element? newElement) {
    return IngredientRole._(fhirCode, element: newElement);
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
