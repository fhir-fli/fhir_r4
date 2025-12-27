part of '../primitive_types.dart';

/// Actual enum for ActionCardinalityBehavior
enum ActionCardinalityBehaviorBuilderEnum {
  /// single
  single,

  /// multiple
  multiple,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionCardinalityBehaviorBuilderEnum.single:
        return 'single';
      case ActionCardinalityBehaviorBuilderEnum.multiple:
        return 'multiple';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionCardinalityBehaviorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionCardinalityBehaviorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionCardinalityBehaviorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'single':
        return ActionCardinalityBehaviorBuilderEnum.single;
      case 'multiple':
        return ActionCardinalityBehaviorBuilderEnum.multiple;
    }
    return null;
  }
}

/// Defines behavior for an action or a group for how many times that item
/// may be repeated.
class ActionCardinalityBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionCardinalityBehaviorBuilder._({
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
  factory ActionCardinalityBehaviorBuilder(
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
    final valueEnum = ActionCardinalityBehaviorBuilderEnum.fromString(
      valueString,
    );
    return ActionCardinalityBehaviorBuilder._(
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

  /// Create empty [ActionCardinalityBehaviorBuilder]
  /// with element only
  factory ActionCardinalityBehaviorBuilder.empty() =>
      ActionCardinalityBehaviorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionCardinalityBehaviorBuilder] from JSON.
  factory ActionCardinalityBehaviorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCardinalityBehaviorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionCardinalityBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionCardinalityBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionCardinalityBehaviorBuilder
  final ActionCardinalityBehaviorBuilderEnum? valueEnum;

  /// single
  static ActionCardinalityBehaviorBuilder single =
      ActionCardinalityBehaviorBuilder._(
    valueString: 'single',
    valueEnum: ActionCardinalityBehaviorBuilderEnum.single,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-cardinality-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Single',
    ),
  );

  /// multiple
  static ActionCardinalityBehaviorBuilder multiple =
      ActionCardinalityBehaviorBuilder._(
    valueString: 'multiple',
    valueEnum: ActionCardinalityBehaviorBuilderEnum.multiple,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-cardinality-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Multiple',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionCardinalityBehaviorBuilder elementOnly =
      ActionCardinalityBehaviorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionCardinalityBehaviorBuilder> values = [
    single,
    multiple,
  ];

  /// Returns the enum value with an element attached
  ActionCardinalityBehaviorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionCardinalityBehaviorBuilder._(
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
