// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// MedicationKnowledge Status Codes
class MedicationKnowledgeStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MedicationKnowledgeStatusCodes._({
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
  factory MedicationKnowledgeStatusCodes(
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
    return MedicationKnowledgeStatusCodes._(
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

  /// Create empty [MedicationKnowledgeStatusCodes] with element only
  factory MedicationKnowledgeStatusCodes.empty() =>
      MedicationKnowledgeStatusCodes._(validatedValue: '');

  /// Factory constructor to create [MedicationKnowledgeStatusCodes] from JSON.
  factory MedicationKnowledgeStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'MedicationKnowledgeStatusCodes cannot be constructed from JSON.',);
    }
    return MedicationKnowledgeStatusCodes._(
        validatedValue: value, element: element,);
  }

  /// active
  static final MedicationKnowledgeStatusCodes active =
      MedicationKnowledgeStatusCodes._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// inactive
  static final MedicationKnowledgeStatusCodes inactive =
      MedicationKnowledgeStatusCodes._(
    validatedValue: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final MedicationKnowledgeStatusCodes entered_in_error =
      MedicationKnowledgeStatusCodes._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medicationknowledge-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MedicationKnowledgeStatusCodes elementOnly =
      MedicationKnowledgeStatusCodes._(validatedValue: '');

  /// List of all enum-like values
  static final List<MedicationKnowledgeStatusCodes> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  MedicationKnowledgeStatusCodes clone() => MedicationKnowledgeStatusCodes._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationKnowledgeStatusCodes withElement(Element? newElement) {
    return MedicationKnowledgeStatusCodes._(
        validatedValue: value, element: newElement,);
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
  MedicationKnowledgeStatusCodes copyWith({
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
    return MedicationKnowledgeStatusCodes._(
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
