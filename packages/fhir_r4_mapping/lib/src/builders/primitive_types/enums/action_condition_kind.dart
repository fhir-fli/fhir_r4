// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ActionConditionKind
enum ActionConditionKindBuilderEnum {
  /// applicability
  applicability,

  /// start
  start,

  /// stop
  stop,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ActionConditionKindBuilderEnum.applicability:
        return 'applicability';
      case ActionConditionKindBuilderEnum.start:
        return 'start';
      case ActionConditionKindBuilderEnum.stop:
        return 'stop';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ActionConditionKindBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ActionConditionKindBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ActionConditionKindBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'applicability':
        return ActionConditionKindBuilderEnum.applicability;
      case 'start':
        return ActionConditionKindBuilderEnum.start;
      case 'stop':
        return ActionConditionKindBuilderEnum.stop;
    }
    return null;
  }
}

/// Defines the kinds of conditions that can appear on actions.
class ActionConditionKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionConditionKindBuilder._({
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
  factory ActionConditionKindBuilder(
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
    final valueEnum = ActionConditionKindBuilderEnum.fromString(
      valueString,
    );
    return ActionConditionKindBuilder._(
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

  /// Create empty [ActionConditionKindBuilder]
  /// with element only
  factory ActionConditionKindBuilder.empty() =>
      ActionConditionKindBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ActionConditionKindBuilder] from JSON.
  factory ActionConditionKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionConditionKindBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionConditionKindBuilder cannot be constructed from JSON.',
      );
    }
    return ActionConditionKindBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ActionConditionKindBuilder
  final ActionConditionKindBuilderEnum? valueEnum;

  /// applicability
  static ActionConditionKindBuilder applicability =
      ActionConditionKindBuilder._(
    valueString: 'applicability',
    valueEnum: ActionConditionKindBuilderEnum.applicability,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-condition-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Applicability',
    ),
  );

  /// start
  static ActionConditionKindBuilder start = ActionConditionKindBuilder._(
    valueString: 'start',
    valueEnum: ActionConditionKindBuilderEnum.start,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-condition-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Start',
    ),
  );

  /// stop
  static ActionConditionKindBuilder stop = ActionConditionKindBuilder._(
    valueString: 'stop',
    valueEnum: ActionConditionKindBuilderEnum.stop,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/action-condition-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stop',
    ),
  );

  /// For instances where an Element is present but not value
  static ActionConditionKindBuilder elementOnly = ActionConditionKindBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ActionConditionKindBuilder> values = [
    applicability,
    start,
    stop,
  ];

  /// Returns the enum value with an element attached
  ActionConditionKindBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ActionConditionKindBuilder._(
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
