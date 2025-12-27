part of '../primitive_types.dart';

/// Actual enum for TestScriptRequestMethodCode
enum TestScriptRequestMethodCodeEnum {
  /// delete
  delete,

  /// get
  get_,

  /// options
  options,

  /// patch
  patch,

  /// post
  post,

  /// put
  put,

  /// head
  head,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TestScriptRequestMethodCodeEnum.delete:
        return 'delete';
      case TestScriptRequestMethodCodeEnum.get_:
        return 'get';
      case TestScriptRequestMethodCodeEnum.options:
        return 'options';
      case TestScriptRequestMethodCodeEnum.patch:
        return 'patch';
      case TestScriptRequestMethodCodeEnum.post:
        return 'post';
      case TestScriptRequestMethodCodeEnum.put:
        return 'put';
      case TestScriptRequestMethodCodeEnum.head:
        return 'head';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestScriptRequestMethodCodeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TestScriptRequestMethodCodeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestScriptRequestMethodCodeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'delete':
        return TestScriptRequestMethodCodeEnum.delete;
      case 'get':
        return TestScriptRequestMethodCodeEnum.get_;
      case 'options':
        return TestScriptRequestMethodCodeEnum.options;
      case 'patch':
        return TestScriptRequestMethodCodeEnum.patch;
      case 'post':
        return TestScriptRequestMethodCodeEnum.post;
      case 'put':
        return TestScriptRequestMethodCodeEnum.put;
      case 'head':
        return TestScriptRequestMethodCodeEnum.head;
    }
    return null;
  }
}

/// The allowable request method or HTTP operation codes.
class TestScriptRequestMethodCode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TestScriptRequestMethodCode._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
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
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = TestScriptRequestMethodCodeEnum.fromString(valueString);
    return TestScriptRequestMethodCode._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [TestScriptRequestMethodCode]
  /// from JSON.
  factory TestScriptRequestMethodCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TestScriptRequestMethodCodeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestScriptRequestMethodCode cannot be constructed from JSON.',
      );
    }
    return TestScriptRequestMethodCode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TestScriptRequestMethodCode
  final TestScriptRequestMethodCodeEnum? valueEnum;

  /// delete
  static const TestScriptRequestMethodCode delete =
      TestScriptRequestMethodCode._(
    valueString: 'delete',
    valueEnum: TestScriptRequestMethodCodeEnum.delete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DELETE',
    ),
  );

  /// get_
  static const TestScriptRequestMethodCode get_ = TestScriptRequestMethodCode._(
    valueString: 'get',
    valueEnum: TestScriptRequestMethodCodeEnum.get_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'GET',
    ),
  );

  /// options
  static const TestScriptRequestMethodCode options =
      TestScriptRequestMethodCode._(
    valueString: 'options',
    valueEnum: TestScriptRequestMethodCodeEnum.options,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OPTIONS',
    ),
  );

  /// patch
  static const TestScriptRequestMethodCode patch =
      TestScriptRequestMethodCode._(
    valueString: 'patch',
    valueEnum: TestScriptRequestMethodCodeEnum.patch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PATCH',
    ),
  );

  /// post
  static const TestScriptRequestMethodCode post = TestScriptRequestMethodCode._(
    valueString: 'post',
    valueEnum: TestScriptRequestMethodCodeEnum.post,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'POST',
    ),
  );

  /// put
  static const TestScriptRequestMethodCode put = TestScriptRequestMethodCode._(
    valueString: 'put',
    valueEnum: TestScriptRequestMethodCodeEnum.put,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PUT',
    ),
  );

  /// head
  static const TestScriptRequestMethodCode head = TestScriptRequestMethodCode._(
    valueString: 'head',
    valueEnum: TestScriptRequestMethodCodeEnum.head,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'HEAD',
    ),
  );

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

  @override
  TestScriptRequestMethodCode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TestScriptRequestMethodCodeCopyWithImpl<TestScriptRequestMethodCode>
      get copyWith =>
          TestScriptRequestMethodCodeCopyWithImpl<TestScriptRequestMethodCode>(
            this,
            (v) => v as TestScriptRequestMethodCode,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TestScriptRequestMethodCodeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TestScriptRequestMethodCodeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      TestScriptRequestMethodCode(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
