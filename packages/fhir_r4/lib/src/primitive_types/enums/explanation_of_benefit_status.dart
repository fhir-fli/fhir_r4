// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A code specifying the state of the resource instance.
class ExplanationOfBenefitStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ExplanationOfBenefitStatus._({
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
  factory ExplanationOfBenefitStatus(
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
    return ExplanationOfBenefitStatus._(
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

  /// Create empty [ExplanationOfBenefitStatus] with element only
  factory ExplanationOfBenefitStatus.empty() =>
      ExplanationOfBenefitStatus._(valueString: '');

  /// Factory constructor to create [ExplanationOfBenefitStatus] from JSON.
  factory ExplanationOfBenefitStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExplanationOfBenefitStatus cannot be constructed from JSON.',
      );
    }
    return ExplanationOfBenefitStatus._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static final ExplanationOfBenefitStatus active = ExplanationOfBenefitStatus._(
    valueString: 'active',
    system:
        'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// cancelled
  static final ExplanationOfBenefitStatus cancelled =
      ExplanationOfBenefitStatus._(
    valueString: 'cancelled',
    system:
        'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// draft
  static final ExplanationOfBenefitStatus draft = ExplanationOfBenefitStatus._(
    valueString: 'draft',
    system:
        'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Draft'.toFhirString,
  );

  /// entered_in_error
  static final ExplanationOfBenefitStatus entered_in_error =
      ExplanationOfBenefitStatus._(
    valueString: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/explanationofbenefit-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered In Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ExplanationOfBenefitStatus elementOnly =
      ExplanationOfBenefitStatus._(valueString: '');

  /// List of all enum-like values
  static final List<ExplanationOfBenefitStatus> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ExplanationOfBenefitStatus clone() => ExplanationOfBenefitStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus._(
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
  ExplanationOfBenefitStatus copyWith({
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
      throw ArgumentError(
          'Invalid input for ExplanationOfBenefitStatus: $newValue');
    }
    return ExplanationOfBenefitStatus._(
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
