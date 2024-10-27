// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The allowable request method or HTTP operation codes.
class TestScriptRequestMethodCode {
  // Private constructor for internal use (like enum)
  TestScriptRequestMethodCode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestScriptRequestMethodCode values
  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode delete =
      TestScriptRequestMethodCode._(
    'delete',
  );

  /// get_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode get_ = TestScriptRequestMethodCode._(
    'get',
  );

  /// options
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode options =
      TestScriptRequestMethodCode._(
    'options',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode patch =
      TestScriptRequestMethodCode._(
    'patch',
  );

  /// post
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode post = TestScriptRequestMethodCode._(
    'post',
  );

  /// put
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode put = TestScriptRequestMethodCode._(
    'put',
  );

  /// head
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode head = TestScriptRequestMethodCode._(
    'head',
  );

  /// For instances where an Element is present but not value

  static final TestScriptRequestMethodCode elementOnly =
      TestScriptRequestMethodCode._('');

  /// List of all enum-like values
  static final List<TestScriptRequestMethodCode> values = [
    delete,
    get_,
    options,
    patch,
    post,
    put,
    head,
  ];

  /// Returns the enum value with an element attached
  TestScriptRequestMethodCode withElement(Element? newElement) {
    return TestScriptRequestMethodCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TestScriptRequestMethodCode] from JSON.
  static TestScriptRequestMethodCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCode.elementOnly.withElement(element);
    }
    return TestScriptRequestMethodCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
