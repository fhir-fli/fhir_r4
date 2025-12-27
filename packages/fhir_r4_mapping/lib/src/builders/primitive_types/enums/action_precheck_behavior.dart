part of '../primitive_types.dart';

/// Actual enum for ActionPrecheckBehavior
enum ActionPrecheckBehaviorBuilderEnum {
  /// yes
  yes,

  /// no
  no,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionPrecheckBehaviorBuilderEnum.yes:
        return 'yes';
      case ActionPrecheckBehaviorBuilderEnum.no:
        return 'no';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionPrecheckBehaviorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionPrecheckBehaviorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionPrecheckBehaviorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'yes':
        return ActionPrecheckBehaviorBuilderEnum.yes;
      case 'no':
        return ActionPrecheckBehaviorBuilderEnum.no;
    }
    return null;
  }
}

/// Defines selection frequency behavior for an action or group.
class ActionPrecheckBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionPrecheckBehaviorBuilder._({
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
  factory ActionPrecheckBehaviorBuilder(
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
    final valueEnum = ActionPrecheckBehaviorBuilderEnum.fromString(
      valueString,
    );
    return ActionPrecheckBehaviorBuilder._(
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

  /// Create empty [ActionPrecheckBehaviorBuilder]
  /// with element only
  factory ActionPrecheckBehaviorBuilder.empty() =>
      ActionPrecheckBehaviorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionPrecheckBehaviorBuilder] from JSON.
  factory ActionPrecheckBehaviorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionPrecheckBehaviorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionPrecheckBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionPrecheckBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionPrecheckBehaviorBuilder
  final ActionPrecheckBehaviorBuilderEnum? valueEnum;

  /// yes
  static ActionPrecheckBehaviorBuilder yes = ActionPrecheckBehaviorBuilder._(
    valueString: 'yes',
    valueEnum: ActionPrecheckBehaviorBuilderEnum.yes,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-precheck-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Yes',
    ),
  );

  /// no
  static ActionPrecheckBehaviorBuilder no = ActionPrecheckBehaviorBuilder._(
    valueString: 'no',
    valueEnum: ActionPrecheckBehaviorBuilderEnum.no,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-precheck-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'No',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionPrecheckBehaviorBuilder elementOnly =
      ActionPrecheckBehaviorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionPrecheckBehaviorBuilder> values = [
    yes,
    no,
  ];

  /// Returns the enum value with an element attached
  ActionPrecheckBehaviorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionPrecheckBehaviorBuilder._(
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
