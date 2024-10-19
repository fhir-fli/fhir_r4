// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The allowable request method or HTTP operation codes.
@collection
class TestScriptRequestMethodCode {
  /// Constructor for internal use (like enum)
  TestScriptRequestMethodCode({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TestScriptRequestMethodCode values
  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode delete = TestScriptRequestMethodCode(
    fhirCode: 'delete',
  );

  /// get_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode get_ = TestScriptRequestMethodCode(
    fhirCode: 'get',
  );

  /// options
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode options =
      TestScriptRequestMethodCode(
    fhirCode: 'options',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode patch = TestScriptRequestMethodCode(
    fhirCode: 'patch',
  );

  /// post
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode post = TestScriptRequestMethodCode(
    fhirCode: 'post',
  );

  /// put
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode put = TestScriptRequestMethodCode(
    fhirCode: 'put',
  );

  /// head
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TestScriptRequestMethodCode head = TestScriptRequestMethodCode(
    fhirCode: 'head',
  );

  /// For instances where an Element is present but not value

  static final TestScriptRequestMethodCode elementOnly =
      TestScriptRequestMethodCode();

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
    return TestScriptRequestMethodCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TestScriptRequestMethodCode.$fhirCode';
}
