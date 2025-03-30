// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Controls how multiple enableWhen values are interpreted - whether all
/// or any must be true.
class EnableWhenBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EnableWhenBehaviorBuilder._({
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
  factory EnableWhenBehaviorBuilder(
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
    return EnableWhenBehaviorBuilder._(
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

  /// Create empty [EnableWhenBehaviorBuilder] with element only
  factory EnableWhenBehaviorBuilder.empty() =>
      EnableWhenBehaviorBuilder._(validatedValue: '');

  /// Factory constructor to create [EnableWhenBehaviorBuilder]
  /// from JSON.
  factory EnableWhenBehaviorBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehaviorBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnableWhenBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return EnableWhenBehaviorBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// all
  static EnableWhenBehaviorBuilder all = EnableWhenBehaviorBuilder._(
    validatedValue: 'all',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'All'.toFhirStringBuilder,
  );

  /// any
  static EnableWhenBehaviorBuilder any = EnableWhenBehaviorBuilder._(
    validatedValue: 'any',
    system: 'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Any'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EnableWhenBehaviorBuilder elementOnly =
      EnableWhenBehaviorBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<EnableWhenBehaviorBuilder> values = [
    all,
    any,
  ];

  /// Clones the current instance
  @override
  EnableWhenBehaviorBuilder clone() => EnableWhenBehaviorBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EnableWhenBehaviorBuilder withElement(ElementBuilder? newElement) {
    return EnableWhenBehaviorBuilder._(
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
  EnableWhenBehaviorBuilder copyWith({
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
    return EnableWhenBehaviorBuilder._(
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
