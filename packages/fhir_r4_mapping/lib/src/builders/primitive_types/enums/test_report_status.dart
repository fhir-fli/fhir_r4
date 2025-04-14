// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TestReportStatus
enum TestReportStatusBuilderEnum {
  /// completed
  completed,

  /// in-progress
  inProgress,

  /// waiting
  waiting,

  /// stopped
  stopped,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TestReportStatusBuilderEnum.completed:
        return 'completed';
      case TestReportStatusBuilderEnum.inProgress:
        return 'in-progress';
      case TestReportStatusBuilderEnum.waiting:
        return 'waiting';
      case TestReportStatusBuilderEnum.stopped:
        return 'stopped';
      case TestReportStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'completed':
        return TestReportStatusBuilderEnum.completed;
      case 'in-progress':
        return TestReportStatusBuilderEnum.inProgress;
      case 'waiting':
        return TestReportStatusBuilderEnum.waiting;
      case 'stopped':
        return TestReportStatusBuilderEnum.stopped;
      case 'entered-in-error':
        return TestReportStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The current status of the test report.
class TestReportStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestReportStatusBuilder._({
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
  factory TestReportStatusBuilder(
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
    final valueEnum = TestReportStatusBuilderEnum.fromString(
      valueString,
    );
    return TestReportStatusBuilder._(
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

  /// Create empty [TestReportStatusBuilder]
  /// with element only
  factory TestReportStatusBuilder.empty() =>
      TestReportStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TestReportStatusBuilder] from JSON.
  factory TestReportStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportStatusBuilder cannot be constructed from JSON.',
      );
    }
    return TestReportStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TestReportStatusBuilder
  final TestReportStatusBuilderEnum? valueEnum;

  /// completed
  static TestReportStatusBuilder completed = TestReportStatusBuilder._(
    valueString: 'completed',
    valueEnum: TestReportStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// in_progress
  static TestReportStatusBuilder inProgress = TestReportStatusBuilder._(
    valueString: 'in-progress',
    valueEnum: TestReportStatusBuilderEnum.inProgress,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In Progress',
    ),
  );

  /// waiting
  static TestReportStatusBuilder waiting = TestReportStatusBuilder._(
    valueString: 'waiting',
    valueEnum: TestReportStatusBuilderEnum.waiting,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Waiting',
    ),
  );

  /// stopped
  static TestReportStatusBuilder stopped = TestReportStatusBuilder._(
    valueString: 'stopped',
    valueEnum: TestReportStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// entered_in_error
  static TestReportStatusBuilder enteredInError = TestReportStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: TestReportStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// For instances where an Element is present but not value
  static TestReportStatusBuilder elementOnly = TestReportStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TestReportStatusBuilder> values = [
    completed,
    inProgress,
    waiting,
    stopped,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  TestReportStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TestReportStatusBuilder._(
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
