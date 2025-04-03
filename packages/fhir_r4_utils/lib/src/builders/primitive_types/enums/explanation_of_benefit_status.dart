// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code specifying the state of the resource instance.
class ExplanationOfBenefitStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExplanationOfBenefitStatusBuilder._({
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
  factory ExplanationOfBenefitStatusBuilder(
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
    return ExplanationOfBenefitStatusBuilder._(
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

  /// Create empty [ExplanationOfBenefitStatusBuilder] with element only
  factory ExplanationOfBenefitStatusBuilder.empty() =>
      ExplanationOfBenefitStatusBuilder._(valueString: '');

  /// Factory constructor to create [ExplanationOfBenefitStatusBuilder]
  /// from JSON.
  factory ExplanationOfBenefitStatusBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExplanationOfBenefitStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ExplanationOfBenefitStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static ExplanationOfBenefitStatusBuilder active =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// cancelled
  static ExplanationOfBenefitStatusBuilder cancelled =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// draft
  static ExplanationOfBenefitStatusBuilder draft =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Draft'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ExplanationOfBenefitStatusBuilder entered_in_error =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered In Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ExplanationOfBenefitStatusBuilder elementOnly =
      ExplanationOfBenefitStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ExplanationOfBenefitStatusBuilder> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ExplanationOfBenefitStatusBuilder clone() =>
      ExplanationOfBenefitStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatusBuilder withElement(ElementBuilder? newElement) {
    return ExplanationOfBenefitStatusBuilder._(
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
  ExplanationOfBenefitStatusBuilder copyWith({
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
          'Invalid input for ExplanationOfBenefitStatus: $newValue');
    }
    return ExplanationOfBenefitStatusBuilder._(
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
