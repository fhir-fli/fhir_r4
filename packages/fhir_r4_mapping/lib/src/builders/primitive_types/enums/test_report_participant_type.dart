// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for TestReportParticipantType
enum TestReportParticipantTypeBuilderEnum {
  /// test-engine
  testEngine,

  /// client
  client,

  /// server
  server,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TestReportParticipantTypeBuilderEnum.testEngine:
        return 'test-engine';
      case TestReportParticipantTypeBuilderEnum.client:
        return 'client';
      case TestReportParticipantTypeBuilderEnum.server:
        return 'server';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportParticipantTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportParticipantTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportParticipantTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'test-engine':
        return TestReportParticipantTypeBuilderEnum.testEngine;
      case 'client':
        return TestReportParticipantTypeBuilderEnum.client;
      case 'server':
        return TestReportParticipantTypeBuilderEnum.server;
    }
    return null;
  }
}

/// The type of participant.
class TestReportParticipantTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestReportParticipantTypeBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = TestReportParticipantTypeBuilderEnum.fromString(
      valueString,
    );
    return TestReportParticipantTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [TestReportParticipantTypeBuilder]
  /// with element only
  factory TestReportParticipantTypeBuilder.empty() =>
      TestReportParticipantTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TestReportParticipantTypeBuilder] from JSON.
  factory TestReportParticipantTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportParticipantTypeBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for TestReportParticipantTypeBuilder
  final TestReportParticipantTypeBuilderEnum? valueEnum;

  /// test_engine
  static TestReportParticipantTypeBuilder testEngine =
      TestReportParticipantTypeBuilder._(
    valueString: 'test-engine',
    valueEnum: TestReportParticipantTypeBuilderEnum.testEngine,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Test Engine',
    ),
  );

  /// client
  static TestReportParticipantTypeBuilder client =
      TestReportParticipantTypeBuilder._(
    valueString: 'client',
    valueEnum: TestReportParticipantTypeBuilderEnum.client,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Client',
    ),
  );

  /// server
  static TestReportParticipantTypeBuilder server =
      TestReportParticipantTypeBuilder._(
    valueString: 'server',
    valueEnum: TestReportParticipantTypeBuilderEnum.server,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-participant-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Server',
    ),
  );

  /// For instances where an Element is present but not value
  static TestReportParticipantTypeBuilder elementOnly =
      TestReportParticipantTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TestReportParticipantTypeBuilder> values = [
    testEngine,
    client,
    server,
  ];

  /// Returns the enum value with an element attached
  TestReportParticipantTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TestReportParticipantTypeBuilder._(
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
}
