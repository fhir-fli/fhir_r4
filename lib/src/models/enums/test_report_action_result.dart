// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The results of executing an action.
class TestReportActionResult extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  TestReportActionResult._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [TestReportActionResult] with element only
  factory TestReportActionResult.empty() => TestReportActionResult._('');

  /// Factory constructor to create [TestReportActionResult] from JSON.
  factory TestReportActionResult.fromJson(
    Map<String, dynamic> json,
  ) {
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
    return TestReportActionResult._(
      value,
      element: element,
    );
  }

  /// pass
  static final TestReportActionResult pass = TestReportActionResult._(
    'pass',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pass'.toFhirString,
  );

  /// skip
  static final TestReportActionResult skip = TestReportActionResult._(
    'skip',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Skip'.toFhirString,
  );

  /// fail
  static final TestReportActionResult fail = TestReportActionResult._(
    'fail',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fail'.toFhirString,
  );

  /// warning
  static final TestReportActionResult warning = TestReportActionResult._(
    'warning',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Warning'.toFhirString,
  );

  /// error
  static final TestReportActionResult error = TestReportActionResult._(
    'error',
    system: 'http://hl7.org/fhir/ValueSet/report-action-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final TestReportActionResult elementOnly =
      TestReportActionResult._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportActionResult withElement(Element? newElement) {
    return TestReportActionResult._(
      value,
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
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
