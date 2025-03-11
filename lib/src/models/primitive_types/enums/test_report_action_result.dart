// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The results of executing an action.
class TestReportActionResult extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TestReportActionResult._({
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
  factory TestReportActionResult(
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
    return TestReportActionResult._(
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

  /// Create empty [TestReportActionResult] with element only
  factory TestReportActionResult.empty() =>
      TestReportActionResult._(validatedValue: '');

  /// Factory constructor to create [TestReportActionResult] from JSON.
  factory TestReportActionResult.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportActionResult.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportActionResult cannot be constructed from JSON.',
      );
    }
    return TestReportActionResult._(validatedValue: value, element: element);
  }

  /// pass
  static final TestReportActionResult pass = TestReportActionResult._(
    validatedValue: 'pass',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pass'.toFhirString,
  );

  /// skip
  static final TestReportActionResult skip = TestReportActionResult._(
    validatedValue: 'skip',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Skip'.toFhirString,
  );

  /// fail
  static final TestReportActionResult fail = TestReportActionResult._(
    validatedValue: 'fail',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fail'.toFhirString,
  );

  /// warning
  static final TestReportActionResult warning = TestReportActionResult._(
    validatedValue: 'warning',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Warning'.toFhirString,
  );

  /// error
  static final TestReportActionResult error = TestReportActionResult._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TestReportActionResult elementOnly =
      TestReportActionResult._(validatedValue: '');

  /// List of all enum-like values
  static final List<TestReportActionResult> values = [
    pass,
    skip,
    fail,
    warning,
    error,
  ];

  /// Clones the current instance
  @override
  TestReportActionResult clone() => TestReportActionResult._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportActionResult withElement(Element? newElement) {
    return TestReportActionResult._(validatedValue: value, element: newElement);
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
  TestReportActionResult copyWith({
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
    return TestReportActionResult._(
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
