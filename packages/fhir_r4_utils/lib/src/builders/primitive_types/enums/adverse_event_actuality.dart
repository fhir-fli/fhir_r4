// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AdverseEventActuality
enum AdverseEventActualityBuilderEnum {
  /// actual
  actual,

  /// potential
  potential,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AdverseEventActualityBuilderEnum.actual:
        return 'actual';
      case AdverseEventActualityBuilderEnum.potential:
        return 'potential';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdverseEventActualityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AdverseEventActualityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdverseEventActualityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'actual':
        return AdverseEventActualityBuilderEnum.actual;
      case 'potential':
        return AdverseEventActualityBuilderEnum.potential;
    }
    return null;
  }
}

/// Overall nature of the adverse event, e.g. real or potential.
class AdverseEventActualityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AdverseEventActualityBuilder._({
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
  factory AdverseEventActualityBuilder(
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
    final valueEnum = AdverseEventActualityBuilderEnum.fromString(
      valueString,
    );
    return AdverseEventActualityBuilder._(
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

  /// Create empty [AdverseEventActualityBuilder]
  /// with element only
  factory AdverseEventActualityBuilder.empty() =>
      AdverseEventActualityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AdverseEventActualityBuilder] from JSON.
  factory AdverseEventActualityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActualityBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventActualityBuilder cannot be constructed from JSON.',
      );
    }
    return AdverseEventActualityBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AdverseEventActualityBuilder
  final AdverseEventActualityBuilderEnum? valueEnum;

  /// actual
  static AdverseEventActualityBuilder actual = AdverseEventActualityBuilder._(
    valueString: 'actual',
    valueEnum: AdverseEventActualityBuilderEnum.actual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-actuality',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Adverse Event',
    ),
  );

  /// potential
  static AdverseEventActualityBuilder potential =
      AdverseEventActualityBuilder._(
    valueString: 'potential',
    valueEnum: AdverseEventActualityBuilderEnum.potential,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-actuality',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Potential Adverse Event',
    ),
  );

  /// For instances where an Element is present but not value
  static AdverseEventActualityBuilder elementOnly =
      AdverseEventActualityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AdverseEventActualityBuilder> values = [
    actual,
    potential,
  ];

  /// Returns the enum value with an element attached
  AdverseEventActualityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AdverseEventActualityBuilder._(
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
