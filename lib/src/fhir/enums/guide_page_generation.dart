// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A code that indicates how the page is generated.
@collection
class GuidePageGeneration {
  /// Constructor for internal use (like enum)
  GuidePageGeneration({this.fhirCode, this.element})
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

  /// GuidePageGeneration values
  /// html
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidePageGeneration html = GuidePageGeneration(
    fhirCode: 'html',
  );

  /// markdown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidePageGeneration markdown = GuidePageGeneration(
    fhirCode: 'markdown',
  );

  /// xml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidePageGeneration xml = GuidePageGeneration(
    fhirCode: 'xml',
  );

  /// generated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final GuidePageGeneration generated = GuidePageGeneration(
    fhirCode: 'generated',
  );

  /// For instances where an Element is present but not value

  static final GuidePageGeneration elementOnly = GuidePageGeneration();

  /// List of all enum-like values
  static final List<GuidePageGeneration> values = [
    html,
    markdown,
    xml,
    generated,
  ];

  /// Returns the enum value with an element attached
  GuidePageGeneration withElement(Element? newElement) {
    return GuidePageGeneration(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [GuidePageGeneration] from JSON.
  static GuidePageGeneration fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidePageGeneration.elementOnly.withElement(element);
    }
    return GuidePageGeneration.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GuidePageGeneration.$fhirCode';
}
