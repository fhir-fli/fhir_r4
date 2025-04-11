// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ReportRelationshipType
enum ReportRelationshipTypeEnum {
  /// replaces
  replaces,

  /// amends
  amends,

  /// appends
  appends,

  /// transforms
  transforms,

  /// replacedWith
  replacedWith,

  /// amendedWith
  amendedWith,

  /// appendedWith
  appendedWith,

  /// transformedWith
  transformedWith,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ReportRelationshipTypeEnum.replaces:
        return 'replaces';
      case ReportRelationshipTypeEnum.amends:
        return 'amends';
      case ReportRelationshipTypeEnum.appends:
        return 'appends';
      case ReportRelationshipTypeEnum.transforms:
        return 'transforms';
      case ReportRelationshipTypeEnum.replacedWith:
        return 'replacedWith';
      case ReportRelationshipTypeEnum.amendedWith:
        return 'amendedWith';
      case ReportRelationshipTypeEnum.appendedWith:
        return 'appendedWith';
      case ReportRelationshipTypeEnum.transformedWith:
        return 'transformedWith';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ReportRelationshipTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ReportRelationshipTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ReportRelationshipTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'replaces':
        return ReportRelationshipTypeEnum.replaces;
      case 'amends':
        return ReportRelationshipTypeEnum.amends;
      case 'appends':
        return ReportRelationshipTypeEnum.appends;
      case 'transforms':
        return ReportRelationshipTypeEnum.transforms;
      case 'replacedWith':
        return ReportRelationshipTypeEnum.replacedWith;
      case 'amendedWith':
        return ReportRelationshipTypeEnum.amendedWith;
      case 'appendedWith':
        return ReportRelationshipTypeEnum.appendedWith;
      case 'transformedWith':
        return ReportRelationshipTypeEnum.transformedWith;
    }
    return null;
  }
}

/// The type of relationship between reports.
class ReportRelationshipType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ReportRelationshipType._({
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
  factory ReportRelationshipType(
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
    final valueEnum = ReportRelationshipTypeEnum.fromString(valueString);
    return ReportRelationshipType._(
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

  /// Factory constructor to create [ReportRelationshipType]
  /// from JSON.
  factory ReportRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ReportRelationshipTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportRelationshipType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReportRelationshipType cannot be constructed from JSON.',
      );
    }
    return ReportRelationshipType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ReportRelationshipType
  final ReportRelationshipTypeEnum? valueEnum;

  /// replaces
  static const ReportRelationshipType replaces = ReportRelationshipType._(
    valueString: 'replaces',
    valueEnum: ReportRelationshipTypeEnum.replaces,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Replaces',
    ),
  );

  /// amends
  static const ReportRelationshipType amends = ReportRelationshipType._(
    valueString: 'amends',
    valueEnum: ReportRelationshipTypeEnum.amends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Amends',
    ),
  );

  /// appends
  static const ReportRelationshipType appends = ReportRelationshipType._(
    valueString: 'appends',
    valueEnum: ReportRelationshipTypeEnum.appends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appends',
    ),
  );

  /// transforms
  static const ReportRelationshipType transforms = ReportRelationshipType._(
    valueString: 'transforms',
    valueEnum: ReportRelationshipTypeEnum.transforms,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Transforms',
    ),
  );

  /// replacedWith
  static const ReportRelationshipType replacedWith = ReportRelationshipType._(
    valueString: 'replacedWith',
    valueEnum: ReportRelationshipTypeEnum.replacedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Replaced With',
    ),
  );

  /// amendedWith
  static const ReportRelationshipType amendedWith = ReportRelationshipType._(
    valueString: 'amendedWith',
    valueEnum: ReportRelationshipTypeEnum.amendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Amended With',
    ),
  );

  /// appendedWith
  static const ReportRelationshipType appendedWith = ReportRelationshipType._(
    valueString: 'appendedWith',
    valueEnum: ReportRelationshipTypeEnum.appendedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appended With',
    ),
  );

  /// transformedWith
  static const ReportRelationshipType transformedWith =
      ReportRelationshipType._(
    valueString: 'transformedWith',
    valueEnum: ReportRelationshipTypeEnum.transformedWith,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Transformed With',
    ),
  );

  /// List of all enum-like values
  static final List<ReportRelationshipType> values = [
    replaces,
    amends,
    appends,
    transforms,
    replacedWith,
    amendedWith,
    appendedWith,
    transformedWith,
  ];

  /// Returns the enum value with an element attached
  ReportRelationshipType withElement(Element? newElement) {
    return ReportRelationshipType._(
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
  ReportRelationshipType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ReportRelationshipTypeCopyWithImpl<ReportRelationshipType> get copyWith =>
      ReportRelationshipTypeCopyWithImpl<ReportRelationshipType>(
        this,
        (v) => v as ReportRelationshipType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ReportRelationshipTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ReportRelationshipTypeCopyWithImpl(super._value, super._then);

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
      ReportRelationshipType(
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
