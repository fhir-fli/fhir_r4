part of '../primitive_types.dart';

/// Actual enum for StructureMapTargetListMode
enum StructureMapTargetListModeEnum {
  /// first
  first,

  /// share
  share,

  /// last
  last,

  /// collate
  collate,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapTargetListModeEnum.first:
        return 'first';
      case StructureMapTargetListModeEnum.share:
        return 'share';
      case StructureMapTargetListModeEnum.last:
        return 'last';
      case StructureMapTargetListModeEnum.collate:
        return 'collate';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapTargetListModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapTargetListModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapTargetListModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'first':
        return StructureMapTargetListModeEnum.first;
      case 'share':
        return StructureMapTargetListModeEnum.share;
      case 'last':
        return StructureMapTargetListModeEnum.last;
      case 'collate':
        return StructureMapTargetListModeEnum.collate;
    }
    return null;
  }
}

/// If field is a list, how to manage the production.
class StructureMapTargetListMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const StructureMapTargetListMode._({
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
  factory StructureMapTargetListMode(
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
    final valueEnum = StructureMapTargetListModeEnum.fromString(valueString);
    return StructureMapTargetListMode._(
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

  /// Factory constructor to create [StructureMapTargetListMode]
  /// from JSON.
  factory StructureMapTargetListMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StructureMapTargetListModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTargetListMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTargetListMode cannot be constructed from JSON.',
      );
    }
    return StructureMapTargetListMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for StructureMapTargetListMode
  final StructureMapTargetListModeEnum? valueEnum;

  /// first
  static const StructureMapTargetListMode first = StructureMapTargetListMode._(
    valueString: 'first',
    valueEnum: StructureMapTargetListModeEnum.first,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'First',
    ),
  );

  /// share
  static const StructureMapTargetListMode share = StructureMapTargetListMode._(
    valueString: 'share',
    valueEnum: StructureMapTargetListModeEnum.share,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Share',
    ),
  );

  /// last
  static const StructureMapTargetListMode last = StructureMapTargetListMode._(
    valueString: 'last',
    valueEnum: StructureMapTargetListModeEnum.last,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Last',
    ),
  );

  /// collate
  static const StructureMapTargetListMode collate =
      StructureMapTargetListMode._(
    valueString: 'collate',
    valueEnum: StructureMapTargetListModeEnum.collate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Collate',
    ),
  );

  /// List of all enum-like values
  static final List<StructureMapTargetListMode> values = [
    first,
    share,
    last,
    collate,
  ];

  /// Returns the enum value with an element attached
  StructureMapTargetListMode withElement(Element? newElement) {
    return StructureMapTargetListMode._(
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
  StructureMapTargetListMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StructureMapTargetListModeCopyWithImpl<StructureMapTargetListMode>
      get copyWith =>
          StructureMapTargetListModeCopyWithImpl<StructureMapTargetListMode>(
            this,
            (v) => v as StructureMapTargetListMode,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StructureMapTargetListModeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StructureMapTargetListModeCopyWithImpl(super._value, super._then);

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
      StructureMapTargetListMode(
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
