// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for StructureMapSourceListMode
enum StructureMapSourceListModeEnum {
  /// first
  first,

  /// not_first
  notFirst,

  /// last
  last,

  /// not_last
  notLast,

  /// only_one
  onlyOne,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapSourceListModeEnum.first:
        return 'first';
      case StructureMapSourceListModeEnum.notFirst:
        return 'not_first';
      case StructureMapSourceListModeEnum.last:
        return 'last';
      case StructureMapSourceListModeEnum.notLast:
        return 'not_last';
      case StructureMapSourceListModeEnum.onlyOne:
        return 'only_one';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapSourceListModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapSourceListModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapSourceListModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'first':
        return StructureMapSourceListModeEnum.first;
      case 'not_first':
        return StructureMapSourceListModeEnum.notFirst;
      case 'last':
        return StructureMapSourceListModeEnum.last;
      case 'not_last':
        return StructureMapSourceListModeEnum.notLast;
      case 'only_one':
        return StructureMapSourceListModeEnum.onlyOne;
    }
    return null;
  }
}

/// If field is a list, how to manage the source.
class StructureMapSourceListMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const StructureMapSourceListMode._({
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
  factory StructureMapSourceListMode(
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
    final valueEnum = StructureMapSourceListModeEnum.fromString(valueString);
    return StructureMapSourceListMode._(
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

  /// Factory constructor to create [StructureMapSourceListMode]
  /// from JSON.
  factory StructureMapSourceListMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StructureMapSourceListModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapSourceListMode cannot be constructed from JSON.',
      );
    }
    return StructureMapSourceListMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for StructureMapSourceListMode
  final StructureMapSourceListModeEnum? valueEnum;

  /// first
  static const StructureMapSourceListMode first = StructureMapSourceListMode._(
    valueString: 'first',
    valueEnum: StructureMapSourceListModeEnum.first,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'First',
    ),
  );

  /// not_first
  static const StructureMapSourceListMode notFirst =
      StructureMapSourceListMode._(
    valueString: 'not_first',
    valueEnum: StructureMapSourceListModeEnum.notFirst,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'All but the first',
    ),
  );

  /// last
  static const StructureMapSourceListMode last = StructureMapSourceListMode._(
    valueString: 'last',
    valueEnum: StructureMapSourceListModeEnum.last,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Last',
    ),
  );

  /// not_last
  static const StructureMapSourceListMode notLast =
      StructureMapSourceListMode._(
    valueString: 'not_last',
    valueEnum: StructureMapSourceListModeEnum.notLast,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'All but the last',
    ),
  );

  /// only_one
  static const StructureMapSourceListMode onlyOne =
      StructureMapSourceListMode._(
    valueString: 'only_one',
    valueEnum: StructureMapSourceListModeEnum.onlyOne,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Enforce only one',
    ),
  );

  /// List of all enum-like values
  static final List<StructureMapSourceListMode> values = [
    first,
    notFirst,
    last,
    notLast,
    onlyOne,
  ];

  /// Returns the enum value with an element attached
  StructureMapSourceListMode withElement(Element? newElement) {
    return StructureMapSourceListMode._(
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
  StructureMapSourceListMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StructureMapSourceListModeCopyWithImpl<StructureMapSourceListMode>
      get copyWith =>
          StructureMapSourceListModeCopyWithImpl<StructureMapSourceListMode>(
            this,
            (v) => v as StructureMapSourceListMode,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StructureMapSourceListModeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StructureMapSourceListModeCopyWithImpl(super._value, super._then);

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
      StructureMapSourceListMode(
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
