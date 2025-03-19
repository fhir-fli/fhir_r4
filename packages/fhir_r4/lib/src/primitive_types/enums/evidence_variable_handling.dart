// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The handling of the variable in statistical analysis for exposures or
/// outcomes (E.g. Dichotomous, Continuous, Descriptive).
class EvidenceVariableHandling extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EvidenceVariableHandling._({
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
  factory EvidenceVariableHandling(
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
    return EvidenceVariableHandling._(
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

  /// Create empty [EvidenceVariableHandling] with element only
  factory EvidenceVariableHandling.empty() =>
      EvidenceVariableHandling._(validatedValue: '');

  /// Factory constructor to create [EvidenceVariableHandling] from JSON.
  factory EvidenceVariableHandling.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableHandling.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceVariableHandling cannot be constructed from JSON.',
      );
    }
    return EvidenceVariableHandling._(validatedValue: value, element: element);
  }

  /// continuous
  static final EvidenceVariableHandling continuous = EvidenceVariableHandling._(
    validatedValue: 'continuous',
    system: 'http://hl7.org/fhir/ValueSet/variable-handling'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'continuous variable'.toFhirString,
  );

  /// dichotomous
  static final EvidenceVariableHandling dichotomous =
      EvidenceVariableHandling._(
    validatedValue: 'dichotomous',
    system: 'http://hl7.org/fhir/ValueSet/variable-handling'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dichotomous variable'.toFhirString,
  );

  /// ordinal
  static final EvidenceVariableHandling ordinal = EvidenceVariableHandling._(
    validatedValue: 'ordinal',
    system: 'http://hl7.org/fhir/ValueSet/variable-handling'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ordinal variable'.toFhirString,
  );

  /// polychotomous
  static final EvidenceVariableHandling polychotomous =
      EvidenceVariableHandling._(
    validatedValue: 'polychotomous',
    system: 'http://hl7.org/fhir/ValueSet/variable-handling'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'polychotomous variable'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EvidenceVariableHandling elementOnly =
      EvidenceVariableHandling._(validatedValue: '');

  /// List of all enum-like values
  static final List<EvidenceVariableHandling> values = [
    continuous,
    dichotomous,
    ordinal,
    polychotomous,
  ];

  /// Clones the current instance
  @override
  EvidenceVariableHandling clone() => EvidenceVariableHandling._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EvidenceVariableHandling withElement(Element? newElement) {
    return EvidenceVariableHandling._(
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
  EvidenceVariableHandling copyWith({
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
    return EvidenceVariableHandling._(
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
