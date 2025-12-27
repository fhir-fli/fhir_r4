part of '../primitive_types.dart';

/// Actual enum for StructureMapInputMode
enum StructureMapInputModeEnum {
  /// source
  source,

  /// target
  target,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapInputModeEnum.source:
        return 'source';
      case StructureMapInputModeEnum.target:
        return 'target';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapInputModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapInputModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapInputModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'source':
        return StructureMapInputModeEnum.source;
      case 'target':
        return StructureMapInputModeEnum.target;
    }
    return null;
  }
}

/// Mode for this instance of data.
class StructureMapInputMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const StructureMapInputMode._({
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
  factory StructureMapInputMode(
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
    final valueEnum = StructureMapInputModeEnum.fromString(valueString);
    return StructureMapInputMode._(
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

  /// Factory constructor to create [StructureMapInputMode]
  /// from JSON.
  factory StructureMapInputMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StructureMapInputModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapInputMode cannot be constructed from JSON.',
      );
    }
    return StructureMapInputMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for StructureMapInputMode
  final StructureMapInputModeEnum? valueEnum;

  /// source
  static const StructureMapInputMode source = StructureMapInputMode._(
    valueString: 'source',
    valueEnum: StructureMapInputModeEnum.source,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-input-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Source Instance',
    ),
  );

  /// target
  static const StructureMapInputMode target = StructureMapInputMode._(
    valueString: 'target',
    valueEnum: StructureMapInputModeEnum.target,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-input-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Target Instance',
    ),
  );

  /// List of all enum-like values
  static final List<StructureMapInputMode> values = [
    source,
    target,
  ];

  /// Returns the enum value with an element attached
  StructureMapInputMode withElement(Element? newElement) {
    return StructureMapInputMode._(
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
  StructureMapInputMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StructureMapInputModeCopyWithImpl<StructureMapInputMode> get copyWith =>
      StructureMapInputModeCopyWithImpl<StructureMapInputMode>(
        this,
        (v) => v as StructureMapInputMode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StructureMapInputModeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StructureMapInputModeCopyWithImpl(super._value, super._then);

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
      StructureMapInputMode(
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
