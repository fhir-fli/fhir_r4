// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a property is represented when serialized.
class PropertyRepresentation extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  PropertyRepresentation._({
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
  factory PropertyRepresentation(
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
    return PropertyRepresentation._(
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

  /// Create empty [PropertyRepresentation] with element only
  factory PropertyRepresentation.empty() =>
      PropertyRepresentation._(valueString: '');

  /// Factory constructor to create [PropertyRepresentation]
  /// from JSON.
  factory PropertyRepresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentation.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyRepresentation cannot be constructed from JSON.',
      );
    }
    return PropertyRepresentation._(
      valueString: value,
      element: element,
    );
  }

  /// xmlAttr
  static final PropertyRepresentation xmlAttr = PropertyRepresentation._(
    valueString: 'xmlAttr',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XML Attribute'.toFhirString,
  );

  /// xmlText
  static final PropertyRepresentation xmlText = PropertyRepresentation._(
    valueString: 'xmlText',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XML Text'.toFhirString,
  );

  /// typeAttr
  static final PropertyRepresentation typeAttr = PropertyRepresentation._(
    valueString: 'typeAttr',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type Attribute'.toFhirString,
  );

  /// cdaText
  static final PropertyRepresentation cdaText = PropertyRepresentation._(
    valueString: 'cdaText',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CDA Text Format'.toFhirString,
  );

  /// xhtml
  static final PropertyRepresentation xhtml = PropertyRepresentation._(
    valueString: 'xhtml',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XHTML'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final PropertyRepresentation elementOnly =
      PropertyRepresentation._(valueString: '');

  /// List of all enum-like values
  static final List<PropertyRepresentation> values = [
    xmlAttr,
    xmlText,
    typeAttr,
    cdaText,
    xhtml,
  ];

  /// Clones the current instance
  @override
  PropertyRepresentation clone() => PropertyRepresentation._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation._(
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
  PropertyRepresentation copyWith({
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
        'Invalid input for PropertyRepresentation: $newValue',
      );
    }
    return PropertyRepresentation._(
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
