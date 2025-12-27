part of '../primitive_types.dart';

/// Actual enum for TriggerType
enum TriggerTypeEnum {
  /// named-event
  namedEvent,

  /// periodic
  periodic,

  /// data-changed
  dataChanged,

  /// data-added
  dataAdded,

  /// data-modified
  dataModified,

  /// data-removed
  dataRemoved,

  /// data-accessed
  dataAccessed,

  /// data-access-ended
  dataAccessEnded,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TriggerTypeEnum.namedEvent:
        return 'named-event';
      case TriggerTypeEnum.periodic:
        return 'periodic';
      case TriggerTypeEnum.dataChanged:
        return 'data-changed';
      case TriggerTypeEnum.dataAdded:
        return 'data-added';
      case TriggerTypeEnum.dataModified:
        return 'data-modified';
      case TriggerTypeEnum.dataRemoved:
        return 'data-removed';
      case TriggerTypeEnum.dataAccessed:
        return 'data-accessed';
      case TriggerTypeEnum.dataAccessEnded:
        return 'data-access-ended';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TriggerTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return TriggerTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TriggerTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'named-event':
        return TriggerTypeEnum.namedEvent;
      case 'periodic':
        return TriggerTypeEnum.periodic;
      case 'data-changed':
        return TriggerTypeEnum.dataChanged;
      case 'data-added':
        return TriggerTypeEnum.dataAdded;
      case 'data-modified':
        return TriggerTypeEnum.dataModified;
      case 'data-removed':
        return TriggerTypeEnum.dataRemoved;
      case 'data-accessed':
        return TriggerTypeEnum.dataAccessed;
      case 'data-access-ended':
        return TriggerTypeEnum.dataAccessEnded;
    }
    return null;
  }
}

/// The type of trigger.
class TriggerType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const TriggerType._({
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
  factory TriggerType(
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
    final valueEnum = TriggerTypeEnum.fromString(valueString);
    return TriggerType._(
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

  /// Factory constructor to create [TriggerType]
  /// from JSON.
  factory TriggerType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = TriggerTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggerType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TriggerType cannot be constructed from JSON.',
      );
    }
    return TriggerType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for TriggerType
  final TriggerTypeEnum? valueEnum;

  /// named_event
  static const TriggerType namedEvent = TriggerType._(
    valueString: 'named-event',
    valueEnum: TriggerTypeEnum.namedEvent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Named Event',
    ),
  );

  /// periodic
  static const TriggerType periodic = TriggerType._(
    valueString: 'periodic',
    valueEnum: TriggerTypeEnum.periodic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Periodic',
    ),
  );

  /// data_changed
  static const TriggerType dataChanged = TriggerType._(
    valueString: 'data-changed',
    valueEnum: TriggerTypeEnum.dataChanged,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Changed',
    ),
  );

  /// data_added
  static const TriggerType dataAdded = TriggerType._(
    valueString: 'data-added',
    valueEnum: TriggerTypeEnum.dataAdded,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Added',
    ),
  );

  /// data_modified
  static const TriggerType dataModified = TriggerType._(
    valueString: 'data-modified',
    valueEnum: TriggerTypeEnum.dataModified,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Updated',
    ),
  );

  /// data_removed
  static const TriggerType dataRemoved = TriggerType._(
    valueString: 'data-removed',
    valueEnum: TriggerTypeEnum.dataRemoved,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Removed',
    ),
  );

  /// data_accessed
  static const TriggerType dataAccessed = TriggerType._(
    valueString: 'data-accessed',
    valueEnum: TriggerTypeEnum.dataAccessed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Accessed',
    ),
  );

  /// data_access_ended
  static const TriggerType dataAccessEnded = TriggerType._(
    valueString: 'data-access-ended',
    valueEnum: TriggerTypeEnum.dataAccessEnded,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Access Ended',
    ),
  );

  /// List of all enum-like values
  static final List<TriggerType> values = [
    namedEvent,
    periodic,
    dataChanged,
    dataAdded,
    dataModified,
    dataRemoved,
    dataAccessed,
    dataAccessEnded,
  ];

  /// Returns the enum value with an element attached
  TriggerType withElement(Element? newElement) {
    return TriggerType._(
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
  TriggerType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  TriggerTypeCopyWithImpl<TriggerType> get copyWith =>
      TriggerTypeCopyWithImpl<TriggerType>(
        this,
        (v) => v as TriggerType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class TriggerTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  TriggerTypeCopyWithImpl(super._value, super._then);

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
      TriggerType(
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
