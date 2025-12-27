part of '../primitive_types.dart';

/// Actual enum for NarrativeStatus
enum NarrativeStatusEnum {
  /// generated
  generated,

  /// extensions
  extensions,

  /// additional
  additional,

  /// empty
  empty_,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NarrativeStatusEnum.generated:
        return 'generated';
      case NarrativeStatusEnum.extensions:
        return 'extensions';
      case NarrativeStatusEnum.additional:
        return 'additional';
      case NarrativeStatusEnum.empty_:
        return 'empty';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NarrativeStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return NarrativeStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NarrativeStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'generated':
        return NarrativeStatusEnum.generated;
      case 'extensions':
        return NarrativeStatusEnum.extensions;
      case 'additional':
        return NarrativeStatusEnum.additional;
      case 'empty':
        return NarrativeStatusEnum.empty_;
    }
    return null;
  }
}

/// The status of a resource narrative.
class NarrativeStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const NarrativeStatus._({
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
  factory NarrativeStatus(
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
    final valueEnum = NarrativeStatusEnum.fromString(valueString);
    return NarrativeStatus._(
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

  /// Factory constructor to create [NarrativeStatus]
  /// from JSON.
  factory NarrativeStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = NarrativeStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NarrativeStatus cannot be constructed from JSON.',
      );
    }
    return NarrativeStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for NarrativeStatus
  final NarrativeStatusEnum? valueEnum;

  /// generated
  static const NarrativeStatus generated = NarrativeStatus._(
    valueString: 'generated',
    valueEnum: NarrativeStatusEnum.generated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Generated',
    ),
  );

  /// extensions
  static const NarrativeStatus extensions = NarrativeStatus._(
    valueString: 'extensions',
    valueEnum: NarrativeStatusEnum.extensions,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Extensions',
    ),
  );

  /// additional
  static const NarrativeStatus additional = NarrativeStatus._(
    valueString: 'additional',
    valueEnum: NarrativeStatusEnum.additional,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Additional',
    ),
  );

  /// empty_
  static const NarrativeStatus empty_ = NarrativeStatus._(
    valueString: 'empty',
    valueEnum: NarrativeStatusEnum.empty_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Empty',
    ),
  );

  /// List of all enum-like values
  static final List<NarrativeStatus> values = [
    generated,
    extensions,
    additional,
    empty_,
  ];

  /// Returns the enum value with an element attached
  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus._(
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
  NarrativeStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  NarrativeStatusCopyWithImpl<NarrativeStatus> get copyWith =>
      NarrativeStatusCopyWithImpl<NarrativeStatus>(
        this,
        (v) => v as NarrativeStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class NarrativeStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  NarrativeStatusCopyWithImpl(super._value, super._then);

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
      NarrativeStatus(
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
