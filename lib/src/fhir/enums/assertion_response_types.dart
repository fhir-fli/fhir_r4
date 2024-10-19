// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of response code to use for assertion.
@Entity()
class AssertionResponseTypes extends FhirCode {
  /// Factory constructor to create [AssertionResponseTypes] from JSON.
  factory AssertionResponseTypes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionResponseTypes.elementOnly(element);
    }
    if (values.contains(value)) {
      return AssertionResponseTypes._(value, element);
    }
    throw ArgumentError(
      'AssertionResponseTypes.fromJson: JSON value is not a valid value',
    );
  }

  /// okay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.okay([this.element])
      : dbValue = 'okay',
        super('okay', element);

  /// created
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.created([this.element])
      : dbValue = 'created',
        super('created', element);

  /// noContent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.noContent([this.element])
      : dbValue = 'noContent',
        super('noContent', element);

  /// notModified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.notModified([this.element])
      : dbValue = 'notModified',
        super('notModified', element);

  /// bad
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.bad([this.element])
      : dbValue = 'bad',
        super('bad', element);

  /// forbidden
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.forbidden([this.element])
      : dbValue = 'forbidden',
        super('forbidden', element);

  /// notFound
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.notFound([this.element])
      : dbValue = 'notFound',
        super('notFound', element);

  /// methodNotAllowed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.methodNotAllowed([this.element])
      : dbValue = 'methodNotAllowed',
        super('methodNotAllowed', element);

  /// conflict
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.conflict([this.element])
      : dbValue = 'conflict',
        super('conflict', element);

  /// gone
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.gone([this.element])
      : dbValue = 'gone',
        super('gone', element);

  /// preconditionFailed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.preconditionFailed([this.element])
      : dbValue = 'preconditionFailed',
        super('preconditionFailed', element);

  /// unprocessable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionResponseTypes.unprocessable([this.element])
      : dbValue = 'unprocessable',
        super('unprocessable', element);

  /// For instances where an Element is present but not value

  AssertionResponseTypes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AssertionResponseTypes._(super.input, [super.element])
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
    'okay',
    'created',
    'noContent',
    'notModified',
    'bad',
    'forbidden',
    'notFound',
    'methodNotAllowed',
    'conflict',
    'gone',
    'preconditionFailed',
    'unprocessable',
  ];

  /// Returns the enum value with an element attached
  AssertionResponseTypes withElement(Element? newElement) {
    return AssertionResponseTypes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AssertionResponseTypes.$value';
}
