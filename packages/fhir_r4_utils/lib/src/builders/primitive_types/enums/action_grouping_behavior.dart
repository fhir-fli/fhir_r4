// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines organization behavior of a group.
class ActionGroupingBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionGroupingBehaviorBuilder._({
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
    return ActionGroupingBehaviorBuilder._(
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

  /// Create empty [ActionGroupingBehaviorBuilder] with element only
  factory ActionGroupingBehaviorBuilder.empty() =>
      ActionGroupingBehaviorBuilder._(valueString: '');

  /// Factory constructor to create [ActionGroupingBehaviorBuilder]
  /// from JSON.
  factory ActionGroupingBehaviorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehaviorBuilder.elementOnly.withElement(element);
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

  /// visual_group
  static ActionGroupingBehaviorBuilder visual_group =
      ActionGroupingBehaviorBuilder._(
    valueString: 'visual-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Visual Group'.toFhirStringBuilder,
  );

  /// logical_group
  static ActionGroupingBehaviorBuilder logical_group =
      ActionGroupingBehaviorBuilder._(
    valueString: 'logical-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Logical Group'.toFhirStringBuilder,
  );

  /// sentence_group
  static ActionGroupingBehaviorBuilder sentence_group =
      ActionGroupingBehaviorBuilder._(
    valueString: 'sentence-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sentence Group'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ActionGroupingBehaviorBuilder elementOnly =
      ActionGroupingBehaviorBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ActionGroupingBehaviorBuilder> values = [
    visual_group,
    logical_group,
    sentence_group,
  ];

  /// Clones the current instance
  @override
  ActionGroupingBehaviorBuilder clone() => ActionGroupingBehaviorBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ActionGroupingBehaviorBuilder withElement(ElementBuilder? newElement) {
    return ActionGroupingBehaviorBuilder._(
        valueString: valueString, element: newElement);
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
  ActionGroupingBehaviorBuilder copyWith({
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
          'Invalid input for ActionGroupingBehavior: $newValue');
    }
    return ActionGroupingBehaviorBuilder._(
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
