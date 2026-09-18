// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductStatus
enum BiologicallyDerivedProductStatusBuilderEnum {
  /// available
  available,

  /// unavailable
  unavailable,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case BiologicallyDerivedProductStatusBuilderEnum.available:
        return 'available';
      case BiologicallyDerivedProductStatusBuilderEnum.unavailable:
        return 'unavailable';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'available':
        return BiologicallyDerivedProductStatusBuilderEnum.available;
      case 'unavailable':
        return BiologicallyDerivedProductStatusBuilderEnum.unavailable;
    }
    return null;
  }
}

/// Biologically Derived Product Status.
class BiologicallyDerivedProductStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductStatusBuilder._({
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
  factory BiologicallyDerivedProductStatusBuilder(
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
    final valueEnum = BiologicallyDerivedProductStatusBuilderEnum.fromString(
      valueString,
    );
    final known = _known(valueEnum);
    return BiologicallyDerivedProductStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system ?? known?.system,
      version: version ?? known?.version,
      display: display ?? known?.display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [BiologicallyDerivedProductStatusBuilder]
  /// with element only
  factory BiologicallyDerivedProductStatusBuilder.empty() =>
      BiologicallyDerivedProductStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [BiologicallyDerivedProductStatusBuilder] from JSON.
  factory BiologicallyDerivedProductStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductStatusBuilder cannot be constructed from JSON.',
      );
    }
    final known =
        _known(BiologicallyDerivedProductStatusBuilderEnum.fromString(value));
    return BiologicallyDerivedProductStatusBuilder._(
      valueString: value,
      valueEnum: known?.valueEnum,
      system: known?.system,
      version: known?.version,
      display: known?.display,
      element: element,
    );
  }

  /// The constant for [valueEnum], with its system, version and
  /// display; null for a code the value set does not define.
  static BiologicallyDerivedProductStatusBuilder? _known(
      BiologicallyDerivedProductStatusBuilderEnum? valueEnum) {
    if (valueEnum == null) return null;
    for (final v in values) {
      if (v.valueEnum == valueEnum) return v;
    }
    return null;
  }

  ///  An actual enum that can be used for BiologicallyDerivedProductStatusBuilder
  final BiologicallyDerivedProductStatusBuilderEnum? valueEnum;

  /// available
  static BiologicallyDerivedProductStatusBuilder available =
      BiologicallyDerivedProductStatusBuilder._(
    valueString: 'available',
    valueEnum: BiologicallyDerivedProductStatusBuilderEnum.available,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/product-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Available',
    ),
  );

  /// unavailable
  static BiologicallyDerivedProductStatusBuilder unavailable =
      BiologicallyDerivedProductStatusBuilder._(
    valueString: 'unavailable',
    valueEnum: BiologicallyDerivedProductStatusBuilderEnum.unavailable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/product-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unavailable',
    ),
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductStatusBuilder elementOnly =
      BiologicallyDerivedProductStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<BiologicallyDerivedProductStatusBuilder> values = [
    available,
    unavailable,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return BiologicallyDerivedProductStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
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
