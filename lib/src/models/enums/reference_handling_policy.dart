// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// A set of flags that defines how references are supported.
class ReferenceHandlingPolicy extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ReferenceHandlingPolicy._(
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

  /// Create empty [ReferenceHandlingPolicy] with element only
  factory ReferenceHandlingPolicy.empty() => ReferenceHandlingPolicy._('');

  /// Factory constructor to create [ReferenceHandlingPolicy] from JSON.
  factory ReferenceHandlingPolicy.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceHandlingPolicy.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferenceHandlingPolicy cannot be constructed from JSON.',
      );
    }
    return ReferenceHandlingPolicy._(
      value,
      element: element,
    );
  }

  /// literal
  static final ReferenceHandlingPolicy literal = ReferenceHandlingPolicy._(
    'literal',
    system: 'http://hl7.org/fhir/ValueSet/reference-handling-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Literal References'.toFhirString,
  );

  /// logical
  static final ReferenceHandlingPolicy logical = ReferenceHandlingPolicy._(
    'logical',
    system: 'http://hl7.org/fhir/ValueSet/reference-handling-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Logical References'.toFhirString,
  );

  /// resolves
  static final ReferenceHandlingPolicy resolves = ReferenceHandlingPolicy._(
    'resolves',
    system: 'http://hl7.org/fhir/ValueSet/reference-handling-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resolves References'.toFhirString,
  );

  /// enforced
  static final ReferenceHandlingPolicy enforced = ReferenceHandlingPolicy._(
    'enforced',
    system: 'http://hl7.org/fhir/ValueSet/reference-handling-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reference Integrity Enforced'.toFhirString,
  );

  /// local
  static final ReferenceHandlingPolicy local = ReferenceHandlingPolicy._(
    'local',
    system: 'http://hl7.org/fhir/ValueSet/reference-handling-policy'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Local References Only'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ReferenceHandlingPolicy elementOnly =
      ReferenceHandlingPolicy._('');

  /// List of all enum-like values
  static final List<ReferenceHandlingPolicy> values = [
    literal,
    logical,
    resolves,
    enforced,
    local,
  ];

  /// Clones the current instance
  @override
  ReferenceHandlingPolicy clone() => ReferenceHandlingPolicy._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ReferenceHandlingPolicy withElement(Element? newElement) {
    return ReferenceHandlingPolicy._(
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
  ReferenceHandlingPolicy copyWith({
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
    return ReferenceHandlingPolicy._(
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
