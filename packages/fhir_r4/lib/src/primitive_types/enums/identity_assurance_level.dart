// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The level of confidence that this link represents the same actual
/// person, based on NIST Authentication Levels.
class IdentityAssuranceLevel extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  IdentityAssuranceLevel._({
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
  factory IdentityAssuranceLevel(
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
    return IdentityAssuranceLevel._(
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

  /// Create empty [IdentityAssuranceLevel] with element only
  factory IdentityAssuranceLevel.empty() =>
      IdentityAssuranceLevel._(valueString: '');

  /// Factory constructor to create [IdentityAssuranceLevel]
  /// from JSON.
  factory IdentityAssuranceLevel.fromJson(
    Map<String, dynamic> json,
  ) {
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
    return IdentityAssuranceLevel._(
      valueString: value,
      element: element,
    );
  }

  /// level1
  static final IdentityAssuranceLevel level1 = IdentityAssuranceLevel._(
    valueString: 'level1',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 1'.toFhirString,
  );

  /// level2
  static final IdentityAssuranceLevel level2 = IdentityAssuranceLevel._(
    valueString: 'level2',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 2'.toFhirString,
  );

  /// level3
  static final IdentityAssuranceLevel level3 = IdentityAssuranceLevel._(
    valueString: 'level3',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 3'.toFhirString,
  );

  /// level4
  static final IdentityAssuranceLevel level4 = IdentityAssuranceLevel._(
    valueString: 'level4',
    system: 'http://hl7.org/fhir/ValueSet/identity-assuranceLevel'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Level 4'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final IdentityAssuranceLevel elementOnly =
      IdentityAssuranceLevel._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel._(
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
  IdentityAssuranceLevel copyWith({
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
        'Invalid input for IdentityAssuranceLevel: $newValue',
      );
    }
    return IdentityAssuranceLevel._(
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
