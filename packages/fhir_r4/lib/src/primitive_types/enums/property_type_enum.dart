// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of a property value.
class PropertyTypeEnum extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  PropertyTypeEnum._({
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
  factory PropertyTypeEnum(
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
    return PropertyTypeEnum._(
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

  /// Create empty [PropertyTypeEnum] with element only
  factory PropertyTypeEnum.empty() => PropertyTypeEnum._(validatedValue: '');

  /// Factory constructor to create [PropertyTypeEnum] from JSON.
  factory PropertyTypeEnum.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnum.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyTypeEnum cannot be constructed from JSON.',
      );
    }
    return PropertyTypeEnum._(
      validatedValue: value,
      element: element,
    );
  }

  /// code
  static final PropertyTypeEnum code = PropertyTypeEnum._(
    validatedValue: 'code',
    system: 'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'code (internal reference)'.toFhirString,
  );

  /// Coding
  static final PropertyTypeEnum Coding = PropertyTypeEnum._(
    validatedValue: 'Coding',
    system: 'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Coding (external reference)'.toFhirString,
  );

  /// string
  static final PropertyTypeEnum string = PropertyTypeEnum._(
    validatedValue: 'string',
    system: 'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'string'.toFhirString,
  );

  /// integer
  static final PropertyTypeEnum integer = PropertyTypeEnum._(
    validatedValue: 'integer',
    system: 'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'integer'.toFhirString,
  );

  /// boolean
  static final PropertyTypeEnum boolean = PropertyTypeEnum._(
    validatedValue: 'boolean',
    system: 'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'boolean'.toFhirString,
  );

  /// dateTime
  static final PropertyTypeEnum dateTime = PropertyTypeEnum._(
    validatedValue: 'dateTime',
    system: 'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dateTime'.toFhirString,
  );

  /// decimal
  static final PropertyTypeEnum decimal = PropertyTypeEnum._(
    validatedValue: 'decimal',
    system: 'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'decimal'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final PropertyTypeEnum elementOnly =
      PropertyTypeEnum._(validatedValue: '');

  /// List of all enum-like values
  static final List<PropertyTypeEnum> values = [
    code,
    Coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
  ];

  /// Clones the current instance
  @override
  PropertyTypeEnum clone() => PropertyTypeEnum._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PropertyTypeEnum withElement(Element? newElement) {
    return PropertyTypeEnum._(
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
  PropertyTypeEnum copyWith({
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
    return PropertyTypeEnum._(
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
