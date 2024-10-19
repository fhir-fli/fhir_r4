// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Extra measures defined for a Medicinal Product, such as a requirement to conduct post-authorisation studies.
@Entity()
class SpecialMeasures extends FhirCode {
  /// Factory constructor to create [SpecialMeasures] from JSON.
  factory SpecialMeasures.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialMeasures.elementOnly(element);
    }
    if (values.contains(value)) {
      return SpecialMeasures._(value, element);
    }
    throw ArgumentError(
      'SpecialMeasures.fromJson: JSON value is not a valid value',
    );
  }

  /// Post_authorisationStudies
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialMeasures.Post_authorisationStudies([this.element])
      : dbValue = 'Post-authorisationStudies',
        super('Post-authorisationStudies', element);

  /// For instances where an Element is present but not value

  SpecialMeasures.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SpecialMeasures._(super.input, [super.element])
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
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'Post-authorisationStudies',
  ];

  /// Returns the enum value with an element attached
  SpecialMeasures withElement(Element? newElement) {
    return SpecialMeasures._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecialMeasures.$value';
}
