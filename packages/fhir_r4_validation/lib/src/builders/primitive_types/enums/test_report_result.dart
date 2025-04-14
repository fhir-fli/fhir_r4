// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TestReportResult
enum TestReportResultBuilderEnum {
  /// pass
  pass,

  /// fail
  fail,

  /// pending
  pending,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TestReportResultBuilderEnum.pass:
        return 'pass';
      case TestReportResultBuilderEnum.fail:
        return 'fail';
      case TestReportResultBuilderEnum.pending:
        return 'pending';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportResultBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportResultBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportResultBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'pass':
        return TestReportResultBuilderEnum.pass;
      case 'fail':
        return TestReportResultBuilderEnum.fail;
      case 'pending':
        return TestReportResultBuilderEnum.pending;
    }
    return null;
  }
}

/// The reported execution result.
class TestReportResultBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestReportResultBuilder._({
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
  factory TestReportResultBuilder(
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
    final valueEnum = TestReportResultBuilderEnum.fromString(
      valueString,
    );
    return TestReportResultBuilder._(
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

  /// Create empty [TestReportResultBuilder]
  /// with element only
  factory TestReportResultBuilder.empty() =>
      TestReportResultBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TestReportResultBuilder] from JSON.
  factory TestReportResultBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResultBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportResultBuilder cannot be constructed from JSON.',
      );
    }
    return TestReportResultBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TestReportResultBuilder
  final TestReportResultBuilderEnum? valueEnum;

  /// pass
  static TestReportResultBuilder pass = TestReportResultBuilder._(
    valueString: 'pass',
    valueEnum: TestReportResultBuilderEnum.pass,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pass',
    ),
  );

  /// fail
  static TestReportResultBuilder fail = TestReportResultBuilder._(
    valueString: 'fail',
    valueEnum: TestReportResultBuilderEnum.fail,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fail',
    ),
  );

  /// pending
  static TestReportResultBuilder pending = TestReportResultBuilder._(
    valueString: 'pending',
    valueEnum: TestReportResultBuilderEnum.pending,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-result-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pending',
    ),
  );

  /// For instances where an Element is present but not value
  static TestReportResultBuilder elementOnly = TestReportResultBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TestReportResultBuilder> values = [
    pass,
    fail,
    pending,
  ];

  /// Returns the enum value with an element attached
  TestReportResultBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TestReportResultBuilder._(
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
