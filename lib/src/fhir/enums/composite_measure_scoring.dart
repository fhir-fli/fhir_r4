// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The composite scoring method of the measure.
@Entity()
class CompositeMeasureScoring extends FhirCode {
  /// Factory constructor to create [CompositeMeasureScoring] from JSON.
  factory CompositeMeasureScoring.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositeMeasureScoring.elementOnly(element);
    }
    if (values.contains(value)) {
      return CompositeMeasureScoring._(value, element);
    }
    throw ArgumentError(
      'CompositeMeasureScoring.fromJson: JSON value is not a valid value',
    );
  }

  /// opportunity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositeMeasureScoring.opportunity([this.element])
      : dbValue = 'opportunity',
        super('opportunity', element);

  /// all_or_nothing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositeMeasureScoring.all_or_nothing([this.element])
      : dbValue = 'all-or-nothing',
        super('all-or-nothing', element);

  /// linear
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositeMeasureScoring.linear([this.element])
      : dbValue = 'linear',
        super('linear', element);

  /// weighted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositeMeasureScoring.weighted([this.element])
      : dbValue = 'weighted',
        super('weighted', element);

  /// For instances where an Element is present but not value

  CompositeMeasureScoring.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CompositeMeasureScoring._(super.input, [super.element])
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
    'opportunity',
    'all-or-nothing',
    'linear',
    'weighted',
  ];

  /// Returns the enum value with an element attached
  CompositeMeasureScoring withElement(Element? newElement) {
    return CompositeMeasureScoring._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CompositeMeasureScoring.$value';
}
