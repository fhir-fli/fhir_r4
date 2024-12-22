// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participant.
class TestReportParticipantType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TestReportParticipantType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [TestReportParticipantType] from JSON.
  factory TestReportParticipantType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportParticipantType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportParticipantType cannot be constructed from JSON.',
      );
    }
    return TestReportParticipantType._(
      value,
      element: element,
    );
  }

  /// test_engine
  static final TestReportParticipantType test_engine =
      TestReportParticipantType._(
    'test-engine',
  );

  /// client
  static final TestReportParticipantType client = TestReportParticipantType._(
    'client',
  );

  /// server
  static final TestReportParticipantType server = TestReportParticipantType._(
    'server',
  );

  /// For instances where an Element is present but not value

  static final TestReportParticipantType elementOnly =
      TestReportParticipantType._('');

  /// List of all enum-like values
  static final List<TestReportParticipantType> values = [
    test_engine,
    client,
    server,
  ];

  /// Clones the current instance
  @override
  TestReportParticipantType clone() => TestReportParticipantType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportParticipantType withElement(Element? newElement) {
    return TestReportParticipantType._(
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
  TestReportParticipantType copyWith({
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
    return TestReportParticipantType._(
      newValue ?? value,
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
