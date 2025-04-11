// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TestReportResult
enum TestReportResultEnum {
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
      case TestReportResultEnum.pass:
        return 'pass';
      case TestReportResultEnum.fail:
        return 'fail';
      case TestReportResultEnum.pending:
        return 'pending';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportResultEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportResultEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportResultEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'pass':
        return TestReportResultEnum.pass;
      case 'fail':
        return TestReportResultEnum.fail;
      case 'pending':
        return TestReportResultEnum.pending;
    }
    return null;
  }
}

/// The reported execution result.
class TestReportResult extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TestReportResult._({
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
  factory TestReportResult(
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
    final valueEnum = TestReportResultEnum.fromString(valueString);
    return TestReportResult._(
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

  /// Factory constructor to create [TestReportResult]
  /// from JSON.
  factory TestReportResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TestReportResultEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResult._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportResult cannot be constructed from JSON.',
      );
    }
    return TestReportResult._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TestReportResult
  final TestReportResultEnum? valueEnum;

  /// pass
  static const TestReportResult pass = TestReportResult._(
    valueString: 'pass',
    valueEnum: TestReportResultEnum.pass,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pass',
    ),
  );

  /// fail
  static const TestReportResult fail = TestReportResult._(
    valueString: 'fail',
    valueEnum: TestReportResultEnum.fail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fail',
    ),
  );

  /// pending
  static const TestReportResult pending = TestReportResult._(
    valueString: 'pending',
    valueEnum: TestReportResultEnum.pending,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-result-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pending',
    ),
  );

  /// List of all enum-like values
  static final List<TestReportResult> values = [
    pass,
    fail,
    pending,
  ];

  /// Returns the enum value with an element attached
  TestReportResult withElement(Element? newElement) {
    return TestReportResult._(
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
  TestReportResult clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TestReportResultCopyWithImpl<TestReportResult> get copyWith =>
      TestReportResultCopyWithImpl<TestReportResult>(
        this,
        (v) => v as TestReportResult,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TestReportResultCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TestReportResultCopyWithImpl(super._value, super._then);

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
      TestReportResult(
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
