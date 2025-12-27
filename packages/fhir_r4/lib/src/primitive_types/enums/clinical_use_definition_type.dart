part of '../primitive_types.dart';

/// Actual enum for ClinicalUseDefinitionType
enum ClinicalUseDefinitionTypeEnum {
  /// indication
  indication,

  /// contraindication
  contraindication,

  /// interaction
  interaction,

  /// undesirable-effect
  undesirableEffect,

  /// warning
  warning,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ClinicalUseDefinitionTypeEnum.indication:
        return 'indication';
      case ClinicalUseDefinitionTypeEnum.contraindication:
        return 'contraindication';
      case ClinicalUseDefinitionTypeEnum.interaction:
        return 'interaction';
      case ClinicalUseDefinitionTypeEnum.undesirableEffect:
        return 'undesirable-effect';
      case ClinicalUseDefinitionTypeEnum.warning:
        return 'warning';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ClinicalUseDefinitionTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ClinicalUseDefinitionTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ClinicalUseDefinitionTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'indication':
        return ClinicalUseDefinitionTypeEnum.indication;
      case 'contraindication':
        return ClinicalUseDefinitionTypeEnum.contraindication;
      case 'interaction':
        return ClinicalUseDefinitionTypeEnum.interaction;
      case 'undesirable-effect':
        return ClinicalUseDefinitionTypeEnum.undesirableEffect;
      case 'warning':
        return ClinicalUseDefinitionTypeEnum.warning;
    }
    return null;
  }
}

/// Overall defining type of this clinical use definition.
class ClinicalUseDefinitionType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ClinicalUseDefinitionType._({
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
  factory ClinicalUseDefinitionType(
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
    final valueEnum = ClinicalUseDefinitionTypeEnum.fromString(valueString);
    return ClinicalUseDefinitionType._(
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

  /// Factory constructor to create [ClinicalUseDefinitionType]
  /// from JSON.
  factory ClinicalUseDefinitionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ClinicalUseDefinitionTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalUseDefinitionType cannot be constructed from JSON.',
      );
    }
    return ClinicalUseDefinitionType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ClinicalUseDefinitionType
  final ClinicalUseDefinitionTypeEnum? valueEnum;

  /// indication
  static const ClinicalUseDefinitionType indication =
      ClinicalUseDefinitionType._(
    valueString: 'indication',
    valueEnum: ClinicalUseDefinitionTypeEnum.indication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Indication',
    ),
  );

  /// contraindication
  static const ClinicalUseDefinitionType contraindication =
      ClinicalUseDefinitionType._(
    valueString: 'contraindication',
    valueEnum: ClinicalUseDefinitionTypeEnum.contraindication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Contraindication',
    ),
  );

  /// interaction
  static const ClinicalUseDefinitionType interaction =
      ClinicalUseDefinitionType._(
    valueString: 'interaction',
    valueEnum: ClinicalUseDefinitionTypeEnum.interaction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Interaction',
    ),
  );

  /// undesirable_effect
  static const ClinicalUseDefinitionType undesirableEffect =
      ClinicalUseDefinitionType._(
    valueString: 'undesirable-effect',
    valueEnum: ClinicalUseDefinitionTypeEnum.undesirableEffect,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Undesirable Effect',
    ),
  );

  /// warning
  static const ClinicalUseDefinitionType warning = ClinicalUseDefinitionType._(
    valueString: 'warning',
    valueEnum: ClinicalUseDefinitionTypeEnum.warning,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Warning',
    ),
  );

  /// List of all enum-like values
  static final List<ClinicalUseDefinitionType> values = [
    indication,
    contraindication,
    interaction,
    undesirableEffect,
    warning,
  ];

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType._(
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
  ClinicalUseDefinitionType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ClinicalUseDefinitionTypeCopyWithImpl<ClinicalUseDefinitionType>
      get copyWith =>
          ClinicalUseDefinitionTypeCopyWithImpl<ClinicalUseDefinitionType>(
            this,
            (v) => v as ClinicalUseDefinitionType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ClinicalUseDefinitionTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ClinicalUseDefinitionTypeCopyWithImpl(super._value, super._then);

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
      ClinicalUseDefinitionType(
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
