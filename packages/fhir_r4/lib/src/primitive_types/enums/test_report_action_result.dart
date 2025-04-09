// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TestReportActionResult
enum TestReportActionResultEnum {
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
      case TestReportActionResultEnum.pass:
        return 'pass';
      case TestReportActionResultEnum.skip:
        return 'skip';
      case TestReportActionResultEnum.fail:
        return 'fail';
      case TestReportActionResultEnum.warning:
        return 'warning';
      case TestReportActionResultEnum.error:
        return 'error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportActionResultEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportActionResultEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportActionResultEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'pass':
        return TestReportActionResultEnum.pass;
      case 'skip':
        return TestReportActionResultEnum.skip;
      case 'fail':
        return TestReportActionResultEnum.fail;
      case 'warning':
        return TestReportActionResultEnum.warning;
      case 'error':
        return TestReportActionResultEnum.error;
    }
    return null;
  }
}

/// The results of executing an action.
class TestReportActionResult extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TestReportActionResult._({
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
  factory TestReportActionResult(
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
    final valueEnum = TestReportActionResultEnum.fromString(valueString);
    return TestReportActionResult._(
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

  /// Factory constructor to create [TestReportActionResult]
  /// from JSON.
  factory TestReportActionResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TestReportActionResultEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportActionResult._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportActionResult cannot be constructed from JSON.',
      );
    }
    return TestReportActionResult._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TestReportActionResult
  final TestReportActionResultEnum? valueEnum;

  /// pass
  static const TestReportActionResult pass = TestReportActionResult._(
    valueString: 'pass',
    valueEnum: TestReportActionResultEnum.pass,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pass',
    ),
  );

  /// skip
  static const TestReportActionResult skip = TestReportActionResult._(
    valueString: 'skip',
    valueEnum: TestReportActionResultEnum.skip,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Skip',
    ),
  );

  /// fail
  static const TestReportActionResult fail = TestReportActionResult._(
    valueString: 'fail',
    valueEnum: TestReportActionResultEnum.fail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fail',
    ),
  );

  /// warning
  static const TestReportActionResult warning = TestReportActionResult._(
    valueString: 'warning',
    valueEnum: TestReportActionResultEnum.warning,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Warning',
    ),
  );

  /// error
  static const TestReportActionResult error = TestReportActionResult._(
    valueString: 'error',
    valueEnum: TestReportActionResultEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-action-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// List of all enum-like values
  static final List<TestReportActionResult> values = [
    pass,
    skip,
    fail,
    warning,
    error,
  ];

  /// Returns the enum value with an element attached
  TestReportActionResult withElement(Element? newElement) {
    return TestReportActionResult._(
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
  TestReportActionResult clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TestReportActionResultCopyWithImpl<TestReportActionResult> get copyWith =>
      TestReportActionResultCopyWithImpl<TestReportActionResult>(
        this,
        (v) => v as TestReportActionResult,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TestReportActionResultCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TestReportActionResultCopyWithImpl(super._value, super._then);

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
      TestReportActionResult(
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
