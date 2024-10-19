// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// HTTP verbs (in the HTTP command line). See [HTTP rfc](https://tools.ietf.org/html/rfc7231) for details.
@Entity()
class HTTPVerb extends FhirCode {
  /// Factory constructor to create [HTTPVerb] from JSON.
  factory HTTPVerb.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerb.elementOnly(element);
    }
    if (values.contains(value)) {
      return HTTPVerb._(value, element);
    }
    throw ArgumentError(
      'HTTPVerb.fromJson: JSON value is not a valid value',
    );
  }

  /// GET
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  HTTPVerb.GET([this.element])
      : dbValue = 'GET',
        super('GET', element);

  /// HEAD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  HTTPVerb.HEAD([this.element])
      : dbValue = 'HEAD',
        super('HEAD', element);

  /// POST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  HTTPVerb.POST([this.element])
      : dbValue = 'POST',
        super('POST', element);

  /// PUT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  HTTPVerb.PUT([this.element])
      : dbValue = 'PUT',
        super('PUT', element);

  /// DELETE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  HTTPVerb.DELETE([this.element])
      : dbValue = 'DELETE',
        super('DELETE', element);

  /// PATCH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  HTTPVerb.PATCH([this.element])
      : dbValue = 'PATCH',
        super('PATCH', element);

  /// For instances where an Element is present but not value

  HTTPVerb.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  HTTPVerb._(super.input, [super.element])
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
    'GET',
    'HEAD',
    'POST',
    'PUT',
    'DELETE',
    'PATCH',
  ];

  /// Returns the enum value with an element attached
  HTTPVerb withElement(Element? newElement) {
    return HTTPVerb._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'HTTPVerb.$value';
}
