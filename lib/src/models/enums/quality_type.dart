// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Type for quality report.
class QualityType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  QualityType._(
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

  /// Create empty [QualityType] with element only
  factory QualityType.empty() => QualityType._('');

  /// Factory constructor to create [QualityType] from JSON.
  factory QualityType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QualityType cannot be constructed from JSON.',
      );
    }
    return QualityType._(
      value,
      element: element,
    );
  }

  /// indel
  static final QualityType indel = QualityType._(
    'indel',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'INDEL Comparison'.toFhirString,
  );

  /// snp
  static final QualityType snp = QualityType._(
    'snp',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SNP Comparison'.toFhirString,
  );

  /// unknown
  static final QualityType unknown = QualityType._(
    'unknown',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UNKNOWN Comparison'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final QualityType elementOnly = QualityType._('');

  /// List of all enum-like values
  static final List<QualityType> values = [
    indel,
    snp,
    unknown,
  ];

  /// Clones the current instance
  @override
  QualityType clone() => QualityType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QualityType withElement(Element? newElement) {
    return QualityType._(
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
  QualityType copyWith({
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
    return QualityType._(
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
