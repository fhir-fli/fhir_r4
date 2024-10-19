// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategory {
  // Private constructor for internal use (like enum)
  BiologicallyDerivedProductCategory._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BiologicallyDerivedProductCategory values
  /// organ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory organ =
      BiologicallyDerivedProductCategory._(
    'organ',
  );

  /// tissue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory tissue =
      BiologicallyDerivedProductCategory._(
    'tissue',
  );

  /// fluid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory fluid =
      BiologicallyDerivedProductCategory._(
    'fluid',
  );

  /// cells
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory cells =
      BiologicallyDerivedProductCategory._(
    'cells',
  );

  /// biologicalAgent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory biologicalAgent =
      BiologicallyDerivedProductCategory._(
    'biologicalAgent',
  );

  /// For instances where an Element is present but not value

  static final BiologicallyDerivedProductCategory elementOnly =
      BiologicallyDerivedProductCategory._('');

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductCategory> values = [
    organ,
    tissue,
    fluid,
    cells,
    biologicalAgent,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductCategory withElement(Element? newElement) {
    return BiologicallyDerivedProductCategory._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BiologicallyDerivedProductCategory] from JSON.
  static BiologicallyDerivedProductCategory fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory.elementOnly
          .withElement(element);
    }
    return BiologicallyDerivedProductCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BiologicallyDerivedProductCategory.$fhirCode';
}
