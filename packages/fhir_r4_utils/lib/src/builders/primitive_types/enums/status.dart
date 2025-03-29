// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The validation status of the target
class StatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StatusBuilder._({
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
  factory StatusBuilder(
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
    return StatusBuilder._(
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

  /// Create empty [StatusBuilder] with element only
  factory StatusBuilder.empty() => StatusBuilder._(validatedValue: '');

  /// Factory constructor to create [StatusBuilder] from JSON.
  factory StatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StatusBuilder cannot be constructed from JSON.',
      );
    }
    return StatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// attested
  static StatusBuilder attested = StatusBuilder._(
    validatedValue: 'attested',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Attested'.toFhirStringBuilder,
  );

  /// validated
  static StatusBuilder validated = StatusBuilder._(
    validatedValue: 'validated',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Validated'.toFhirStringBuilder,
  );

  /// in_process
  static StatusBuilder in_process = StatusBuilder._(
    validatedValue: 'in-process',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In process'.toFhirStringBuilder,
  );

  /// req_revalid
  static StatusBuilder req_revalid = StatusBuilder._(
    validatedValue: 'req-revalid',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Requires revalidation'.toFhirStringBuilder,
  );

  /// val_fail
  static StatusBuilder val_fail = StatusBuilder._(
    validatedValue: 'val-fail',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Validation failed'.toFhirStringBuilder,
  );

  /// reval_fail
  static StatusBuilder reval_fail = StatusBuilder._(
    validatedValue: 'reval-fail',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Re-Validation failed'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StatusBuilder elementOnly = StatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<StatusBuilder> values = [
    attested,
    validated,
    in_process,
    req_revalid,
    val_fail,
    reval_fail,
  ];

  /// Clones the current instance
  @override
  StatusBuilder clone() => StatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StatusBuilder withElement(ElementBuilder? newElement) {
    return StatusBuilder._(validatedValue: value, element: newElement);
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
  StatusBuilder copyWith({
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
    return StatusBuilder._(
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
