// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// How to interpret the context.
class StructureMapContextType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  StructureMapContextType._(
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

  /// Create empty [StructureMapContextType] with element only
  factory StructureMapContextType.empty() => StructureMapContextType._('');

  /// Factory constructor to create [StructureMapContextType] from JSON.
  factory StructureMapContextType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapContextType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapContextType cannot be constructed from JSON.',
      );
    }
    return StructureMapContextType._(
      value,
      element: element,
    );
  }

  /// type
  static final StructureMapContextType type = StructureMapContextType._(
    'type',
    system: 'http://hl7.org/fhir/ValueSet/map-context-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Type'.toFhirString,
  );

  /// variable
  static final StructureMapContextType variable = StructureMapContextType._(
    'variable',
    system: 'http://hl7.org/fhir/ValueSet/map-context-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Variable'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final StructureMapContextType elementOnly =
      StructureMapContextType._('');

  /// List of all enum-like values
  static final List<StructureMapContextType> values = [
    type,
    variable,
  ];

  /// Clones the current instance
  @override
  StructureMapContextType clone() => StructureMapContextType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapContextType withElement(Element? newElement) {
    return StructureMapContextType._(
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
  StructureMapContextType copyWith({
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
    return StructureMapContextType._(
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
