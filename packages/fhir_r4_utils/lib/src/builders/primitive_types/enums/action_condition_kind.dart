// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines the kinds of conditions that can appear on actions.
class ActionConditionKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionConditionKindBuilder._({
    required super.valueString,
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
    return ActionConditionKindBuilder._(
      valueString: valueString,
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

  /// Create empty [ActionConditionKindBuilder] with element only
  factory ActionConditionKindBuilder.empty() =>
      ActionConditionKindBuilder._(valueString: '');

  /// Factory constructor to create [ActionConditionKindBuilder]
  /// from JSON.
  factory ActionConditionKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionConditionKindBuilder.elementOnly.withElement(element);
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

  /// applicability
  static ActionConditionKindBuilder applicability =
      ActionConditionKindBuilder._(
    valueString: 'applicability',
    system:
        'http://hl7.org/fhir/ValueSet/action-condition-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Applicability'.toFhirStringBuilder,
  );

  /// start
  static ActionConditionKindBuilder start = ActionConditionKindBuilder._(
    valueString: 'start',
    system:
        'http://hl7.org/fhir/ValueSet/action-condition-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Start'.toFhirStringBuilder,
  );

  /// stop
  static ActionConditionKindBuilder stop = ActionConditionKindBuilder._(
    valueString: 'stop',
    system:
        'http://hl7.org/fhir/ValueSet/action-condition-kind'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stop'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ActionConditionKindBuilder elementOnly =
      ActionConditionKindBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ActionConditionKindBuilder> values = [
    applicability,
    start,
    stop,
  ];

  /// Clones the current instance
  @override
  ActionConditionKindBuilder clone() => ActionConditionKindBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  ActionConditionKindBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for ActionConditionKind: $newValue',
      );
    }
    return ActionConditionKindBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
