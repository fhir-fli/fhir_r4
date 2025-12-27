part of '../primitive_types.dart';

/// Actual enum for ConceptMapGroupUnmappedMode
enum ConceptMapGroupUnmappedModeEnum {
  /// provided
  provided,

  /// fixed
  fixed,

  /// other-map
  otherMap,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapGroupUnmappedModeEnum.provided:
        return 'provided';
      case ConceptMapGroupUnmappedModeEnum.fixed:
        return 'fixed';
      case ConceptMapGroupUnmappedModeEnum.otherMap:
        return 'other-map';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapGroupUnmappedModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapGroupUnmappedModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapGroupUnmappedModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'provided':
        return ConceptMapGroupUnmappedModeEnum.provided;
      case 'fixed':
        return ConceptMapGroupUnmappedModeEnum.fixed;
      case 'other-map':
        return ConceptMapGroupUnmappedModeEnum.otherMap;
    }
    return null;
  }
}

/// Defines which action to take if there is no match in the group.
class ConceptMapGroupUnmappedMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConceptMapGroupUnmappedMode._({
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
  factory ConceptMapGroupUnmappedMode(
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
    final valueEnum = ConceptMapGroupUnmappedModeEnum.fromString(valueString);
    return ConceptMapGroupUnmappedMode._(
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

  /// Factory constructor to create [ConceptMapGroupUnmappedMode]
  /// from JSON.
  factory ConceptMapGroupUnmappedMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConceptMapGroupUnmappedModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapGroupUnmappedMode cannot be constructed from JSON.',
      );
    }
    return ConceptMapGroupUnmappedMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConceptMapGroupUnmappedMode
  final ConceptMapGroupUnmappedModeEnum? valueEnum;

  /// provided
  static const ConceptMapGroupUnmappedMode provided =
      ConceptMapGroupUnmappedMode._(
    valueString: 'provided',
    valueEnum: ConceptMapGroupUnmappedModeEnum.provided,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Provided Code',
    ),
  );

  /// fixed
  static const ConceptMapGroupUnmappedMode fixed =
      ConceptMapGroupUnmappedMode._(
    valueString: 'fixed',
    valueEnum: ConceptMapGroupUnmappedModeEnum.fixed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fixed Code',
    ),
  );

  /// other_map
  static const ConceptMapGroupUnmappedMode otherMap =
      ConceptMapGroupUnmappedMode._(
    valueString: 'other-map',
    valueEnum: ConceptMapGroupUnmappedModeEnum.otherMap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Other Map',
    ),
  );

  /// List of all enum-like values
  static final List<ConceptMapGroupUnmappedMode> values = [
    provided,
    fixed,
    otherMap,
  ];

  /// Returns the enum value with an element attached
  ConceptMapGroupUnmappedMode withElement(Element? newElement) {
    return ConceptMapGroupUnmappedMode._(
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
  ConceptMapGroupUnmappedMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConceptMapGroupUnmappedModeCopyWithImpl<ConceptMapGroupUnmappedMode>
      get copyWith =>
          ConceptMapGroupUnmappedModeCopyWithImpl<ConceptMapGroupUnmappedMode>(
            this,
            (v) => v as ConceptMapGroupUnmappedMode,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConceptMapGroupUnmappedModeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConceptMapGroupUnmappedModeCopyWithImpl(super._value, super._then);

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
      ConceptMapGroupUnmappedMode(
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
