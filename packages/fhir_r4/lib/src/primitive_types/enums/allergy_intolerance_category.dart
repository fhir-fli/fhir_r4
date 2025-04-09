// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceCategory
enum AllergyIntoleranceCategoryEnum {
  /// food
  food,

  /// medication
  medication,

  /// environment
  environment,

  /// biologic
  biologic,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceCategoryEnum.food:
        return 'food';
      case AllergyIntoleranceCategoryEnum.medication:
        return 'medication';
      case AllergyIntoleranceCategoryEnum.environment:
        return 'environment';
      case AllergyIntoleranceCategoryEnum.biologic:
        return 'biologic';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceCategoryEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceCategoryEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceCategoryEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'food':
        return AllergyIntoleranceCategoryEnum.food;
      case 'medication':
        return AllergyIntoleranceCategoryEnum.medication;
      case 'environment':
        return AllergyIntoleranceCategoryEnum.environment;
      case 'biologic':
        return AllergyIntoleranceCategoryEnum.biologic;
    }
    return null;
  }
}

/// Category of an identified substance associated with allergies or
/// intolerances.
class AllergyIntoleranceCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AllergyIntoleranceCategory._({
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
  factory AllergyIntoleranceCategory(
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
    final valueEnum = AllergyIntoleranceCategoryEnum.fromString(valueString);
    return AllergyIntoleranceCategory._(
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

  /// Factory constructor to create [AllergyIntoleranceCategory]
  /// from JSON.
  factory AllergyIntoleranceCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AllergyIntoleranceCategoryEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCategory._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCategory cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCategory._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AllergyIntoleranceCategory
  final AllergyIntoleranceCategoryEnum? valueEnum;

  /// food
  static const AllergyIntoleranceCategory food = AllergyIntoleranceCategory._(
    valueString: 'food',
    valueEnum: AllergyIntoleranceCategoryEnum.food,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Food',
    ),
  );

  /// medication
  static const AllergyIntoleranceCategory medication =
      AllergyIntoleranceCategory._(
    valueString: 'medication',
    valueEnum: AllergyIntoleranceCategoryEnum.medication,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Medication',
    ),
  );

  /// environment
  static const AllergyIntoleranceCategory environment =
      AllergyIntoleranceCategory._(
    valueString: 'environment',
    valueEnum: AllergyIntoleranceCategoryEnum.environment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Environment',
    ),
  );

  /// biologic
  static const AllergyIntoleranceCategory biologic =
      AllergyIntoleranceCategory._(
    valueString: 'biologic',
    valueEnum: AllergyIntoleranceCategoryEnum.biologic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Biologic',
    ),
  );

  /// List of all enum-like values
  static final List<AllergyIntoleranceCategory> values = [
    food,
    medication,
    environment,
    biologic,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceCategory withElement(Element? newElement) {
    return AllergyIntoleranceCategory._(
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
  AllergyIntoleranceCategory clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AllergyIntoleranceCategoryCopyWithImpl<AllergyIntoleranceCategory>
      get copyWith =>
          AllergyIntoleranceCategoryCopyWithImpl<AllergyIntoleranceCategory>(
            this,
            (v) => v as AllergyIntoleranceCategory,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AllergyIntoleranceCategoryCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AllergyIntoleranceCategoryCopyWithImpl(super._value, super._then);

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
      AllergyIntoleranceCategory(
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
