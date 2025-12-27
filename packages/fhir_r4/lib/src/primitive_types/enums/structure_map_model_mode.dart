part of '../primitive_types.dart';

/// Actual enum for StructureMapModelMode
enum StructureMapModelModeEnum {
  /// source
  source,

  /// queried
  queried,

  /// target
  target,

  /// produced
  produced,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapModelModeEnum.source:
        return 'source';
      case StructureMapModelModeEnum.queried:
        return 'queried';
      case StructureMapModelModeEnum.target:
        return 'target';
      case StructureMapModelModeEnum.produced:
        return 'produced';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapModelModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapModelModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapModelModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'source':
        return StructureMapModelModeEnum.source;
      case 'queried':
        return StructureMapModelModeEnum.queried;
      case 'target':
        return StructureMapModelModeEnum.target;
      case 'produced':
        return StructureMapModelModeEnum.produced;
    }
    return null;
  }
}

/// How the referenced structure is used in this mapping.
class StructureMapModelMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const StructureMapModelMode._({
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
  factory StructureMapModelMode(
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
    final valueEnum = StructureMapModelModeEnum.fromString(valueString);
    return StructureMapModelMode._(
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

  /// Factory constructor to create [StructureMapModelMode]
  /// from JSON.
  factory StructureMapModelMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StructureMapModelModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapModelMode cannot be constructed from JSON.',
      );
    }
    return StructureMapModelMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for StructureMapModelMode
  final StructureMapModelModeEnum? valueEnum;

  /// source
  static const StructureMapModelMode source = StructureMapModelMode._(
    valueString: 'source',
    valueEnum: StructureMapModelModeEnum.source,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Source Structure Definition',
    ),
  );

  /// queried
  static const StructureMapModelMode queried = StructureMapModelMode._(
    valueString: 'queried',
    valueEnum: StructureMapModelModeEnum.queried,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Queried Structure Definition',
    ),
  );

  /// target
  static const StructureMapModelMode target = StructureMapModelMode._(
    valueString: 'target',
    valueEnum: StructureMapModelModeEnum.target,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Target Structure Definition',
    ),
  );

  /// produced
  static const StructureMapModelMode produced = StructureMapModelMode._(
    valueString: 'produced',
    valueEnum: StructureMapModelModeEnum.produced,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Produced Structure Definition',
    ),
  );

  /// List of all enum-like values
  static final List<StructureMapModelMode> values = [
    source,
    queried,
    target,
    produced,
  ];

  /// Returns the enum value with an element attached
  StructureMapModelMode withElement(Element? newElement) {
    return StructureMapModelMode._(
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
  StructureMapModelMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StructureMapModelModeCopyWithImpl<StructureMapModelMode> get copyWith =>
      StructureMapModelModeCopyWithImpl<StructureMapModelMode>(
        this,
        (v) => v as StructureMapModelMode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StructureMapModelModeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StructureMapModelModeCopyWithImpl(super._value, super._then);

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
      StructureMapModelMode(
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
