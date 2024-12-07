// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The current status of the test report.
class TestReportStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestReportStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [TestReportStatus] from JSON.
  factory TestReportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportStatus cannot be constructed from JSON.',
      );
    }
    return TestReportStatus._(value: value, element: element);
  }

  /// completed
  static final TestReportStatus completed = TestReportStatus._(
    value: 'completed',
  );

  /// in_progress
  static final TestReportStatus in_progress = TestReportStatus._(
    value: 'in-progress',
  );

  /// waiting
  static final TestReportStatus waiting = TestReportStatus._(
    value: 'waiting',
  );

  /// stopped
  static final TestReportStatus stopped = TestReportStatus._(
    value: 'stopped',
  );

  /// entered_in_error
  static final TestReportStatus entered_in_error = TestReportStatus._(
    value: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final TestReportStatus elementOnly = TestReportStatus._(value: '');

  /// List of all enum-like values
  static final List<TestReportStatus> values = [
    completed,
    in_progress,
    waiting,
    stopped,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  TestReportStatus clone() => TestReportStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportStatus withElement(Element? newElement) {
    return TestReportStatus._(value: value, element: newElement);
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
  TestReportStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestReportStatus._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
