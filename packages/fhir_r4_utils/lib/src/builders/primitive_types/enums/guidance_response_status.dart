// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of a guidance response.
class GuidanceResponseStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GuidanceResponseStatusBuilder._({
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
  factory GuidanceResponseStatusBuilder(
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
    return GuidanceResponseStatusBuilder._(
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

  /// Create empty [GuidanceResponseStatusBuilder] with element only
  factory GuidanceResponseStatusBuilder.empty() =>
      GuidanceResponseStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [GuidanceResponseStatusBuilder]
  /// from JSON.
  factory GuidanceResponseStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidanceResponseStatusBuilder cannot be constructed from JSON.',
      );
    }
    return GuidanceResponseStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// success
  static GuidanceResponseStatusBuilder success =
      GuidanceResponseStatusBuilder._(
    validatedValue: 'success',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Success'.toFhirStringBuilder,
  );

  /// data_requested
  static GuidanceResponseStatusBuilder data_requested =
      GuidanceResponseStatusBuilder._(
    validatedValue: 'data-requested',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Data Requested'.toFhirStringBuilder,
  );

  /// data_required
  static GuidanceResponseStatusBuilder data_required =
      GuidanceResponseStatusBuilder._(
    validatedValue: 'data-required',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Data Required'.toFhirStringBuilder,
  );

  /// in_progress
  static GuidanceResponseStatusBuilder in_progress =
      GuidanceResponseStatusBuilder._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In Progress'.toFhirStringBuilder,
  );

  /// failure
  static GuidanceResponseStatusBuilder failure =
      GuidanceResponseStatusBuilder._(
    validatedValue: 'failure',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Failure'.toFhirStringBuilder,
  );

  /// entered_in_error
  static GuidanceResponseStatusBuilder entered_in_error =
      GuidanceResponseStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/guidance-response-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered In Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GuidanceResponseStatusBuilder elementOnly =
      GuidanceResponseStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<GuidanceResponseStatusBuilder> values = [
    success,
    data_requested,
    data_required,
    in_progress,
    failure,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  GuidanceResponseStatusBuilder clone() => GuidanceResponseStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GuidanceResponseStatusBuilder withElement(ElementBuilder? newElement) {
    return GuidanceResponseStatusBuilder._(
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
  GuidanceResponseStatusBuilder copyWith({
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
    return GuidanceResponseStatusBuilder._(
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
