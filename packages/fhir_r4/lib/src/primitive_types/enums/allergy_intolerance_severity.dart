// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceSeverity
enum AllergyIntoleranceSeverityEnum {
  /// mild
  mild,

  /// moderate
  moderate,

  /// severe
  severe,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceSeverityEnum.mild:
        return 'mild';
      case AllergyIntoleranceSeverityEnum.moderate:
        return 'moderate';
      case AllergyIntoleranceSeverityEnum.severe:
        return 'severe';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceSeverityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceSeverityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceSeverityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'mild':
        return AllergyIntoleranceSeverityEnum.mild;
      case 'moderate':
        return AllergyIntoleranceSeverityEnum.moderate;
      case 'severe':
        return AllergyIntoleranceSeverityEnum.severe;
    }
    return null;
  }
}

/// Clinical assessment of the severity of a reaction event as a whole,
/// potentially considering multiple different manifestations.
class AllergyIntoleranceSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AllergyIntoleranceSeverity._({
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
  factory AllergyIntoleranceSeverity(
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
    final valueEnum = AllergyIntoleranceSeverityEnum.fromString(valueString);
    return AllergyIntoleranceSeverity._(
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

  /// Factory constructor to create [AllergyIntoleranceSeverity]
  /// from JSON.
  factory AllergyIntoleranceSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AllergyIntoleranceSeverityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverity._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceSeverity cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceSeverity._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AllergyIntoleranceSeverity
  final AllergyIntoleranceSeverityEnum? valueEnum;

  /// mild
  static const AllergyIntoleranceSeverity mild = AllergyIntoleranceSeverity._(
    valueString: 'mild',
    valueEnum: AllergyIntoleranceSeverityEnum.mild,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reaction-event-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Mild',
    ),
  );

  /// moderate
  static const AllergyIntoleranceSeverity moderate =
      AllergyIntoleranceSeverity._(
    valueString: 'moderate',
    valueEnum: AllergyIntoleranceSeverityEnum.moderate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reaction-event-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Moderate',
    ),
  );

  /// severe
  static const AllergyIntoleranceSeverity severe = AllergyIntoleranceSeverity._(
    valueString: 'severe',
    valueEnum: AllergyIntoleranceSeverityEnum.severe,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/reaction-event-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Severe',
    ),
  );

  /// List of all enum-like values
  static final List<AllergyIntoleranceSeverity> values = [
    mild,
    moderate,
    severe,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceSeverity withElement(Element? newElement) {
    return AllergyIntoleranceSeverity._(
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
  AllergyIntoleranceSeverity clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AllergyIntoleranceSeverityCopyWithImpl<AllergyIntoleranceSeverity>
      get copyWith =>
          AllergyIntoleranceSeverityCopyWithImpl<AllergyIntoleranceSeverity>(
            this,
            (v) => v as AllergyIntoleranceSeverity,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AllergyIntoleranceSeverityCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AllergyIntoleranceSeverityCopyWithImpl(super._value, super._then);

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
      AllergyIntoleranceSeverity(
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
