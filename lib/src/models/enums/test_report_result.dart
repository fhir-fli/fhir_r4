// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The reported execution result.
class TestReportResult extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestReportResult._(super.value, [super.element]);

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
    return TestReportResult._(value, element);
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
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TestReportResult setElement(
    String name,
    dynamic elementValue,
  ) {
    return TestReportResult._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TestReportResult withElement(Element? newElement) {
    return TestReportResult._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestReportResult._(
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
