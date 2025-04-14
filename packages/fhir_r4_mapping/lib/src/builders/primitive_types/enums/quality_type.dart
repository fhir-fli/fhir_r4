// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QualityType
enum QualityTypeBuilderEnum {
  /// indel
  indel,

  /// snp
  snp,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QualityTypeBuilderEnum.indel:
        return 'indel';
      case QualityTypeBuilderEnum.snp:
        return 'snp';
      case QualityTypeBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QualityTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return QualityTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QualityTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'indel':
        return QualityTypeBuilderEnum.indel;
      case 'snp':
        return QualityTypeBuilderEnum.snp;
      case 'unknown':
        return QualityTypeBuilderEnum.unknown;
    }
    return null;
  }
}

/// Type for quality report.
class QualityTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  QualityTypeBuilder._({
    required super.valueString,
    this.valueEnum,
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
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = QualityTypeBuilderEnum.fromString(
      valueString,
    );
    return QualityTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [QualityTypeBuilder]
  /// with element only
  factory QualityTypeBuilder.empty() => QualityTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [QualityTypeBuilder] from JSON.
  factory QualityTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QualityTypeBuilder cannot be constructed from JSON.',
      );
    }
    return QualityTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for QualityTypeBuilder
  final QualityTypeBuilderEnum? valueEnum;

  /// indel
  static QualityTypeBuilder indel = QualityTypeBuilder._(
    valueString: 'indel',
    valueEnum: QualityTypeBuilderEnum.indel,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/quality-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'INDEL Comparison',
    ),
  );

  /// snp
  static QualityTypeBuilder snp = QualityTypeBuilder._(
    valueString: 'snp',
    valueEnum: QualityTypeBuilderEnum.snp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/quality-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SNP Comparison',
    ),
  );

  /// unknown
  static QualityTypeBuilder unknown = QualityTypeBuilder._(
    valueString: 'unknown',
    valueEnum: QualityTypeBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/quality-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'UNKNOWN Comparison',
    ),
  );

  /// For instances where an Element is present but not value
  static QualityTypeBuilder elementOnly = QualityTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<QualityTypeBuilder> values = [
    indel,
    snp,
    unknown,
  ];

  /// Returns the enum value with an element attached
  QualityTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return QualityTypeBuilder._(
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
}
