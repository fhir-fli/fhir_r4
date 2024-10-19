// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A code to indicate if the substance is actively used.
@Entity()
class FHIRSubstanceStatus extends FhirCode {
  /// Factory constructor to create [FHIRSubstanceStatus] from JSON.
  factory FHIRSubstanceStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSubstanceStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return FHIRSubstanceStatus._(value, element);
    }
    throw ArgumentError(
      'FHIRSubstanceStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSubstanceStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSubstanceStatus.inactive([this.element])
      : dbValue = 'inactive',
        super('inactive', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSubstanceStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  FHIRSubstanceStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FHIRSubstanceStatus._(super.input, [super.element])
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
    'active',
    'inactive',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  FHIRSubstanceStatus withElement(Element? newElement) {
    return FHIRSubstanceStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRSubstanceStatus.$value';
}
