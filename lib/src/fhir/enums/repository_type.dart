// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Type for access of external URI.
@Entity()
class RepositoryType extends FhirCode {
  /// Factory constructor to create [RepositoryType] from JSON.
  factory RepositoryType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RepositoryType.elementOnly(element);
    }
    if (values.contains(value)) {
      return RepositoryType._(value, element);
    }
    throw ArgumentError(
      'RepositoryType.fromJson: JSON value is not a valid value',
    );
  }

  /// directlink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RepositoryType.directlink([this.element])
      : dbValue = 'directlink',
        super('directlink', element);

  /// openapi
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RepositoryType.openapi([this.element])
      : dbValue = 'openapi',
        super('openapi', element);

  /// login
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RepositoryType.login([this.element])
      : dbValue = 'login',
        super('login', element);

  /// oauth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RepositoryType.oauth([this.element])
      : dbValue = 'oauth',
        super('oauth', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RepositoryType.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  RepositoryType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RepositoryType._(super.input, [super.element])
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
    'directlink',
    'openapi',
    'login',
    'oauth',
    'other',
  ];

  /// Returns the enum value with an element attached
  RepositoryType withElement(Element? newElement) {
    return RepositoryType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RepositoryType.$value';
}
