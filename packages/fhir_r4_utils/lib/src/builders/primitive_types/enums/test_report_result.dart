// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The reported execution result.
class TestReportResultBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TestReportResultBuilder._({
    required super.validatedValue,
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
  factory TestReportResultBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return TestReportResultBuilder._(
      validatedValue: validated,
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

  /// Create empty [TestReportResultBuilder] with element only
  factory TestReportResultBuilder.empty() =>
      TestReportResultBuilder._(validatedValue: '');

  /// Factory constructor to create [TestReportResultBuilder] from JSON.
  factory TestReportResultBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportResultBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TestReportResultBuilder cannot be constructed from JSON.',
      );
    }
    return TestReportResultBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// pass
  static TestReportResultBuilder pass = TestReportResultBuilder._(
    validatedValue: 'pass',
    system: 'http://hl7.org/fhir/ValueSet/report-result-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pass'.toFhirStringBuilder,
  );

  /// fail
  static TestReportResultBuilder fail = TestReportResultBuilder._(
    validatedValue: 'fail',
    system: 'http://hl7.org/fhir/ValueSet/report-result-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fail'.toFhirStringBuilder,
  );

  /// pending
  static TestReportResultBuilder pending = TestReportResultBuilder._(
    validatedValue: 'pending',
    system: 'http://hl7.org/fhir/ValueSet/report-result-codes'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pending'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static TestReportResultBuilder elementOnly =
      TestReportResultBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<TestReportResultBuilder> values = [
    pass,
    fail,
    pending,
  ];

  /// Clones the current instance
  @override
  TestReportResultBuilder clone() => TestReportResultBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  TestReportResultBuilder withElement(ElementBuilder? newElement) {
    return TestReportResultBuilder._(
        validatedValue: value, element: newElement);
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
  TestReportResultBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TestReportResultBuilder._(
      validatedValue: newValue ?? value,
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
