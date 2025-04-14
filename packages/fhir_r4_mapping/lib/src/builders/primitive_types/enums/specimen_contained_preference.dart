// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SpecimenContainedPreference
enum SpecimenContainedPreferenceBuilderEnum {
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
      case SpecimenContainedPreferenceBuilderEnum.preferred:
        return 'preferred';
      case SpecimenContainedPreferenceBuilderEnum.alternate:
        return 'alternate';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SpecimenContainedPreferenceBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SpecimenContainedPreferenceBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SpecimenContainedPreferenceBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preferred':
        return SpecimenContainedPreferenceBuilderEnum.preferred;
      case 'alternate':
        return SpecimenContainedPreferenceBuilderEnum.alternate;
    }
    return null;
  }
}

/// Degree of preference of a type of conditioned specimen.
class SpecimenContainedPreferenceBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SpecimenContainedPreferenceBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory SpecimenContainedPreferenceBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = SpecimenContainedPreferenceBuilderEnum.fromString(
      valueString,
    );
    return SpecimenContainedPreferenceBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [SpecimenContainedPreferenceBuilder]
  /// with element only
  factory SpecimenContainedPreferenceBuilder.empty() =>
      SpecimenContainedPreferenceBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SpecimenContainedPreferenceBuilder] from JSON.
  factory SpecimenContainedPreferenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreferenceBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenContainedPreferenceBuilder cannot be constructed from JSON.',
      );
    }
    return SpecimenContainedPreferenceBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SpecimenContainedPreferenceBuilder
  final SpecimenContainedPreferenceBuilderEnum? valueEnum;

  /// preferred
  static SpecimenContainedPreferenceBuilder preferred =
      SpecimenContainedPreferenceBuilder._(
    valueString: 'preferred',
    valueEnum: SpecimenContainedPreferenceBuilderEnum.preferred,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-contained-preference',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preferred',
    ),
  );

  /// alternate
  static SpecimenContainedPreferenceBuilder alternate =
      SpecimenContainedPreferenceBuilder._(
    valueString: 'alternate',
    valueEnum: SpecimenContainedPreferenceBuilderEnum.alternate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-contained-preference',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Alternate',
    ),
  );

  /// For instances where an Element is present but not value
  static SpecimenContainedPreferenceBuilder elementOnly =
      SpecimenContainedPreferenceBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SpecimenContainedPreferenceBuilder> values = [
    preferred,
    alternate,
  ];

  /// Returns the enum value with an element attached
  SpecimenContainedPreferenceBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SpecimenContainedPreferenceBuilder._(
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
}
