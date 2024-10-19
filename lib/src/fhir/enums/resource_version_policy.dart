// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How the system supports versioning for a resource.
@Entity()
class ResourceVersionPolicy extends FhirCode {
  /// Factory constructor to create [ResourceVersionPolicy] from JSON.
  factory ResourceVersionPolicy.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResourceVersionPolicy._(value, element);
    }
    throw ArgumentError(
      'ResourceVersionPolicy.fromJson: JSON value is not a valid value',
    );
  }

  /// no_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResourceVersionPolicy.no_version([this.element])
      : dbValue = 'no-version',
        super('no-version', element);

  /// versioned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResourceVersionPolicy.versioned([this.element])
      : dbValue = 'versioned',
        super('versioned', element);

  /// versioned_update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResourceVersionPolicy.versioned_update([this.element])
      : dbValue = 'versioned-update',
        super('versioned-update', element);

  /// For instances where an Element is present but not value

  ResourceVersionPolicy.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResourceVersionPolicy._(super.input, [super.element])
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
    'no-version',
    'versioned',
    'versioned-update',
  ];

  /// Returns the enum value with an element attached
  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResourceVersionPolicy.$value';
}
