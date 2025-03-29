// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Whether a reference needs to be version specific or version
/// independent, or whether either can be used.
class ReferenceVersionRules extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ReferenceVersionRules._({
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
  factory ReferenceVersionRules(
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
    return ReferenceVersionRules._(
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

  /// Create empty [ReferenceVersionRules] with element only
  factory ReferenceVersionRules.empty() =>
      ReferenceVersionRules._(validatedValue: '');

  /// Factory constructor to create [ReferenceVersionRules] from JSON.
  factory ReferenceVersionRules.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferenceVersionRules cannot be constructed from JSON.',
      );
    }
    return ReferenceVersionRules._(
      validatedValue: value,
      element: element,
    );
  }

  /// either
  static final ReferenceVersionRules either = ReferenceVersionRules._(
    validatedValue: 'either',
    system: 'http://hl7.org/fhir/ValueSet/reference-version-rules'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Either Specific or independent'.toFhirString,
  );

  /// independent
  static final ReferenceVersionRules independent = ReferenceVersionRules._(
    validatedValue: 'independent',
    system: 'http://hl7.org/fhir/ValueSet/reference-version-rules'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Version independent'.toFhirString,
  );

  /// specific
  static final ReferenceVersionRules specific = ReferenceVersionRules._(
    validatedValue: 'specific',
    system: 'http://hl7.org/fhir/ValueSet/reference-version-rules'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Version Specific'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ReferenceVersionRules elementOnly =
      ReferenceVersionRules._(validatedValue: '');

  /// List of all enum-like values
  static final List<ReferenceVersionRules> values = [
    either,
    independent,
    specific,
  ];

  /// Clones the current instance
  @override
  ReferenceVersionRules clone() => ReferenceVersionRules._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules._(
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
  ReferenceVersionRules copyWith({
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
    return ReferenceVersionRules._(
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
