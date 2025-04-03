// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The allowable request method or HTTP operation codes.
class TestScriptRequestMethodCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TestScriptRequestMethodCode._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory TestScriptRequestMethodCode(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return TestScriptRequestMethodCode._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [TestScriptRequestMethodCode] with element only
  factory TestScriptRequestMethodCode.empty() =>
      TestScriptRequestMethodCode._(valueString: '');

  /// Factory constructor to create [TestScriptRequestMethodCode] from JSON.
  factory TestScriptRequestMethodCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestScriptRequestMethodCode cannot be constructed from JSON.',
      );
    }
    return TestScriptRequestMethodCode._(
      valueString: value,
      element: element,
    );
  }

  /// delete
  static final TestScriptRequestMethodCode delete =
      TestScriptRequestMethodCode._(
    valueString: 'delete',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DELETE'.toFhirString,
  );

  /// get_
  static final TestScriptRequestMethodCode get_ = TestScriptRequestMethodCode._(
    valueString: 'get',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GET'.toFhirString,
  );

  /// options
  static final TestScriptRequestMethodCode options =
      TestScriptRequestMethodCode._(
    valueString: 'options',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OPTIONS'.toFhirString,
  );

  /// patch
  static final TestScriptRequestMethodCode patch =
      TestScriptRequestMethodCode._(
    valueString: 'patch',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PATCH'.toFhirString,
  );

  /// post
  static final TestScriptRequestMethodCode post = TestScriptRequestMethodCode._(
    valueString: 'post',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'POST'.toFhirString,
  );

  /// put
  static final TestScriptRequestMethodCode put = TestScriptRequestMethodCode._(
    valueString: 'put',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PUT'.toFhirString,
  );

  /// head
  static final TestScriptRequestMethodCode head = TestScriptRequestMethodCode._(
    valueString: 'head',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HEAD'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TestScriptRequestMethodCode elementOnly =
      TestScriptRequestMethodCode._(valueString: '');

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

  /// Clones the current instance
  @override
  TestScriptRequestMethodCode clone() => TestScriptRequestMethodCode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestScriptRequestMethodCode withElement(Element? newElement) {
    return TestScriptRequestMethodCode._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TestScriptRequestMethodCode copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for TestScriptRequestMethodCode: $newValue');
    }
    return TestScriptRequestMethodCode._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
