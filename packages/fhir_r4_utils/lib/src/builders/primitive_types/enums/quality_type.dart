// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type for quality report.
class QualityTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QualityTypeBuilder._({
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
  factory QualityTypeBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return QualityTypeBuilder._(
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

  /// Create empty [QualityTypeBuilder] with element only
  factory QualityTypeBuilder.empty() =>
      QualityTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [QualityTypeBuilder]
  /// from JSON.
  factory QualityTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QualityTypeBuilder cannot be constructed from JSON.',
      );
    }
    return QualityTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// indel
  static QualityTypeBuilder indel = QualityTypeBuilder._(
    validatedValue: 'indel',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'INDEL Comparison'.toFhirStringBuilder,
  );

  /// snp
  static QualityTypeBuilder snp = QualityTypeBuilder._(
    validatedValue: 'snp',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SNP Comparison'.toFhirStringBuilder,
  );

  /// unknown
  static QualityTypeBuilder unknown = QualityTypeBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/quality-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'UNKNOWN Comparison'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static QualityTypeBuilder elementOnly =
      QualityTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<QualityTypeBuilder> values = [
    indel,
    snp,
    unknown,
  ];

  /// Clones the current instance
  @override
  QualityTypeBuilder clone() => QualityTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  QualityTypeBuilder withElement(ElementBuilder? newElement) {
    return QualityTypeBuilder._(validatedValue: value, element: newElement);
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
  QualityTypeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return QualityTypeBuilder._(
      validatedValue: newValue ?? value,
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
