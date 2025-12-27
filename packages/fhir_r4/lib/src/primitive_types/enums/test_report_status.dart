part of '../primitive_types.dart';

/// Actual enum for TestReportStatus
enum TestReportStatusEnum {
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
      case TestReportStatusEnum.completed:
        return 'completed';
      case TestReportStatusEnum.inProgress:
        return 'in-progress';
      case TestReportStatusEnum.waiting:
        return 'waiting';
      case TestReportStatusEnum.stopped:
        return 'stopped';
      case TestReportStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'completed':
        return TestReportStatusEnum.completed;
      case 'in-progress':
        return TestReportStatusEnum.inProgress;
      case 'waiting':
        return TestReportStatusEnum.waiting;
      case 'stopped':
        return TestReportStatusEnum.stopped;
      case 'entered-in-error':
        return TestReportStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The current status of the test report.
class TestReportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TestReportStatus._({
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
  factory TestReportStatus(
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
    final valueEnum = TestReportStatusEnum.fromString(valueString);
    return TestReportStatus._(
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

  /// Factory constructor to create [TestReportStatus]
  /// from JSON.
  factory TestReportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TestReportStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportStatus cannot be constructed from JSON.',
      );
    }
    return TestReportStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TestReportStatus
  final TestReportStatusEnum? valueEnum;

  /// completed
  static const TestReportStatus completed = TestReportStatus._(
    valueString: 'completed',
    valueEnum: TestReportStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// in_progress
  static const TestReportStatus inProgress = TestReportStatus._(
    valueString: 'in-progress',
    valueEnum: TestReportStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// waiting
  static const TestReportStatus waiting = TestReportStatus._(
    valueString: 'waiting',
    valueEnum: TestReportStatusEnum.waiting,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Waiting',
    ),
  );

  /// stopped
  static const TestReportStatus stopped = TestReportStatus._(
    valueString: 'stopped',
    valueEnum: TestReportStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// entered_in_error
  static const TestReportStatus enteredInError = TestReportStatus._(
    valueString: 'entered-in-error',
    valueEnum: TestReportStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-status-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered In Error',
    ),
  );

  /// List of all enum-like values
  static final List<TestReportStatus> values = [
    completed,
    inProgress,
    waiting,
    stopped,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  TestReportStatus withElement(Element? newElement) {
    return TestReportStatus._(
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
  TestReportStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TestReportStatusCopyWithImpl<TestReportStatus> get copyWith =>
      TestReportStatusCopyWithImpl<TestReportStatus>(
        this,
        (v) => v as TestReportStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TestReportStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TestReportStatusCopyWithImpl(super._value, super._then);

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
      TestReportStatus(
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
