// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of Benefit Term codes.
@Entity()
class BenefitTermCodes extends FhirCode {
  /// Factory constructor to create [BenefitTermCodes] from JSON.
  factory BenefitTermCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BenefitTermCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return BenefitTermCodes._(value, element);
    }
    throw ArgumentError(
      'BenefitTermCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// annual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTermCodes.annual([this.element])
      : dbValue = 'annual',
        super('annual', element);

  /// day
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTermCodes.day([this.element])
      : dbValue = 'day',
        super('day', element);

  /// lifetime
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BenefitTermCodes.lifetime([this.element])
      : dbValue = 'lifetime',
        super('lifetime', element);

  /// For instances where an Element is present but not value

  BenefitTermCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BenefitTermCodes._(super.input, [super.element])
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
    'annual',
    'day',
    'lifetime',
  ];

  /// Returns the enum value with an element attached
  BenefitTermCodes withElement(Element? newElement) {
    return BenefitTermCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BenefitTermCodes.$value';
}
