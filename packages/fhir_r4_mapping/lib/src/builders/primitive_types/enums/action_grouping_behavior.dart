part of '../primitive_types.dart';

/// Actual enum for ActionGroupingBehavior
enum ActionGroupingBehaviorBuilderEnum {
  /// visual-group
  visualGroup,

  /// logical-group
  logicalGroup,

  /// sentence-group
  sentenceGroup,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionGroupingBehaviorBuilderEnum.visualGroup:
        return 'visual-group';
      case ActionGroupingBehaviorBuilderEnum.logicalGroup:
        return 'logical-group';
      case ActionGroupingBehaviorBuilderEnum.sentenceGroup:
        return 'sentence-group';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionGroupingBehaviorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionGroupingBehaviorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionGroupingBehaviorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'visual-group':
        return ActionGroupingBehaviorBuilderEnum.visualGroup;
      case 'logical-group':
        return ActionGroupingBehaviorBuilderEnum.logicalGroup;
      case 'sentence-group':
        return ActionGroupingBehaviorBuilderEnum.sentenceGroup;
    }
    return null;
  }
}

/// Defines organization behavior of a group.
class ActionGroupingBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionGroupingBehaviorBuilder._({
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
  factory ActionGroupingBehaviorBuilder(
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
    final valueEnum = ActionGroupingBehaviorBuilderEnum.fromString(
      valueString,
    );
    return ActionGroupingBehaviorBuilder._(
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

  /// Create empty [ActionGroupingBehaviorBuilder]
  /// with element only
  factory ActionGroupingBehaviorBuilder.empty() =>
      ActionGroupingBehaviorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionGroupingBehaviorBuilder] from JSON.
  factory ActionGroupingBehaviorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehaviorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionGroupingBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionGroupingBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionGroupingBehaviorBuilder
  final ActionGroupingBehaviorBuilderEnum? valueEnum;

  /// visual_group
  static ActionGroupingBehaviorBuilder visualGroup =
      ActionGroupingBehaviorBuilder._(
    valueString: 'visual-group',
    valueEnum: ActionGroupingBehaviorBuilderEnum.visualGroup,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Visual Group',
    ),
  );

  /// logical_group
  static ActionGroupingBehaviorBuilder logicalGroup =
      ActionGroupingBehaviorBuilder._(
    valueString: 'logical-group',
    valueEnum: ActionGroupingBehaviorBuilderEnum.logicalGroup,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Logical Group',
    ),
  );

  /// sentence_group
  static ActionGroupingBehaviorBuilder sentenceGroup =
      ActionGroupingBehaviorBuilder._(
    valueString: 'sentence-group',
    valueEnum: ActionGroupingBehaviorBuilderEnum.sentenceGroup,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Sentence Group',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionGroupingBehaviorBuilder elementOnly =
      ActionGroupingBehaviorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionGroupingBehaviorBuilder> values = [
    visualGroup,
    logicalGroup,
    sentenceGroup,
  ];

  /// Returns the enum value with an element attached
  ActionGroupingBehaviorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionGroupingBehaviorBuilder._(
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
