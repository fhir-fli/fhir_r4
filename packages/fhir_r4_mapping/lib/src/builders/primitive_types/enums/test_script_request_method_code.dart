part of '../primitive_types.dart';

/// Actual enum for TestScriptRequestMethodCode
enum TestScriptRequestMethodCodeBuilderEnum {
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
      case TestScriptRequestMethodCodeBuilderEnum.delete:
        return 'delete';
      case TestScriptRequestMethodCodeBuilderEnum.get_:
        return 'get';
      case TestScriptRequestMethodCodeBuilderEnum.options:
        return 'options';
      case TestScriptRequestMethodCodeBuilderEnum.patch:
        return 'patch';
      case TestScriptRequestMethodCodeBuilderEnum.post:
        return 'post';
      case TestScriptRequestMethodCodeBuilderEnum.put:
        return 'put';
      case TestScriptRequestMethodCodeBuilderEnum.head:
        return 'head';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestScriptRequestMethodCodeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TestScriptRequestMethodCodeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestScriptRequestMethodCodeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'delete':
        return TestScriptRequestMethodCodeBuilderEnum.delete;
      case 'get':
        return TestScriptRequestMethodCodeBuilderEnum.get_;
      case 'options':
        return TestScriptRequestMethodCodeBuilderEnum.options;
      case 'patch':
        return TestScriptRequestMethodCodeBuilderEnum.patch;
      case 'post':
        return TestScriptRequestMethodCodeBuilderEnum.post;
      case 'put':
        return TestScriptRequestMethodCodeBuilderEnum.put;
      case 'head':
        return TestScriptRequestMethodCodeBuilderEnum.head;
    }
    return null;
  }
}

/// The allowable request method or HTTP operation codes.
class TestScriptRequestMethodCodeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestScriptRequestMethodCodeBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory TestScriptRequestMethodCodeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = TestScriptRequestMethodCodeBuilderEnum.fromString(
      valueString,
    );
    return TestScriptRequestMethodCodeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [TestScriptRequestMethodCodeBuilder]
  /// with element only
  factory TestScriptRequestMethodCodeBuilder.empty() =>
      TestScriptRequestMethodCodeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TestScriptRequestMethodCodeBuilder] from JSON.
  factory TestScriptRequestMethodCodeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptRequestMethodCodeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestScriptRequestMethodCodeBuilder cannot be constructed from JSON.',
      );
    }
    return TestScriptRequestMethodCodeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TestScriptRequestMethodCodeBuilder
  final TestScriptRequestMethodCodeBuilderEnum? valueEnum;

  /// delete
  static TestScriptRequestMethodCodeBuilder delete =
      TestScriptRequestMethodCodeBuilder._(
    valueString: 'delete',
    valueEnum: TestScriptRequestMethodCodeBuilderEnum.delete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DELETE',
    ),
  );

  /// get_
  static TestScriptRequestMethodCodeBuilder get_ =
      TestScriptRequestMethodCodeBuilder._(
    valueString: 'get',
    valueEnum: TestScriptRequestMethodCodeBuilderEnum.get_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'GET',
    ),
  );

  /// options
  static TestScriptRequestMethodCodeBuilder options =
      TestScriptRequestMethodCodeBuilder._(
    valueString: 'options',
    valueEnum: TestScriptRequestMethodCodeBuilderEnum.options,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OPTIONS',
    ),
  );

  /// patch
  static TestScriptRequestMethodCodeBuilder patch =
      TestScriptRequestMethodCodeBuilder._(
    valueString: 'patch',
    valueEnum: TestScriptRequestMethodCodeBuilderEnum.patch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PATCH',
    ),
  );

  /// post
  static TestScriptRequestMethodCodeBuilder post =
      TestScriptRequestMethodCodeBuilder._(
    valueString: 'post',
    valueEnum: TestScriptRequestMethodCodeBuilderEnum.post,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'POST',
    ),
  );

  /// put
  static TestScriptRequestMethodCodeBuilder put =
      TestScriptRequestMethodCodeBuilder._(
    valueString: 'put',
    valueEnum: TestScriptRequestMethodCodeBuilderEnum.put,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PUT',
    ),
  );

  /// head
  static TestScriptRequestMethodCodeBuilder head =
      TestScriptRequestMethodCodeBuilder._(
    valueString: 'head',
    valueEnum: TestScriptRequestMethodCodeBuilderEnum.head,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-operations',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'HEAD',
    ),
  );

  /// For instances where an Element is present but not value
  static TestScriptRequestMethodCodeBuilder elementOnly =
      TestScriptRequestMethodCodeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TestScriptRequestMethodCodeBuilder> values = [
    delete,
    get_,
    options,
    patch,
    post,
    put,
    head,
  ];

  /// Returns the enum value with an element attached
  TestScriptRequestMethodCodeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TestScriptRequestMethodCodeBuilder._(
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
}
