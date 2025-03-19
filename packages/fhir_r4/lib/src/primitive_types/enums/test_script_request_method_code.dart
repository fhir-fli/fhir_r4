// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The allowable request method or HTTP operation codes.
class TestScriptRequestMethodCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TestScriptRequestMethodCode._({
    required super.validatedValue,
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
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return TestScriptRequestMethodCode._(
      validatedValue: validated,
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
      TestScriptRequestMethodCode._(validatedValue: '');

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
      validatedValue: value,
      element: element,
    );
  }

  /// delete
  static final TestScriptRequestMethodCode delete =
      TestScriptRequestMethodCode._(
    validatedValue: 'delete',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DELETE'.toFhirString,
  );

  /// get_
  static final TestScriptRequestMethodCode get_ = TestScriptRequestMethodCode._(
    validatedValue: 'get',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GET'.toFhirString,
  );

  /// options
  static final TestScriptRequestMethodCode options =
      TestScriptRequestMethodCode._(
    validatedValue: 'options',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OPTIONS'.toFhirString,
  );

  /// patch
  static final TestScriptRequestMethodCode patch =
      TestScriptRequestMethodCode._(
    validatedValue: 'patch',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PATCH'.toFhirString,
  );

  /// post
  static final TestScriptRequestMethodCode post = TestScriptRequestMethodCode._(
    validatedValue: 'post',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'POST'.toFhirString,
  );

  /// put
  static final TestScriptRequestMethodCode put = TestScriptRequestMethodCode._(
    validatedValue: 'put',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PUT'.toFhirString,
  );

  /// head
  static final TestScriptRequestMethodCode head = TestScriptRequestMethodCode._(
    validatedValue: 'head',
    system: 'http://hl7.org/fhir/ValueSet/http-operations'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'HEAD'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TestScriptRequestMethodCode elementOnly =
      TestScriptRequestMethodCode._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestScriptRequestMethodCode withElement(Element? newElement) {
    return TestScriptRequestMethodCode._(
      validatedValue: value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TestScriptRequestMethodCode copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestScriptRequestMethodCode._(
      validatedValue: newValue ?? value,
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
