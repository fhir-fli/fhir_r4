// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Overall nature of the adverse event, e.g. real or potential.
class AdverseEventActuality extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AdverseEventActuality._({
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
  factory AdverseEventActuality(
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
    return AdverseEventActuality._(
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

  /// Create empty [AdverseEventActuality] with element only
  factory AdverseEventActuality.empty() =>
      AdverseEventActuality._(validatedValue: '');

  /// Factory constructor to create [AdverseEventActuality] from JSON.
  factory AdverseEventActuality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActuality.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventActuality cannot be constructed from JSON.',
      );
    }
    return AdverseEventActuality._(validatedValue: value, element: element);
  }

  /// actual
  static final AdverseEventActuality actual = AdverseEventActuality._(
    validatedValue: 'actual',
    system: 'http://hl7.org/fhir/ValueSet/adverse-event-actuality'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Adverse Event'.toFhirString,
  );

  /// potential
  static final AdverseEventActuality potential = AdverseEventActuality._(
    validatedValue: 'potential',
    system: 'http://hl7.org/fhir/ValueSet/adverse-event-actuality'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Potential Adverse Event'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AdverseEventActuality elementOnly =
      AdverseEventActuality._(validatedValue: '');

  /// List of all enum-like values
  static final List<AdverseEventActuality> values = [
    actual,
    potential,
  ];

  /// Clones the current instance
  @override
  AdverseEventActuality clone() => AdverseEventActuality._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdverseEventActuality withElement(Element? newElement) {
    return AdverseEventActuality._(validatedValue: value, element: newElement);
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
  AdverseEventActuality copyWith({
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
    return AdverseEventActuality._(
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
