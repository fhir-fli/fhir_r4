// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type for quality report.
class QualityType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  QualityType._({
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
  factory QualityType(
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
    return QualityType._(
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

  /// Create empty [QualityType] with element only
  factory QualityType.empty() => QualityType._(valueString: '');

  /// Factory constructor to create [QualityType]
  /// from JSON.
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
      valueString: value,
      element: element,
    );
  }

  /// indel
  static final QualityType indel = QualityType._(
    valueString: 'indel',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'INDEL Comparison'.toFhirString,
  );

  /// snp
  static final QualityType snp = QualityType._(
    valueString: 'snp',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SNP Comparison'.toFhirString,
  );

  /// unknown
  static final QualityType unknown = QualityType._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UNKNOWN Comparison'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final QualityType elementOnly = QualityType._(valueString: '');

  /// List of all enum-like values
  static final List<QualityType> values = [
    indel,
    snp,
    unknown,
  ];

  /// Clones the current instance
  @override
  QualityType clone() => QualityType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QualityType withElement(Element? newElement) {
    return QualityType._(
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
  QualityType copyWith({
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
        'Invalid input for QualityType: $newValue',
      );
    }
    return QualityType._(
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
