// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Overall type of this authorization.
@Entity()
class RegulatedAuthorizationType extends FhirCode {
  /// Factory constructor to create [RegulatedAuthorizationType] from JSON.
  factory RegulatedAuthorizationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return RegulatedAuthorizationType._(value, element);
    }
    throw ArgumentError(
      'RegulatedAuthorizationType.fromJson: JSON value is not a valid value',
    );
  }

  /// MarketingAuth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationType.MarketingAuth([this.element])
      : dbValue = 'MarketingAuth',
        super('MarketingAuth', element);

  /// Orphan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationType.Orphan([this.element])
      : dbValue = 'Orphan',
        super('Orphan', element);

  /// Pediatric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationType.Pediatric([this.element])
      : dbValue = 'Pediatric',
        super('Pediatric', element);

  /// For instances where an Element is present but not value

  RegulatedAuthorizationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RegulatedAuthorizationType._(super.input, [super.element])
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
    'MarketingAuth',
    'Orphan',
    'Pediatric',
  ];

  /// Returns the enum value with an element attached
  RegulatedAuthorizationType withElement(Element? newElement) {
    return RegulatedAuthorizationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RegulatedAuthorizationType.$value';
}
