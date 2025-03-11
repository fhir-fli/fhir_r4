// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The workflow/clinical status of the composition.
class CompositionStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CompositionStatus._({
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
  factory CompositionStatus(
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
    return CompositionStatus._(
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

  /// Create empty [CompositionStatus] with element only
  factory CompositionStatus.empty() => CompositionStatus._(validatedValue: '');

  /// Factory constructor to create [CompositionStatus] from JSON.
  factory CompositionStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('CompositionStatus cannot be constructed from JSON.');
    }
    return CompositionStatus._(validatedValue: value, element: element);
  }

  /// preliminary
  static final CompositionStatus preliminary = CompositionStatus._(
    validatedValue: 'preliminary',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preliminary'.toFhirString,
  );

  /// final_
  static final CompositionStatus final_ = CompositionStatus._(
    validatedValue: 'final',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Final'.toFhirString,
  );

  /// amended
  static final CompositionStatus amended = CompositionStatus._(
    validatedValue: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amended'.toFhirString,
  );

  /// entered_in_error
  static final CompositionStatus entered_in_error = CompositionStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/composition-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CompositionStatus elementOnly =
      CompositionStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<CompositionStatus> values = [
    preliminary,
    final_,
    amended,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CompositionStatus clone() => CompositionStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CompositionStatus withElement(Element? newElement) {
    return CompositionStatus._(validatedValue: value, element: newElement);
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
  CompositionStatus copyWith({
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
    return CompositionStatus._(
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
