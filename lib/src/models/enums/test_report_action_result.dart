// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The results of executing an action.
class TestReportActionResult extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestReportActionResult._(super.value, [super.element]);

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
    return TestReportActionResult._(value, element);
  }

  /// pass
  static final TestReportActionResult pass = TestReportActionResult._(
    'pass',
  );

  /// skip
  static final TestReportActionResult skip = TestReportActionResult._(
    'skip',
  );

  /// fail
  static final TestReportActionResult fail = TestReportActionResult._(
    'fail',
  );

  /// warning
  static final TestReportActionResult warning = TestReportActionResult._(
    'warning',
  );

  /// error
  static final TestReportActionResult error = TestReportActionResult._(
    'error',
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
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportActionResult withElement(Element? newElement) {
    return TestReportActionResult._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestReportActionResult._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
