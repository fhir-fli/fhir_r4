// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participant.
class TestReportParticipantType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  TestReportParticipantType._(
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

  /// Create empty [TestReportParticipantType] with element only
  factory TestReportParticipantType.empty() => TestReportParticipantType._('');

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
    system: 'http://hl7.org/fhir/ValueSet/report-participant-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Test Engine'.toFhirString,
  );

  /// client
  static final TestReportParticipantType client = TestReportParticipantType._(
    'client',
    system: 'http://hl7.org/fhir/ValueSet/report-participant-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Client'.toFhirString,
  );

  /// server
  static final TestReportParticipantType server = TestReportParticipantType._(
    'server',
    system: 'http://hl7.org/fhir/ValueSet/report-participant-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Server'.toFhirString,
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
    return TestReportParticipantType._(
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
