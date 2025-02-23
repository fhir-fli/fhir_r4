// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Intent Codes
class MedicationRequestIntent extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  MedicationRequestIntent._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [MedicationRequestIntent] with element only
  factory MedicationRequestIntent.empty() => MedicationRequestIntent._('');

  /// Factory constructor to create [MedicationRequestIntent] from JSON.
  factory MedicationRequestIntent.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntent.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestIntent cannot be constructed from JSON.',
      );
    }
    return MedicationRequestIntent._(
      value,
      element: element,
    );
  }

  /// proposal
  static final MedicationRequestIntent proposal = MedicationRequestIntent._(
    'proposal',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Proposal'.toFhirString,
  );

  /// plan
  static final MedicationRequestIntent plan = MedicationRequestIntent._(
    'plan',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Plan'.toFhirString,
  );

  /// order
  static final MedicationRequestIntent order = MedicationRequestIntent._(
    'order',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Order'.toFhirString,
  );

  /// original_order
  static final MedicationRequestIntent original_order =
      MedicationRequestIntent._(
    'original-order',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Original Order'.toFhirString,
  );

  /// reflex_order
  static final MedicationRequestIntent reflex_order = MedicationRequestIntent._(
    'reflex-order',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reflex Order'.toFhirString,
  );

  /// filler_order
  static final MedicationRequestIntent filler_order = MedicationRequestIntent._(
    'filler-order',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Filler Order'.toFhirString,
  );

  /// instance_order
  static final MedicationRequestIntent instance_order =
      MedicationRequestIntent._(
    'instance-order',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Instance Order'.toFhirString,
  );

  /// option
  static final MedicationRequestIntent option = MedicationRequestIntent._(
    'option',
    system: 'http://hl7.org/fhir/ValueSet/medicationrequest-intent'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Option'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestIntent elementOnly =
      MedicationRequestIntent._('');

  /// List of all enum-like values
  static final List<MedicationRequestIntent> values = [
    proposal,
    plan,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Clones the current instance
  @override
  MedicationRequestIntent clone() => MedicationRequestIntent._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationRequestIntent withElement(Element? newElement) {
    return MedicationRequestIntent._(
      value,
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
  MedicationRequestIntent copyWith({
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
    return MedicationRequestIntent._(
      newValue ?? value,
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
