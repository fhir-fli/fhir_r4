// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the potential degree of impact of the identified issue on the
/// patient.
class DetectedIssueSeverity extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  DetectedIssueSeverity._(
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

  /// Create empty [DetectedIssueSeverity] with element only
  factory DetectedIssueSeverity.empty() => DetectedIssueSeverity._('');

  /// Factory constructor to create [DetectedIssueSeverity] from JSON.
  factory DetectedIssueSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DetectedIssueSeverity cannot be constructed from JSON.',
      );
    }
    return DetectedIssueSeverity._(
      value,
      element: element,
    );
  }

  /// high
  static final DetectedIssueSeverity high = DetectedIssueSeverity._(
    'high',
    system: 'http://hl7.org/fhir/ValueSet/detectedissue-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'High'.toFhirString,
  );

  /// moderate
  static final DetectedIssueSeverity moderate = DetectedIssueSeverity._(
    'moderate',
    system: 'http://hl7.org/fhir/ValueSet/detectedissue-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Moderate'.toFhirString,
  );

  /// low
  static final DetectedIssueSeverity low = DetectedIssueSeverity._(
    'low',
    system: 'http://hl7.org/fhir/ValueSet/detectedissue-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Low'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final DetectedIssueSeverity elementOnly = DetectedIssueSeverity._('');

  /// List of all enum-like values
  static final List<DetectedIssueSeverity> values = [
    high,
    moderate,
    low,
  ];

  /// Clones the current instance
  @override
  DetectedIssueSeverity clone() => DetectedIssueSeverity._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity._(
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
  DetectedIssueSeverity copyWith({
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
    return DetectedIssueSeverity._(
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
