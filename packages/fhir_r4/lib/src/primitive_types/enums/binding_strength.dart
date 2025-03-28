// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indication of the degree of conformance expectations associated with a
/// binding.
class BindingStrength extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  BindingStrength._({
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
  factory BindingStrength(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return BindingStrength._(
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

  /// Create empty [BindingStrength] with element only
  factory BindingStrength.empty() => BindingStrength._(validatedValue: '');

  /// Factory constructor to create [BindingStrength] from JSON.
  factory BindingStrength.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BindingStrength.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BindingStrength cannot be constructed from JSON.',
      );
    }
    return BindingStrength._(
      validatedValue: value,
      element: element,
    );
  }

  /// required_
  static final BindingStrength required_ = BindingStrength._(
    validatedValue: 'required',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Required'.toFhirString,
  );

  /// extensible
  static final BindingStrength extensible = BindingStrength._(
    validatedValue: 'extensible',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Extensible'.toFhirString,
  );

  /// preferred
  static final BindingStrength preferred = BindingStrength._(
    validatedValue: 'preferred',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preferred'.toFhirString,
  );

  /// example
  static final BindingStrength example = BindingStrength._(
    validatedValue: 'example',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Example'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final BindingStrength elementOnly =
      BindingStrength._(validatedValue: '');

  /// List of all enum-like values
  static final List<BindingStrength> values = [
    required_,
    extensible,
    preferred,
    example,
  ];

  /// Clones the current instance
  @override
  BindingStrength clone() => BindingStrength._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BindingStrength withElement(Element? newElement) {
    return BindingStrength._(validatedValue: value, element: newElement);
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
  BindingStrength copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BindingStrength._(
      validatedValue: newValue ?? value,
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
