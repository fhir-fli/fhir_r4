// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// TODO.
@Entity()
class AdverseEventCausalityMethod extends FhirCode {
  /// Factory constructor to create [AdverseEventCausalityMethod] from JSON.
  factory AdverseEventCausalityMethod.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityMethod.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdverseEventCausalityMethod._(value, element);
    }
    throw ArgumentError(
      'AdverseEventCausalityMethod.fromJson: JSON value is not a valid value',
    );
  }

  /// ProbabilityScale
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityMethod.ProbabilityScale([this.element])
      : dbValue = 'ProbabilityScale',
        super('ProbabilityScale', element);

  /// Bayesian
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityMethod.Bayesian([this.element])
      : dbValue = 'Bayesian',
        super('Bayesian', element);

  /// Checklist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventCausalityMethod.Checklist([this.element])
      : dbValue = 'Checklist',
        super('Checklist', element);

  /// For instances where an Element is present but not value

  AdverseEventCausalityMethod.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdverseEventCausalityMethod._(super.input, [super.element])
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
    'ProbabilityScale',
    'Bayesian',
    'Checklist',
  ];

  /// Returns the enum value with an element attached
  AdverseEventCausalityMethod withElement(Element? newElement) {
    return AdverseEventCausalityMethod._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventCausalityMethod.$value';
}
