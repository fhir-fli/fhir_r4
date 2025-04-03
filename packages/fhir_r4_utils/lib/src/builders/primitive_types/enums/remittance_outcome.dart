// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The outcome of the processing.
class RemittanceOutcomeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RemittanceOutcomeBuilder._({
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
  factory RemittanceOutcomeBuilder(
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
    return RemittanceOutcomeBuilder._(
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

  /// Create empty [RemittanceOutcomeBuilder] with element only
  factory RemittanceOutcomeBuilder.empty() =>
      RemittanceOutcomeBuilder._(valueString: '');

  /// Factory constructor to create [RemittanceOutcomeBuilder]
  /// from JSON.
  factory RemittanceOutcomeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcomeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RemittanceOutcomeBuilder cannot be constructed from JSON.',
      );
    }
    return RemittanceOutcomeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// queued
  static RemittanceOutcomeBuilder queued = RemittanceOutcomeBuilder._(
    valueString: 'queued',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Queued'.toFhirStringBuilder,
  );

  /// complete
  static RemittanceOutcomeBuilder complete = RemittanceOutcomeBuilder._(
    valueString: 'complete',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Complete'.toFhirStringBuilder,
  );

  /// error
  static RemittanceOutcomeBuilder error = RemittanceOutcomeBuilder._(
    valueString: 'error',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Error'.toFhirStringBuilder,
  );

  /// partial
  static RemittanceOutcomeBuilder partial = RemittanceOutcomeBuilder._(
    valueString: 'partial',
    system: 'http://hl7.org/fhir/ValueSet/remittance-outcome'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Partial'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static RemittanceOutcomeBuilder elementOnly =
      RemittanceOutcomeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<RemittanceOutcomeBuilder> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Clones the current instance
  @override
  RemittanceOutcomeBuilder clone() => RemittanceOutcomeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  RemittanceOutcomeBuilder withElement(ElementBuilder? newElement) {
    return RemittanceOutcomeBuilder._(
        valueString: valueString, element: newElement,);
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
  RemittanceOutcomeBuilder copyWith({
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
      throw ArgumentError('Invalid input for RemittanceOutcome: $newValue');
    }
    return RemittanceOutcomeBuilder._(
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
