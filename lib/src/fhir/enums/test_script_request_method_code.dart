// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The allowable request method or HTTP operation codes.
@Entity()
class TestScriptRequestMethodCode extends FhirCode {
  /// Factory constructor to create [TestScriptRequestMethodCode] from JSON.
  factory TestScriptRequestMethodCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return TestScriptRequestMethodCode._(value, element);
    }
    throw ArgumentError(
      'TestScriptRequestMethodCode.fromJson: JSON value is not a valid value',
    );
  }

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptRequestMethodCode.delete([this.element])
      : dbValue = 'delete',
        super('delete', element);

  /// get_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptRequestMethodCode.get_([this.element])
      : dbValue = 'get',
        super('get', element);

  /// options
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptRequestMethodCode.options([this.element])
      : dbValue = 'options',
        super('options', element);

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptRequestMethodCode.patch([this.element])
      : dbValue = 'patch',
        super('patch', element);

  /// post
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptRequestMethodCode.post([this.element])
      : dbValue = 'post',
        super('post', element);

  /// put
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptRequestMethodCode.put([this.element])
      : dbValue = 'put',
        super('put', element);

  /// head
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TestScriptRequestMethodCode.head([this.element])
      : dbValue = 'head',
        super('head', element);

  /// For instances where an Element is present but not value

  TestScriptRequestMethodCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TestScriptRequestMethodCode._(super.input, [super.element])
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
    'delete',
    'get',
    'options',
    'patch',
    'post',
    'put',
    'head',
  ];

  /// Returns the enum value with an element attached
  TestScriptRequestMethodCode withElement(Element? newElement) {
    return TestScriptRequestMethodCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptRequestMethodCode.$value';
}
