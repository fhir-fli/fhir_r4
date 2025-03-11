// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines the kinds of conditions that can appear on actions.
class ActionConditionKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ActionConditionKind._({
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
  factory ActionConditionKind(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return ActionConditionKind._(
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

  /// Create empty [ActionConditionKind] with element only
  factory ActionConditionKind.empty() =>
      ActionConditionKind._(validatedValue: '');

  /// Factory constructor to create [ActionConditionKind] from JSON.
  factory ActionConditionKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionConditionKind.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionConditionKind cannot be constructed from JSON.',
      );
    }
    return ActionConditionKind._(validatedValue: value, element: element);
  }

  /// applicability
  static final ActionConditionKind applicability = ActionConditionKind._(
    validatedValue: 'applicability',
    system: 'http://hl7.org/fhir/ValueSet/action-condition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Applicability'.toFhirString,
  );

  /// start
  static final ActionConditionKind start = ActionConditionKind._(
    validatedValue: 'start',
    system: 'http://hl7.org/fhir/ValueSet/action-condition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Start'.toFhirString,
  );

  /// stop
  static final ActionConditionKind stop = ActionConditionKind._(
    validatedValue: 'stop',
    system: 'http://hl7.org/fhir/ValueSet/action-condition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stop'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ActionConditionKind elementOnly =
      ActionConditionKind._(validatedValue: '');

  /// List of all enum-like values
  static final List<ActionConditionKind> values = [
    applicability,
    start,
    stop,
  ];

  /// Clones the current instance
  @override
  ActionConditionKind clone() => ActionConditionKind._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionConditionKind withElement(Element? newElement) {
    return ActionConditionKind._(validatedValue: value, element: newElement);
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
  ActionConditionKind copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return ActionConditionKind._(
      validatedValue: newValue ?? value,
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
