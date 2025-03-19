// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Controls how multiple enableWhen values are interpreted - whether all
/// or any must be true.
class EnableWhenBehavior extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EnableWhenBehavior._({
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
  factory EnableWhenBehavior(
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
    return EnableWhenBehavior._(
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

  /// Create empty [EnableWhenBehavior] with element only
  factory EnableWhenBehavior.empty() =>
      EnableWhenBehavior._(validatedValue: '');

  /// Factory constructor to create [EnableWhenBehavior] from JSON.
  factory EnableWhenBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EnableWhenBehavior cannot be constructed from JSON.',
      );
    }
    return EnableWhenBehavior._(validatedValue: value, element: element);
  }

  /// all
  static final EnableWhenBehavior all = EnableWhenBehavior._(
    validatedValue: 'all',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'All'.toFhirString,
  );

  /// any
  static final EnableWhenBehavior any = EnableWhenBehavior._(
    validatedValue: 'any',
    system:
        'http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Any'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EnableWhenBehavior elementOnly =
      EnableWhenBehavior._(validatedValue: '');

  /// List of all enum-like values
  static final List<EnableWhenBehavior> values = [
    all,
    any,
  ];

  /// Clones the current instance
  @override
  EnableWhenBehavior clone() => EnableWhenBehavior._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EnableWhenBehavior withElement(Element? newElement) {
    return EnableWhenBehavior._(validatedValue: value, element: newElement);
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
  EnableWhenBehavior copyWith({
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
    return EnableWhenBehavior._(
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
