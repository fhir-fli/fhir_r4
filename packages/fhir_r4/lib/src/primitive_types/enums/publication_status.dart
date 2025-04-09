// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PublicationStatus
enum PublicationStatusEnum {
  /// draft
  draft,

  /// active
  active,

  /// retired
  retired,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PublicationStatusEnum.draft:
        return 'draft';
      case PublicationStatusEnum.active:
        return 'active';
      case PublicationStatusEnum.retired:
        return 'retired';
      case PublicationStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PublicationStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PublicationStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PublicationStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return PublicationStatusEnum.draft;
      case 'active':
        return PublicationStatusEnum.active;
      case 'retired':
        return PublicationStatusEnum.retired;
      case 'unknown':
        return PublicationStatusEnum.unknown;
    }
    return null;
  }
}

/// The lifecycle status of an artifact.
class PublicationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PublicationStatus._({
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
  factory PublicationStatus(
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
    final valueEnum = PublicationStatusEnum.fromString(valueString);
    return PublicationStatus._(
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

  /// Factory constructor to create [PublicationStatus]
  /// from JSON.
  factory PublicationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PublicationStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PublicationStatus cannot be constructed from JSON.',
      );
    }
    return PublicationStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PublicationStatus
  final PublicationStatusEnum? valueEnum;

  /// draft
  static const PublicationStatus draft = PublicationStatus._(
    valueString: 'draft',
    valueEnum: PublicationStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// active
  static const PublicationStatus active = PublicationStatus._(
    valueString: 'active',
    valueEnum: PublicationStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// retired
  static const PublicationStatus retired = PublicationStatus._(
    valueString: 'retired',
    valueEnum: PublicationStatusEnum.retired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Retired',
    ),
  );

  /// unknown
  static const PublicationStatus unknown = PublicationStatus._(
    valueString: 'unknown',
    valueEnum: PublicationStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/publication-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<PublicationStatus> values = [
    draft,
    active,
    retired,
    unknown,
  ];

  /// Returns the enum value with an element attached
  PublicationStatus withElement(Element? newElement) {
    return PublicationStatus._(
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
  PublicationStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PublicationStatusCopyWithImpl<PublicationStatus> get copyWith =>
      PublicationStatusCopyWithImpl<PublicationStatus>(
        this,
        (v) => v as PublicationStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PublicationStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PublicationStatusCopyWithImpl(super._value, super._then);

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
      PublicationStatus(
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
