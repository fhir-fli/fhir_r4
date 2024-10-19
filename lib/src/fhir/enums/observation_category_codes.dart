// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Observation Category codes.
@Entity()
class ObservationCategoryCodes extends FhirCode {
  /// Factory constructor to create [ObservationCategoryCodes] from JSON.
  factory ObservationCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ObservationCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'ObservationCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// social_history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.social_history([this.element])
      : dbValue = 'social-history',
        super('social-history', element);

  /// vital_signs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.vital_signs([this.element])
      : dbValue = 'vital-signs',
        super('vital-signs', element);

  /// imaging
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.imaging([this.element])
      : dbValue = 'imaging',
        super('imaging', element);

  /// laboratory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.laboratory([this.element])
      : dbValue = 'laboratory',
        super('laboratory', element);

  /// procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.procedure([this.element])
      : dbValue = 'procedure',
        super('procedure', element);

  /// survey
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.survey([this.element])
      : dbValue = 'survey',
        super('survey', element);

  /// exam
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.exam([this.element])
      : dbValue = 'exam',
        super('exam', element);

  /// therapy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.therapy([this.element])
      : dbValue = 'therapy',
        super('therapy', element);

  /// activity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ObservationCategoryCodes.activity([this.element])
      : dbValue = 'activity',
        super('activity', element);

  /// For instances where an Element is present but not value

  ObservationCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ObservationCategoryCodes._(super.input, [super.element])
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
    'social-history',
    'vital-signs',
    'imaging',
    'laboratory',
    'procedure',
    'survey',
    'exam',
    'therapy',
    'activity',
  ];

  /// Returns the enum value with an element attached
  ObservationCategoryCodes withElement(Element? newElement) {
    return ObservationCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationCategoryCodes.$value';
}
