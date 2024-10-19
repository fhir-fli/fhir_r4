// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Biologically Derived Product Category.
@collection
class BiologicallyDerivedProductCategory {
  /// Constructor for internal use (like enum)
  BiologicallyDerivedProductCategory({this.fhirCode, this.element})
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

  /// BiologicallyDerivedProductCategory values
  /// organ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory organ =
      BiologicallyDerivedProductCategory(
    fhirCode: 'organ',
  );

  /// tissue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory tissue =
      BiologicallyDerivedProductCategory(
    fhirCode: 'tissue',
  );

  /// fluid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory fluid =
      BiologicallyDerivedProductCategory(
    fhirCode: 'fluid',
  );

  /// cells
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory cells =
      BiologicallyDerivedProductCategory(
    fhirCode: 'cells',
  );

  /// biologicalAgent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductCategory biologicalAgent =
      BiologicallyDerivedProductCategory(
    fhirCode: 'biologicalAgent',
  );

  /// For instances where an Element is present but not value

  static final BiologicallyDerivedProductCategory elementOnly =
      BiologicallyDerivedProductCategory();

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
    return BiologicallyDerivedProductCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
