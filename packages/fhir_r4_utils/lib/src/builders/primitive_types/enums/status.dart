// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The validation status of the target
class StatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StatusBuilder._({
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
  factory StatusBuilder(
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
    return StatusBuilder._(
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

  /// Create empty [StatusBuilder] with element only
  factory StatusBuilder.empty() => StatusBuilder._(valueString: '');

  /// Factory constructor to create [StatusBuilder]
  /// from JSON.
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
      valueString: value,
      element: element,
    );
  }

  /// attested
  static StatusBuilder attested = StatusBuilder._(
    valueString: 'attested',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Attested'.toFhirStringBuilder,
  );

  /// validated
  static StatusBuilder validated = StatusBuilder._(
    valueString: 'validated',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Validated'.toFhirStringBuilder,
  );

  /// in_process
  static StatusBuilder in_process = StatusBuilder._(
    valueString: 'in-process',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'In process'.toFhirStringBuilder,
  );

  /// req_revalid
  static StatusBuilder req_revalid = StatusBuilder._(
    valueString: 'req-revalid',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Requires revalidation'.toFhirStringBuilder,
  );

  /// val_fail
  static StatusBuilder val_fail = StatusBuilder._(
    valueString: 'val-fail',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Validation failed'.toFhirStringBuilder,
  );

  /// reval_fail
  static StatusBuilder reval_fail = StatusBuilder._(
    valueString: 'reval-fail',
    system: 'http://hl7.org/fhir/ValueSet/verificationresult-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Re-Validation failed'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StatusBuilder elementOnly = StatusBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StatusBuilder withElement(ElementBuilder? newElement) {
    return StatusBuilder._(valueString: valueString, element: newElement);
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
  StatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for Status: $newValue');
    }
    return StatusBuilder._(
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
