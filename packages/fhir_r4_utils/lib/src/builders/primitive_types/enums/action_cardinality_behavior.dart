// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines behavior for an action or a group for how many times that item
/// may be repeated.
class ActionCardinalityBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ActionCardinalityBehaviorBuilder._({
    required super.validatedValue,
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
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return ActionCardinalityBehaviorBuilder._(
      validatedValue: validated,
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

  /// Create empty [ActionCardinalityBehaviorBuilder] with element only
  factory ActionCardinalityBehaviorBuilder.empty() =>
      ActionCardinalityBehaviorBuilder._(validatedValue: '');

  /// Factory constructor to create [ActionCardinalityBehaviorBuilder]
  /// from JSON.
  factory ActionCardinalityBehaviorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionCardinalityBehaviorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionCardinalityBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return ActionCardinalityBehaviorBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// single
  static ActionCardinalityBehaviorBuilder single =
      ActionCardinalityBehaviorBuilder._(
    validatedValue: 'single',
    system: 'http://hl7.org/fhir/ValueSet/action-cardinality-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Single'.toFhirStringBuilder,
  );

  /// multiple
  static ActionCardinalityBehaviorBuilder multiple =
      ActionCardinalityBehaviorBuilder._(
    validatedValue: 'multiple',
    system: 'http://hl7.org/fhir/ValueSet/action-cardinality-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Multiple'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ActionCardinalityBehaviorBuilder elementOnly =
      ActionCardinalityBehaviorBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ActionCardinalityBehaviorBuilder> values = [
    single,
    multiple,
  ];

  /// Clones the current instance
  @override
  ActionCardinalityBehaviorBuilder clone() =>
      ActionCardinalityBehaviorBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ActionCardinalityBehaviorBuilder withElement(ElementBuilder? newElement) {
    return ActionCardinalityBehaviorBuilder._(
      validatedValue: value,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ActionCardinalityBehaviorBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ActionCardinalityBehaviorBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
