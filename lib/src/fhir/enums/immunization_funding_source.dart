// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the vaccine administered. This value set is provided as a suggestive example.
@Entity()
class ImmunizationFundingSource extends FhirCode {
  /// Factory constructor to create [ImmunizationFundingSource] from JSON.
  factory ImmunizationFundingSource.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFundingSource.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationFundingSource._(value, element);
    }
    throw ArgumentError(
      'ImmunizationFundingSource.fromJson: JSON value is not a valid value',
    );
  }

  /// private
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationFundingSource.private([this.element])
      : dbValue = 'private',
        super('private', element);

  /// public
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationFundingSource.public([this.element])
      : dbValue = 'public',
        super('public', element);

  /// For instances where an Element is present but not value

  ImmunizationFundingSource.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationFundingSource._(super.input, [super.element])
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
    'private',
    'public',
  ];

  /// Returns the enum value with an element attached
  ImmunizationFundingSource withElement(Element? newElement) {
    return ImmunizationFundingSource._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationFundingSource.$value';
}
