// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example codes for grouping goals to use for filtering or presentation.
@Entity()
class GoalCategory extends FhirCode {
  /// Factory constructor to create [GoalCategory] from JSON.
  factory GoalCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return GoalCategory._(value, element);
    }
    throw ArgumentError(
      'GoalCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// dietary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalCategory.dietary([this.element])
      : dbValue = 'dietary',
        super('dietary', element);

  /// safety
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalCategory.safety([this.element])
      : dbValue = 'safety',
        super('safety', element);

  /// behavioral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalCategory.behavioral([this.element])
      : dbValue = 'behavioral',
        super('behavioral', element);

  /// nursing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalCategory.nursing([this.element])
      : dbValue = 'nursing',
        super('nursing', element);

  /// physiotherapy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalCategory.physiotherapy([this.element])
      : dbValue = 'physiotherapy',
        super('physiotherapy', element);

  /// For instances where an Element is present but not value

  GoalCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GoalCategory._(super.input, [super.element])
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
    'dietary',
    'safety',
    'behavioral',
    'nursing',
    'physiotherapy',
  ];

  /// Returns the enum value with an element attached
  GoalCategory withElement(Element? newElement) {
    return GoalCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalCategory.$value';
}
