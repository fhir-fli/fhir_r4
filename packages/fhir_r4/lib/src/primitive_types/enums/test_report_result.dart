// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The reported execution result.
class TestReportResult extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TestReportResult._({
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
  factory TestReportResult(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return TestReportResult._(
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

  /// Create empty [TestReportResult] with element only
  factory TestReportResult.empty() => TestReportResult._(valueString: '');

  /// Factory constructor to create [TestReportResult] from JSON.
  factory TestReportResult.fromJson(Map<String, dynamic> json) {
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
      valueString: value,
      element: element,
    );
  }

  /// pass
  static final TestReportResult pass = TestReportResult._(
    valueString: 'pass',
    system: 'http://hl7.org/fhir/ValueSet/report-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pass'.toFhirString,
  );

  /// fail
  static final TestReportResult fail = TestReportResult._(
    valueString: 'fail',
    system: 'http://hl7.org/fhir/ValueSet/report-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fail'.toFhirString,
  );

  /// pending
  static final TestReportResult pending = TestReportResult._(
    valueString: 'pending',
    system: 'http://hl7.org/fhir/ValueSet/report-result-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pending'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TestReportResult elementOnly =
      TestReportResult._(valueString: '');

  /// List of all enum-like values
  static final List<TestReportResult> values = [
    pass,
    fail,
    pending,
  ];

  /// Clones the current instance
  @override
  TestReportResult clone() => TestReportResult._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportResult withElement(Element? newElement) {
    return TestReportResult._(
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

  /// Creates a modified copy with updated properties.
  @override
  TestReportResult copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for TestReportResult: $newValue');
    }
    return TestReportResult._(
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
