// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A code that indicates how the page is generated.
@Entity()
class GuidePageGeneration extends FhirCode {
  /// Factory constructor to create [GuidePageGeneration] from JSON.
  factory GuidePageGeneration.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidePageGeneration.elementOnly(element);
    }
    if (values.contains(value)) {
      return GuidePageGeneration._(value, element);
    }
    throw ArgumentError(
      'GuidePageGeneration.fromJson: JSON value is not a valid value',
    );
  }

  /// html
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidePageGeneration.html([this.element])
      : dbValue = 'html',
        super('html', element);

  /// markdown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidePageGeneration.markdown([this.element])
      : dbValue = 'markdown',
        super('markdown', element);

  /// xml
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidePageGeneration.xml([this.element])
      : dbValue = 'xml',
        super('xml', element);

  /// generated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GuidePageGeneration.generated([this.element])
      : dbValue = 'generated',
        super('generated', element);

  /// For instances where an Element is present but not value

  GuidePageGeneration.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GuidePageGeneration._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'html',
    'markdown',
    'xml',
    'generated',
  ];

  /// Returns the enum value with an element attached
  GuidePageGeneration withElement(Element? newElement) {
    return GuidePageGeneration._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GuidePageGeneration.$value';
}
