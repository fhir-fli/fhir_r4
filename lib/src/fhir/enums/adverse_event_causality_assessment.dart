// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for the assessment of whether the entity caused the event.
@Entity()
class AdverseEventCausalityAssessment extends FhirCode {
  /// Factory constructor to create [AdverseEventCausalityAssessment] from JSON.
  factory AdverseEventCausalityAssessment.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityAssessment.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdverseEventCausalityAssessment._(value, element);
    }
    throw ArgumentError(
      'AdverseEventCausalityAssessment.fromJson: JSON value is not a valid value',
    );
  }

  /// Certain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityAssessment.Certain([this.element])
      : dbValue = 'Certain',
        super('Certain', element);

  /// Probably_Likely
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityAssessment.Probably_Likely([this.element])
      : dbValue = 'Probably-Likely',
        super('Probably-Likely', element);

  /// Possible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityAssessment.Possible([this.element])
      : dbValue = 'Possible',
        super('Possible', element);

  /// Unlikely
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityAssessment.Unlikely([this.element])
      : dbValue = 'Unlikely',
        super('Unlikely', element);

  /// Conditional_Classified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityAssessment.Conditional_Classified([this.element])
      : dbValue = 'Conditional-Classified',
        super('Conditional-Classified', element);

  /// Unassessable_Unclassifiable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityAssessment.Unassessable_Unclassifiable([this.element])
      : dbValue = 'Unassessable-Unclassifiable',
        super('Unassessable-Unclassifiable', element);

  /// For instances where an Element is present but not value

  AdverseEventCausalityAssessment.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdverseEventCausalityAssessment._(super.input, [super.element])
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
    'Certain',
    'Probably-Likely',
    'Possible',
    'Unlikely',
    'Conditional-Classified',
    'Unassessable-Unclassifiable',
  ];

  /// Returns the enum value with an element attached
  AdverseEventCausalityAssessment withElement(Element? newElement) {
    return AdverseEventCausalityAssessment._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventCausalityAssessment.$value';
}
