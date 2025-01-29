// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The reported execution result.
class TestReportResult extends FhirCode {
  // Private constructor for internal use (like enum)
  TestReportResult._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [TestReportResult] from JSON.
  factory TestReportResult.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResult.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportResult cannot be constructed from JSON.',
      );
    }
    return TestReportResult._(
      value,
      element: element,
    );
  }

  /// pass
  static final TestReportResult pass = TestReportResult._(
    'pass',
  );

  /// fail
  static final TestReportResult fail = TestReportResult._(
    'fail',
  );

  /// pending
  static final TestReportResult pending = TestReportResult._(
    'pending',
  );

  /// For instances where an Element is present but not value

  static final TestReportResult elementOnly = TestReportResult._('');

  /// List of all enum-like values
  static final List<TestReportResult> values = [
    pass,
    fail,
    pending,
  ];

  /// Clones the current instance
  @override
  TestReportResult clone() => TestReportResult._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportResult withElement(Element? newElement) {
    return TestReportResult._(
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
  TestReportResult copyWith({
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
    return TestReportResult._(
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
