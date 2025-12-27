part of '../primitive_types.dart';

/// Actual enum for EnableWhenBehavior
enum EnableWhenBehaviorBuilderEnum {
  /// all
  all,

  /// any
  any,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EnableWhenBehaviorBuilderEnum.all:
        return 'all';
      case EnableWhenBehaviorBuilderEnum.any:
        return 'any';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EnableWhenBehaviorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EnableWhenBehaviorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EnableWhenBehaviorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'all':
        return EnableWhenBehaviorBuilderEnum.all;
      case 'any':
        return EnableWhenBehaviorBuilderEnum.any;
    }
    return null;
  }
}

/// Controls how multiple enableWhen values are interpreted - whether all
/// or any must be true.
class EnableWhenBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EnableWhenBehaviorBuilder._({
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
  factory EnableWhenBehaviorBuilder(
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
    final valueEnum = EnableWhenBehaviorBuilderEnum.fromString(
      valueString,
    );
    return EnableWhenBehaviorBuilder._(
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

  /// Create empty [EnableWhenBehaviorBuilder]
  /// with element only
  factory EnableWhenBehaviorBuilder.empty() =>
      EnableWhenBehaviorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EnableWhenBehaviorBuilder] from JSON.
  factory EnableWhenBehaviorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehaviorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnableWhenBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return EnableWhenBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EnableWhenBehaviorBuilder
  final EnableWhenBehaviorBuilderEnum? valueEnum;

  /// all
  static EnableWhenBehaviorBuilder all = EnableWhenBehaviorBuilder._(
    valueString: 'all',
    valueEnum: EnableWhenBehaviorBuilderEnum.all,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'All',
    ),
  );

  /// any
  static EnableWhenBehaviorBuilder any = EnableWhenBehaviorBuilder._(
    valueString: 'any',
    valueEnum: EnableWhenBehaviorBuilderEnum.any,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Any',
    ),
  );

  /// For instances where an Element is present but not value
  static EnableWhenBehaviorBuilder elementOnly = EnableWhenBehaviorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EnableWhenBehaviorBuilder> values = [
    all,
    any,
  ];

  /// Returns the enum value with an element attached
  EnableWhenBehaviorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EnableWhenBehaviorBuilder._(
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
