// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CompositionAttestationMode
enum CompositionAttestationModeEnum {
  /// personal
  personal,

  /// professional
  professional,

  /// legal
  legal,

  /// official
  official,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CompositionAttestationModeEnum.personal:
        return 'personal';
      case CompositionAttestationModeEnum.professional:
        return 'professional';
      case CompositionAttestationModeEnum.legal:
        return 'legal';
      case CompositionAttestationModeEnum.official:
        return 'official';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CompositionAttestationModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CompositionAttestationModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CompositionAttestationModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'personal':
        return CompositionAttestationModeEnum.personal;
      case 'professional':
        return CompositionAttestationModeEnum.professional;
      case 'legal':
        return CompositionAttestationModeEnum.legal;
      case 'official':
        return CompositionAttestationModeEnum.official;
    }
    return null;
  }
}

/// The way in which a person authenticated a composition.
class CompositionAttestationMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CompositionAttestationMode._({
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
  factory CompositionAttestationMode(
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
    final valueEnum = CompositionAttestationModeEnum.fromString(valueString);
    return CompositionAttestationMode._(
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

  /// Factory constructor to create [CompositionAttestationMode]
  /// from JSON.
  factory CompositionAttestationMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CompositionAttestationModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionAttestationMode cannot be constructed from JSON.',
      );
    }
    return CompositionAttestationMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CompositionAttestationMode
  final CompositionAttestationModeEnum? valueEnum;

  /// personal
  static const CompositionAttestationMode personal =
      CompositionAttestationMode._(
    valueString: 'personal',
    valueEnum: CompositionAttestationModeEnum.personal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Personal',
    ),
  );

  /// professional
  static const CompositionAttestationMode professional =
      CompositionAttestationMode._(
    valueString: 'professional',
    valueEnum: CompositionAttestationModeEnum.professional,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Professional',
    ),
  );

  /// legal
  static const CompositionAttestationMode legal = CompositionAttestationMode._(
    valueString: 'legal',
    valueEnum: CompositionAttestationModeEnum.legal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Legal',
    ),
  );

  /// official
  static const CompositionAttestationMode official =
      CompositionAttestationMode._(
    valueString: 'official',
    valueEnum: CompositionAttestationModeEnum.official,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Official',
    ),
  );

  /// List of all enum-like values
  static final List<CompositionAttestationMode> values = [
    personal,
    professional,
    legal,
    official,
  ];

  /// Returns the enum value with an element attached
  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode._(
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
  CompositionAttestationMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CompositionAttestationModeCopyWithImpl<CompositionAttestationMode>
      get copyWith =>
          CompositionAttestationModeCopyWithImpl<CompositionAttestationMode>(
            this,
            (v) => v as CompositionAttestationMode,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CompositionAttestationModeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CompositionAttestationModeCopyWithImpl(super._value, super._then);

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
      CompositionAttestationMode(
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
