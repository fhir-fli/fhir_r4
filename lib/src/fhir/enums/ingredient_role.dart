// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A classification of the ingredient identifying its purpose within the product.
@collection
class IngredientRole {
  /// Constructor for internal use (like enum)
  IngredientRole({this.fhirCode, this.element})
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

  /// IngredientRole values
  /// value100000072072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000072072 = IngredientRole(
    fhirCode: '100000072072',
  );

  /// value100000072073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000072073 = IngredientRole(
    fhirCode: '100000072073',
  );

  /// value100000072082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000072082 = IngredientRole(
    fhirCode: '100000072082',
  );

  /// value100000136065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000136065 = IngredientRole(
    fhirCode: '100000136065',
  );

  /// value100000136066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000136066 = IngredientRole(
    fhirCode: '100000136066',
  );

  /// value100000136178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000136178 = IngredientRole(
    fhirCode: '100000136178',
  );

  /// value100000136179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000136179 = IngredientRole(
    fhirCode: '100000136179',
  );

  /// value100000136561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value100000136561 = IngredientRole(
    fhirCode: '100000136561',
  );

  /// value200000003427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IngredientRole value200000003427 = IngredientRole(
    fhirCode: '200000003427',
  );

  /// For instances where an Element is present but not value

  static final IngredientRole elementOnly = IngredientRole();

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
    return IngredientRole(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IngredientRole] from JSON.
  static IngredientRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientRole.elementOnly.withElement(element);
    }
    return IngredientRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IngredientRole.$fhirCode';
}
