// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConsentDataMeaning
enum ConsentDataMeaningEnum {
  /// instance
  instance,

  /// related
  related,

  /// dependents
  dependents,

  /// authoredby
  authoredby,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConsentDataMeaningEnum.instance:
        return 'instance';
      case ConsentDataMeaningEnum.related:
        return 'related';
      case ConsentDataMeaningEnum.dependents:
        return 'dependents';
      case ConsentDataMeaningEnum.authoredby:
        return 'authoredby';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConsentDataMeaningEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConsentDataMeaningEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConsentDataMeaningEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'instance':
        return ConsentDataMeaningEnum.instance;
      case 'related':
        return ConsentDataMeaningEnum.related;
      case 'dependents':
        return ConsentDataMeaningEnum.dependents;
      case 'authoredby':
        return ConsentDataMeaningEnum.authoredby;
    }
    return null;
  }
}

/// How a resource reference is interpreted when testing consent
/// restrictions.
class ConsentDataMeaning extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConsentDataMeaning._({
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
  factory ConsentDataMeaning(
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
    final valueEnum = ConsentDataMeaningEnum.fromString(valueString);
    return ConsentDataMeaning._(
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

  /// Factory constructor to create [ConsentDataMeaning]
  /// from JSON.
  factory ConsentDataMeaning.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConsentDataMeaningEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentDataMeaning cannot be constructed from JSON.',
      );
    }
    return ConsentDataMeaning._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConsentDataMeaning
  final ConsentDataMeaningEnum? valueEnum;

  /// instance
  static const ConsentDataMeaning instance = ConsentDataMeaning._(
    valueString: 'instance',
    valueEnum: ConsentDataMeaningEnum.instance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Instance',
    ),
  );

  /// related
  static const ConsentDataMeaning related = ConsentDataMeaning._(
    valueString: 'related',
    valueEnum: ConsentDataMeaningEnum.related,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Related',
    ),
  );

  /// dependents
  static const ConsentDataMeaning dependents = ConsentDataMeaning._(
    valueString: 'dependents',
    valueEnum: ConsentDataMeaningEnum.dependents,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Dependents',
    ),
  );

  /// authoredby
  static const ConsentDataMeaning authoredby = ConsentDataMeaning._(
    valueString: 'authoredby',
    valueEnum: ConsentDataMeaningEnum.authoredby,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AuthoredBy',
    ),
  );

  /// List of all enum-like values
  static final List<ConsentDataMeaning> values = [
    instance,
    related,
    dependents,
    authoredby,
  ];

  /// Returns the enum value with an element attached
  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning._(
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
  ConsentDataMeaning clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConsentDataMeaningCopyWithImpl<ConsentDataMeaning> get copyWith =>
      ConsentDataMeaningCopyWithImpl<ConsentDataMeaning>(
        this,
        (v) => v as ConsentDataMeaning,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConsentDataMeaningCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConsentDataMeaningCopyWithImpl(super._value, super._then);

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
      ConsentDataMeaning(
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
