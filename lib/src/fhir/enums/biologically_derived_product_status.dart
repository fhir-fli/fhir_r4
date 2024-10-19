// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Biologically Derived Product Status.
@Entity()
class BiologicallyDerivedProductStatus extends FhirCode {
  /// Factory constructor to create [BiologicallyDerivedProductStatus] from JSON.
  factory BiologicallyDerivedProductStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return BiologicallyDerivedProductStatus._(value, element);
    }
    throw ArgumentError(
      'BiologicallyDerivedProductStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// available
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductStatus.available([this.element])
      : dbValue = 'available',
        super('available', element);

  /// unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductStatus.unavailable([this.element])
      : dbValue = 'unavailable',
        super('unavailable', element);

  /// For instances where an Element is present but not value

  BiologicallyDerivedProductStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BiologicallyDerivedProductStatus._(super.input, [super.element])
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
    'available',
    'unavailable',
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStatus withElement(Element? newElement) {
    return BiologicallyDerivedProductStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BiologicallyDerivedProductStatus.$value';
}
