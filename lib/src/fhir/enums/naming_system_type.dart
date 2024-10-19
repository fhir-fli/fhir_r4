// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Identifies the purpose of the naming system.
@Entity()
class NamingSystemType extends FhirCode {
  /// Factory constructor to create [NamingSystemType] from JSON.
  factory NamingSystemType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType.elementOnly(element);
    }
    if (values.contains(value)) {
      return NamingSystemType._(value, element);
    }
    throw ArgumentError(
      'NamingSystemType.fromJson: JSON value is not a valid value',
    );
  }

  /// codesystem
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NamingSystemType.codesystem([this.element])
      : dbValue = 'codesystem',
        super('codesystem', element);

  /// identifier
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NamingSystemType.identifier([this.element])
      : dbValue = 'identifier',
        super('identifier', element);

  /// root
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NamingSystemType.root([this.element])
      : dbValue = 'root',
        super('root', element);

  /// For instances where an Element is present but not value

  NamingSystemType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  NamingSystemType._(super.input, [super.element])
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
    'codesystem',
    'identifier',
    'root',
  ];

  /// Returns the enum value with an element attached
  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NamingSystemType.$value';
}
