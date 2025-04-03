// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How an element value is interpreted when discrimination is evaluated.
class DiscriminatorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DiscriminatorType._({
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
  factory DiscriminatorType(
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
    return DiscriminatorType._(
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

  /// Create empty [DiscriminatorType] with element only
  factory DiscriminatorType.empty() => DiscriminatorType._(valueString: '');

  /// Factory constructor to create [DiscriminatorType] from JSON.
  factory DiscriminatorType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiscriminatorType cannot be constructed from JSON.',
      );
    }
    return DiscriminatorType._(
      valueString: value,
      element: element,
    );
  }

  /// value
  static final DiscriminatorType value_ = DiscriminatorType._(
    valueString: 'value',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Value'.toFhirString,
  );

  /// exists
  static final DiscriminatorType exists = DiscriminatorType._(
    valueString: 'exists',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Exists'.toFhirString,
  );

  /// pattern
  static final DiscriminatorType pattern = DiscriminatorType._(
    valueString: 'pattern',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pattern'.toFhirString,
  );

  /// type
  static final DiscriminatorType type = DiscriminatorType._(
    valueString: 'type',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type'.toFhirString,
  );

  /// profile
  static final DiscriminatorType profile = DiscriminatorType._(
    valueString: 'profile',
    system: 'http://hl7.org/fhir/ValueSet/discriminator-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Profile'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DiscriminatorType elementOnly =
      DiscriminatorType._(valueString: '');

  /// List of all enum-like values
  static final List<DiscriminatorType> values = [
    value_,
    exists,
    pattern,
    type,
    profile,
  ];

  /// Clones the current instance
  @override
  DiscriminatorType clone() => DiscriminatorType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DiscriminatorType withElement(Element? newElement) {
    return DiscriminatorType._(
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
  DiscriminatorType copyWith({
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
      throw ArgumentError('Invalid input for DiscriminatorType: $newValue');
    }
    return DiscriminatorType._(
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
