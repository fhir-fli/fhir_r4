// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a search parameter relates to the set of elements returned by
/// evaluating its xpath query.
class XPathUsageType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  XPathUsageType._({
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
  factory XPathUsageType(
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
    return XPathUsageType._(
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

  /// Create empty [XPathUsageType] with element only
  factory XPathUsageType.empty() => XPathUsageType._(validatedValue: '');

  /// Factory constructor to create [XPathUsageType] from JSON.
  factory XPathUsageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('XPathUsageType cannot be constructed from JSON.');
    }
    return XPathUsageType._(validatedValue: value, element: element);
  }

  /// normal
  static final XPathUsageType normal = XPathUsageType._(
    validatedValue: 'normal',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Normal'.toFhirString,
  );

  /// phonetic
  static final XPathUsageType phonetic = XPathUsageType._(
    validatedValue: 'phonetic',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Phonetic'.toFhirString,
  );

  /// nearby
  static final XPathUsageType nearby = XPathUsageType._(
    validatedValue: 'nearby',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Nearby'.toFhirString,
  );

  /// distance
  static final XPathUsageType distance = XPathUsageType._(
    validatedValue: 'distance',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Distance'.toFhirString,
  );

  /// other
  static final XPathUsageType other = XPathUsageType._(
    validatedValue: 'other',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Other'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final XPathUsageType elementOnly =
      XPathUsageType._(validatedValue: '');

  /// List of all enum-like values
  static final List<XPathUsageType> values = [
    normal,
    phonetic,
    nearby,
    distance,
    other,
  ];

  /// Clones the current instance
  @override
  XPathUsageType clone() => XPathUsageType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  XPathUsageType withElement(Element? newElement) {
    return XPathUsageType._(validatedValue: value, element: newElement);
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
  XPathUsageType copyWith({
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
    return XPathUsageType._(
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
