// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The level of confidence that this link represents the same actual
/// person, based on NIST Authentication Levels.
class IdentityAssuranceLevel extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  IdentityAssuranceLevel._({
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
  factory IdentityAssuranceLevel(
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
    return IdentityAssuranceLevel._(
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

  /// Create empty [IdentityAssuranceLevel] with element only
  factory IdentityAssuranceLevel.empty() =>
      IdentityAssuranceLevel._(validatedValue: '');

  /// Factory constructor to create [IdentityAssuranceLevel] from JSON.
  factory IdentityAssuranceLevel.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevel.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentityAssuranceLevel cannot be constructed from JSON.',
      );
    }
    return IdentityAssuranceLevel._(validatedValue: value, element: element);
  }

  /// level1
  static final IdentityAssuranceLevel level1 = IdentityAssuranceLevel._(
    validatedValue: 'level1',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 1'.toFhirString,
  );

  /// level2
  static final IdentityAssuranceLevel level2 = IdentityAssuranceLevel._(
    validatedValue: 'level2',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 2'.toFhirString,
  );

  /// level3
  static final IdentityAssuranceLevel level3 = IdentityAssuranceLevel._(
    validatedValue: 'level3',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 3'.toFhirString,
  );

  /// level4
  static final IdentityAssuranceLevel level4 = IdentityAssuranceLevel._(
    validatedValue: 'level4',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 4'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final IdentityAssuranceLevel elementOnly =
      IdentityAssuranceLevel._(validatedValue: '');

  /// List of all enum-like values
  static final List<IdentityAssuranceLevel> values = [
    level1,
    level2,
    level3,
    level4,
  ];

  /// Clones the current instance
  @override
  IdentityAssuranceLevel clone() => IdentityAssuranceLevel._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel._(validatedValue: value, element: newElement);
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
  IdentityAssuranceLevel copyWith({
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
    return IdentityAssuranceLevel._(
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
