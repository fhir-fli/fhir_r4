part of '../primitive_types.dart';

/// Actual enum for TestReportParticipantType
enum TestReportParticipantTypeEnum {
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
      case TestReportParticipantTypeEnum.testEngine:
        return 'test-engine';
      case TestReportParticipantTypeEnum.client:
        return 'client';
      case TestReportParticipantTypeEnum.server:
        return 'server';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TestReportParticipantTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TestReportParticipantTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TestReportParticipantTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'test-engine':
        return TestReportParticipantTypeEnum.testEngine;
      case 'client':
        return TestReportParticipantTypeEnum.client;
      case 'server':
        return TestReportParticipantTypeEnum.server;
    }
    return null;
  }
}

/// The type of participant.
class TestReportParticipantType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TestReportParticipantType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory TestReportParticipantType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = TestReportParticipantTypeEnum.fromString(valueString);
    return TestReportParticipantType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [TestReportParticipantType]
  /// from JSON.
  factory TestReportParticipantType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TestReportParticipantTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportParticipantType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportParticipantType cannot be constructed from JSON.',
      );
    }
    return TestReportParticipantType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TestReportParticipantType
  final TestReportParticipantTypeEnum? valueEnum;

  /// test_engine
  static const TestReportParticipantType testEngine =
      TestReportParticipantType._(
    valueString: 'test-engine',
    valueEnum: TestReportParticipantTypeEnum.testEngine,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-participant-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Test Engine',
    ),
  );

  /// client
  static const TestReportParticipantType client = TestReportParticipantType._(
    valueString: 'client',
    valueEnum: TestReportParticipantTypeEnum.client,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-participant-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Client',
    ),
  );

  /// server
  static const TestReportParticipantType server = TestReportParticipantType._(
    valueString: 'server',
    valueEnum: TestReportParticipantTypeEnum.server,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-participant-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Server',
    ),
  );

  /// List of all enum-like values
  static final List<TestReportParticipantType> values = [
    testEngine,
    client,
    server,
  ];

  /// Returns the enum value with an element attached
  TestReportParticipantType withElement(Element? newElement) {
    return TestReportParticipantType._(
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

  @override
  TestReportParticipantType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TestReportParticipantTypeCopyWithImpl<TestReportParticipantType>
      get copyWith =>
          TestReportParticipantTypeCopyWithImpl<TestReportParticipantType>(
            this,
            (v) => v as TestReportParticipantType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TestReportParticipantTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TestReportParticipantTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      TestReportParticipantType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
