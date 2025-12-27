part of '../primitive_types.dart';

/// Actual enum for TestReportActionResult
enum TestReportActionResultBuilderEnum {
  /// pass
  pass,

  /// skip
  skip,

  /// fail
  fail,

  /// warning
  warning,

  /// error
  error,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TestReportActionResultBuilderEnum.pass:
        return 'pass';
      case TestReportActionResultBuilderEnum.skip:
        return 'skip';
      case TestReportActionResultBuilderEnum.fail:
        return 'fail';
      case TestReportActionResultBuilderEnum.warning:
        return 'warning';
      case TestReportActionResultBuilderEnum.error:
        return 'error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportActionResultBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportActionResultBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportActionResultBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'pass':
        return TestReportActionResultBuilderEnum.pass;
      case 'skip':
        return TestReportActionResultBuilderEnum.skip;
      case 'fail':
        return TestReportActionResultBuilderEnum.fail;
      case 'warning':
        return TestReportActionResultBuilderEnum.warning;
      case 'error':
        return TestReportActionResultBuilderEnum.error;
    }
    return null;
  }
}

/// The results of executing an action.
class TestReportActionResultBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestReportActionResultBuilder._({
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
  factory TestReportActionResultBuilder(
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
    final valueEnum = TestReportActionResultBuilderEnum.fromString(
      valueString,
    );
    return TestReportActionResultBuilder._(
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

  /// Create empty [TestReportActionResultBuilder]
  /// with element only
  factory TestReportActionResultBuilder.empty() =>
      TestReportActionResultBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TestReportActionResultBuilder] from JSON.
  factory TestReportActionResultBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportActionResultBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportActionResultBuilder cannot be constructed from JSON.',
      );
    }
    return TestReportActionResultBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TestReportActionResultBuilder
  final TestReportActionResultBuilderEnum? valueEnum;

  /// pass
  static TestReportActionResultBuilder pass = TestReportActionResultBuilder._(
    valueString: 'pass',
    valueEnum: TestReportActionResultBuilderEnum.pass,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pass',
    ),
  );

  /// skip
  static TestReportActionResultBuilder skip = TestReportActionResultBuilder._(
    valueString: 'skip',
    valueEnum: TestReportActionResultBuilderEnum.skip,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Skip',
    ),
  );

  /// fail
  static TestReportActionResultBuilder fail = TestReportActionResultBuilder._(
    valueString: 'fail',
    valueEnum: TestReportActionResultBuilderEnum.fail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fail',
    ),
  );

  /// warning
  static TestReportActionResultBuilder warning =
      TestReportActionResultBuilder._(
    valueString: 'warning',
    valueEnum: TestReportActionResultBuilderEnum.warning,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Warning',
    ),
  );

  /// error
  static TestReportActionResultBuilder error = TestReportActionResultBuilder._(
    valueString: 'error',
    valueEnum: TestReportActionResultBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// For instances where an Element is present but not value
  static TestReportActionResultBuilder elementOnly =
      TestReportActionResultBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TestReportActionResultBuilder> values = [
    pass,
    skip,
    fail,
    warning,
    error,
  ];

  /// Returns the enum value with an element attached
  TestReportActionResultBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TestReportActionResultBuilder._(
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
