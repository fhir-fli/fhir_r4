// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response to a message.
@Entity()
class MessageheaderResponseRequest extends FhirCode {
  /// Factory constructor to create [MessageheaderResponseRequest] from JSON.
  factory MessageheaderResponseRequest.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequest.elementOnly(element);
    }
    if (values.contains(value)) {
      return MessageheaderResponseRequest._(value, element);
    }
    throw ArgumentError(
      'MessageheaderResponseRequest.fromJson: JSON value is not a valid value',
    );
  }

  /// always
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageheaderResponseRequest.always([this.element])
      : dbValue = 'always',
        super('always', element);

  /// on_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageheaderResponseRequest.on_error([this.element])
      : dbValue = 'on-error',
        super('on-error', element);

  /// never
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageheaderResponseRequest.never([this.element])
      : dbValue = 'never',
        super('never', element);

  /// on_success
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MessageheaderResponseRequest.on_success([this.element])
      : dbValue = 'on-success',
        super('on-success', element);

  /// For instances where an Element is present but not value

  MessageheaderResponseRequest.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MessageheaderResponseRequest._(super.input, [super.element])
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
    'always',
    'on-error',
    'never',
    'on-success',
  ];

  /// Returns the enum value with an element attached
  MessageheaderResponseRequest withElement(Element? newElement) {
    return MessageheaderResponseRequest._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MessageheaderResponseRequest.$value';
}
