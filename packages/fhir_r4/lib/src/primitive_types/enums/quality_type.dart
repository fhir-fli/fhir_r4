// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QualityType
enum QualityTypeEnum {
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
      case QualityTypeEnum.indel:
        return 'indel';
      case QualityTypeEnum.snp:
        return 'snp';
      case QualityTypeEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QualityTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QualityTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QualityTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'indel':
        return QualityTypeEnum.indel;
      case 'snp':
        return QualityTypeEnum.snp;
      case 'unknown':
        return QualityTypeEnum.unknown;
    }
    return null;
  }
}

/// Type for quality report.
class QualityType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QualityType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
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
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = QualityTypeEnum.fromString(valueString);
    return QualityType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [QualityType]
  /// from JSON.
  factory QualityType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QualityTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QualityType cannot be constructed from JSON.',
      );
    }
    return QualityType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QualityType
  final QualityTypeEnum? valueEnum;

  /// indel
  static const QualityType indel = QualityType._(
    valueString: 'indel',
    valueEnum: QualityTypeEnum.indel,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/quality-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'INDEL Comparison',
    ),
  );

  /// snp
  static const QualityType snp = QualityType._(
    valueString: 'snp',
    valueEnum: QualityTypeEnum.snp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/quality-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SNP Comparison',
    ),
  );

  /// unknown
  static const QualityType unknown = QualityType._(
    valueString: 'unknown',
    valueEnum: QualityTypeEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/quality-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'UNKNOWN Comparison',
    ),
  );

  /// List of all enum-like values
  static final List<QualityType> values = [
    indel,
    snp,
    unknown,
  ];

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

  @override
  QualityType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QualityTypeCopyWithImpl<QualityType> get copyWith =>
      QualityTypeCopyWithImpl<QualityType>(
        this,
        (v) => v as QualityType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QualityTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QualityTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      QualityType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
