// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Identifies types of events that might trigger the start of a goal.
@Entity()
class GoalStartEvent extends FhirCode {
  /// Factory constructor to create [GoalStartEvent] from JSON.
  factory GoalStartEvent.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GoalStartEvent.elementOnly(element);
    }
    if (values.contains(value)) {
      return GoalStartEvent._(value, element);
    }
    throw ArgumentError(
      'GoalStartEvent.fromJson: JSON value is not a valid value',
    );
  }

  /// value32485007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalStartEvent.value32485007([this.element])
      : dbValue = '32485007',
        super('32485007', element);

  /// value308283009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalStartEvent.value308283009([this.element])
      : dbValue = '308283009',
        super('308283009', element);

  /// value442137000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalStartEvent.value442137000([this.element])
      : dbValue = '442137000',
        super('442137000', element);

  /// value386216000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  GoalStartEvent.value386216000([this.element])
      : dbValue = '386216000',
        super('386216000', element);

  /// For instances where an Element is present but not value

  GoalStartEvent.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  GoalStartEvent._(super.input, [super.element])
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
    '32485007',
    '308283009',
    '442137000',
    '386216000',
  ];

  /// Returns the enum value with an element attached
  GoalStartEvent withElement(Element? newElement) {
    return GoalStartEvent._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'GoalStartEvent.$value';
}
