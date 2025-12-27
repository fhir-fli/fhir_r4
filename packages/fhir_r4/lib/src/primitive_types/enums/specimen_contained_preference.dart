part of '../primitive_types.dart';

/// Actual enum for SpecimenContainedPreference
enum SpecimenContainedPreferenceEnum {
  /// preferred
  preferred,

  /// alternate
  alternate,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SpecimenContainedPreferenceEnum.preferred:
        return 'preferred';
      case SpecimenContainedPreferenceEnum.alternate:
        return 'alternate';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SpecimenContainedPreferenceEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SpecimenContainedPreferenceEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SpecimenContainedPreferenceEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preferred':
        return SpecimenContainedPreferenceEnum.preferred;
      case 'alternate':
        return SpecimenContainedPreferenceEnum.alternate;
    }
    return null;
  }
}

/// Degree of preference of a type of conditioned specimen.
class SpecimenContainedPreference extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SpecimenContainedPreference._({
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
  factory SpecimenContainedPreference(
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
    final valueEnum = SpecimenContainedPreferenceEnum.fromString(valueString);
    return SpecimenContainedPreference._(
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

  /// Factory constructor to create [SpecimenContainedPreference]
  /// from JSON.
  factory SpecimenContainedPreference.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SpecimenContainedPreferenceEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreference._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenContainedPreference cannot be constructed from JSON.',
      );
    }
    return SpecimenContainedPreference._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SpecimenContainedPreference
  final SpecimenContainedPreferenceEnum? valueEnum;

  /// preferred
  static const SpecimenContainedPreference preferred =
      SpecimenContainedPreference._(
    valueString: 'preferred',
    valueEnum: SpecimenContainedPreferenceEnum.preferred,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-contained-preference',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Preferred',
    ),
  );

  /// alternate
  static const SpecimenContainedPreference alternate =
      SpecimenContainedPreference._(
    valueString: 'alternate',
    valueEnum: SpecimenContainedPreferenceEnum.alternate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-contained-preference',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Alternate',
    ),
  );

  /// List of all enum-like values
  static final List<SpecimenContainedPreference> values = [
    preferred,
    alternate,
  ];

  /// Returns the enum value with an element attached
  SpecimenContainedPreference withElement(Element? newElement) {
    return SpecimenContainedPreference._(
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
  SpecimenContainedPreference clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SpecimenContainedPreferenceCopyWithImpl<SpecimenContainedPreference>
      get copyWith =>
          SpecimenContainedPreferenceCopyWithImpl<SpecimenContainedPreference>(
            this,
            (v) => v as SpecimenContainedPreference,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SpecimenContainedPreferenceCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SpecimenContainedPreferenceCopyWithImpl(super._value, super._then);

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
      SpecimenContainedPreference(
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
