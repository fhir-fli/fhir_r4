// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Degree of preference of a type of conditioned specimen.
class SpecimenContainedPreference extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SpecimenContainedPreference._({
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
  factory SpecimenContainedPreference(
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
    return SpecimenContainedPreference._(
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

  /// Create empty [SpecimenContainedPreference] with element only
  factory SpecimenContainedPreference.empty() =>
      SpecimenContainedPreference._(validatedValue: '');

  /// Factory constructor to create [SpecimenContainedPreference] from JSON.
  factory SpecimenContainedPreference.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreference.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenContainedPreference cannot be constructed from JSON.',
      );
    }
    return SpecimenContainedPreference._(
      validatedValue: value,
      element: element,
    );
  }

  /// preferred
  static final SpecimenContainedPreference preferred =
      SpecimenContainedPreference._(
    validatedValue: 'preferred',
    system:
        'http://hl7.org/fhir/ValueSet/specimen-contained-preference'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preferred'.toFhirString,
  );

  /// alternate
  static final SpecimenContainedPreference alternate =
      SpecimenContainedPreference._(
    validatedValue: 'alternate',
    system:
        'http://hl7.org/fhir/ValueSet/specimen-contained-preference'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Alternate'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SpecimenContainedPreference elementOnly =
      SpecimenContainedPreference._(validatedValue: '');

  /// List of all enum-like values
  static final List<SpecimenContainedPreference> values = [
    preferred,
    alternate,
  ];

  /// Clones the current instance
  @override
  SpecimenContainedPreference clone() => SpecimenContainedPreference._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SpecimenContainedPreference withElement(Element? newElement) {
    return SpecimenContainedPreference._(
      validatedValue: value,
      element: newElement,
    );
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
  SpecimenContainedPreference copyWith({
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
    return SpecimenContainedPreference._(
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
