// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategory {
  // Private constructor for internal use (like enum)
  BiologicallyDerivedProductCategory._(this.fhirCode, {this.element});

  /// Factory constructor to create [BiologicallyDerivedProductCategory] from JSON.
  factory BiologicallyDerivedProductCategory.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory.elementOnly
          .withElement(element);
    }
    return BiologicallyDerivedProductCategory._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BiologicallyDerivedProductCategory values
  /// organ
  static final BiologicallyDerivedProductCategory organ =
      BiologicallyDerivedProductCategory._(
    'organ',
  );

  /// tissue
  static final BiologicallyDerivedProductCategory tissue =
      BiologicallyDerivedProductCategory._(
    'tissue',
  );

  /// fluid
  static final BiologicallyDerivedProductCategory fluid =
      BiologicallyDerivedProductCategory._(
    'fluid',
  );

  /// cells
  static final BiologicallyDerivedProductCategory cells =
      BiologicallyDerivedProductCategory._(
    'cells',
  );

  /// biologicalAgent
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

  /// String representation
  @override
  String toString() => fhirCode;
}
