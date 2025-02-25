// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// How a property is represented when serialized.
class PropertyRepresentation extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  PropertyRepresentation._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [PropertyRepresentation] with element only
  factory PropertyRepresentation.empty() => PropertyRepresentation._('');

  /// Factory constructor to create [PropertyRepresentation] from JSON.
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
      value,
      element: element,
    );
  }

  /// xmlAttr
  static final PropertyRepresentation xmlAttr = PropertyRepresentation._(
    'xmlAttr',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XML Attribute'.toFhirString,
  );

  /// xmlText
  static final PropertyRepresentation xmlText = PropertyRepresentation._(
    'xmlText',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XML Text'.toFhirString,
  );

  /// typeAttr
  static final PropertyRepresentation typeAttr = PropertyRepresentation._(
    'typeAttr',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type Attribute'.toFhirString,
  );

  /// cdaText
  static final PropertyRepresentation cdaText = PropertyRepresentation._(
    'cdaText',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CDA Text Format'.toFhirString,
  );

  /// xhtml
  static final PropertyRepresentation xhtml = PropertyRepresentation._(
    'xhtml',
    system: 'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XHTML'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final PropertyRepresentation elementOnly =
      PropertyRepresentation._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation._(
      value,
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
  PropertyRepresentation copyWith({
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
    return PropertyRepresentation._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
