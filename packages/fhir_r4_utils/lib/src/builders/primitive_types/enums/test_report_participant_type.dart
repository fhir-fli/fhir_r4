// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of participant.
class TestReportParticipantTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestReportParticipantTypeBuilder._({
    required super.valueString,
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
  factory TestReportParticipantTypeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return TestReportParticipantTypeBuilder._(
      valueString: valueString,
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

  /// Create empty [TestReportParticipantTypeBuilder] with element only
  factory TestReportParticipantTypeBuilder.empty() =>
      TestReportParticipantTypeBuilder._(valueString: '');

  /// Factory constructor to create [TestReportParticipantTypeBuilder]
  /// from JSON.
  factory TestReportParticipantTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportParticipantTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportParticipantTypeBuilder cannot be constructed from JSON.',
      );
    }
    return TestReportParticipantTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// test_engine
  static TestReportParticipantTypeBuilder test_engine =
      TestReportParticipantTypeBuilder._(
    valueString: 'test-engine',
    system:
        'http://hl7.org/fhir/ValueSet/report-participant-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Test Engine'.toFhirStringBuilder,
  );

  /// client
  static TestReportParticipantTypeBuilder client =
      TestReportParticipantTypeBuilder._(
    valueString: 'client',
    system:
        'http://hl7.org/fhir/ValueSet/report-participant-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Client'.toFhirStringBuilder,
  );

  /// server
  static TestReportParticipantTypeBuilder server =
      TestReportParticipantTypeBuilder._(
    valueString: 'server',
    system:
        'http://hl7.org/fhir/ValueSet/report-participant-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Server'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static TestReportParticipantTypeBuilder elementOnly =
      TestReportParticipantTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<TestReportParticipantTypeBuilder> values = [
    test_engine,
    client,
    server,
  ];

  /// Clones the current instance
  @override
  TestReportParticipantTypeBuilder clone() =>
      TestReportParticipantTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  TestReportParticipantTypeBuilder withElement(ElementBuilder? newElement) {
    return TestReportParticipantTypeBuilder._(
        valueString: valueString, element: newElement);
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

  /// Creates a modified copy with updated properties.
  @override
  TestReportParticipantTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for TestReportParticipantType: $newValue');
    }
    return TestReportParticipantTypeBuilder._(
      valueString: newValue ?? valueString,
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
