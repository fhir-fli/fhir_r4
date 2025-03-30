// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of a request.
class RequestStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RequestStatusBuilder._({
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
  factory RequestStatusBuilder(
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
    return RequestStatusBuilder._(
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

  /// Create empty [RequestStatusBuilder] with element only
  factory RequestStatusBuilder.empty() =>
      RequestStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [RequestStatusBuilder]
  /// from JSON.
  factory RequestStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestStatusBuilder cannot be constructed from JSON.',
      );
    }
    return RequestStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// draft
  static RequestStatusBuilder draft = RequestStatusBuilder._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Draft'.toFhirStringBuilder,
  );

  /// active
  static RequestStatusBuilder active = RequestStatusBuilder._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// on_hold
  static RequestStatusBuilder on_hold = RequestStatusBuilder._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// revoked
  static RequestStatusBuilder revoked = RequestStatusBuilder._(
    validatedValue: 'revoked',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Revoked'.toFhirStringBuilder,
  );

  /// completed
  static RequestStatusBuilder completed = RequestStatusBuilder._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static RequestStatusBuilder entered_in_error = RequestStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static RequestStatusBuilder unknown = RequestStatusBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/request-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RequestStatusBuilder elementOnly =
      RequestStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<RequestStatusBuilder> values = [
    draft,
    active,
    on_hold,
    revoked,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  RequestStatusBuilder clone() => RequestStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RequestStatusBuilder withElement(ElementBuilder? newElement) {
    return RequestStatusBuilder._(validatedValue: value, element: newElement);
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
  RequestStatusBuilder copyWith({
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
    return RequestStatusBuilder._(
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
