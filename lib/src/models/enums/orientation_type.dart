// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Type for orientation.
class OrientationType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  OrientationType._(
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

  /// Create empty [OrientationType] with element only
  factory OrientationType.empty() => OrientationType._('');

  /// Factory constructor to create [OrientationType] from JSON.
  factory OrientationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OrientationType cannot be constructed from JSON.',
      );
    }
    return OrientationType._(
      value,
      element: element,
    );
  }

  /// sense
  static final OrientationType sense = OrientationType._(
    'sense',
    system: 'http://hl7.org/fhir/ValueSet/orientation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sense orientation of referenceSeq'.toFhirString,
  );

  /// antisense
  static final OrientationType antisense = OrientationType._(
    'antisense',
    system: 'http://hl7.org/fhir/ValueSet/orientation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Antisense orientation of referenceSeq'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final OrientationType elementOnly = OrientationType._('');

  /// List of all enum-like values
  static final List<OrientationType> values = [
    sense,
    antisense,
  ];

  /// Clones the current instance
  @override
  OrientationType clone() => OrientationType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  OrientationType withElement(Element? newElement) {
    return OrientationType._(
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
  OrientationType copyWith({
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
    return OrientationType._(
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
