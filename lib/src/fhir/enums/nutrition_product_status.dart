// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes identifying the lifecycle stage of a product.
@collection
class NutritionProductStatus {
  /// Constructor for internal use (like enum)
  NutritionProductStatus({this.fhirCode, this.element})
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

  /// NutritionProductStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutritionProductStatus active = NutritionProductStatus(
    fhirCode: 'active',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutritionProductStatus inactive = NutritionProductStatus(
    fhirCode: 'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final NutritionProductStatus entered_in_error = NutritionProductStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final NutritionProductStatus elementOnly = NutritionProductStatus();

  /// List of all enum-like values
  static final List<NutritionProductStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  NutritionProductStatus withElement(Element? newElement) {
    return NutritionProductStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NutritionProductStatus.$fhirCode';
}
