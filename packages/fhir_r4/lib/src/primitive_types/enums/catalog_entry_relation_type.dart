// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CatalogEntryRelationType
enum CatalogEntryRelationTypeEnum {
  /// triggers
  triggers,

  /// is-replaced-by
  isReplacedBy,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CatalogEntryRelationTypeEnum.triggers:
        return 'triggers';
      case CatalogEntryRelationTypeEnum.isReplacedBy:
        return 'is-replaced-by';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CatalogEntryRelationTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CatalogEntryRelationTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CatalogEntryRelationTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'triggers':
        return CatalogEntryRelationTypeEnum.triggers;
      case 'is-replaced-by':
        return CatalogEntryRelationTypeEnum.isReplacedBy;
    }
    return null;
  }
}

/// The type of relations between entries.
class CatalogEntryRelationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CatalogEntryRelationType._({
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
  factory CatalogEntryRelationType(
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
    final valueEnum = CatalogEntryRelationTypeEnum.fromString(valueString);
    return CatalogEntryRelationType._(
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

  /// Factory constructor to create [CatalogEntryRelationType]
  /// from JSON.
  factory CatalogEntryRelationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CatalogEntryRelationTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CatalogEntryRelationType cannot be constructed from JSON.',
      );
    }
    return CatalogEntryRelationType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CatalogEntryRelationType
  final CatalogEntryRelationTypeEnum? valueEnum;

  /// triggers
  static const CatalogEntryRelationType triggers = CatalogEntryRelationType._(
    valueString: 'triggers',
    valueEnum: CatalogEntryRelationTypeEnum.triggers,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Triggers',
    ),
  );

  /// is_replaced_by
  static const CatalogEntryRelationType isReplacedBy =
      CatalogEntryRelationType._(
    valueString: 'is-replaced-by',
    valueEnum: CatalogEntryRelationTypeEnum.isReplacedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Replaced By',
    ),
  );

  /// List of all enum-like values
  static final List<CatalogEntryRelationType> values = [
    triggers,
    isReplacedBy,
  ];

  /// Returns the enum value with an element attached
  CatalogEntryRelationType withElement(Element? newElement) {
    return CatalogEntryRelationType._(
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
  CatalogEntryRelationType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CatalogEntryRelationTypeCopyWithImpl<CatalogEntryRelationType> get copyWith =>
      CatalogEntryRelationTypeCopyWithImpl<CatalogEntryRelationType>(
        this,
        (v) => v as CatalogEntryRelationType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CatalogEntryRelationTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CatalogEntryRelationTypeCopyWithImpl(super._value, super._then);

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
      CatalogEntryRelationType(
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
