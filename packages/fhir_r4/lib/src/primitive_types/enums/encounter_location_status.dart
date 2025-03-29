// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the location.
class EncounterLocationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EncounterLocationStatus._({
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
  factory EncounterLocationStatus(
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
    return EncounterLocationStatus._(
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

  /// Create empty [EncounterLocationStatus] with element only
  factory EncounterLocationStatus.empty() =>
      EncounterLocationStatus._(validatedValue: '');

  /// Factory constructor to create [EncounterLocationStatus] from JSON.
  factory EncounterLocationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterLocationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterLocationStatus cannot be constructed from JSON.',
      );
    }
    return EncounterLocationStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// planned
  static final EncounterLocationStatus planned = EncounterLocationStatus._(
    validatedValue: 'planned',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Planned'.toFhirString,
  );

  /// active
  static final EncounterLocationStatus active = EncounterLocationStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// reserved
  static final EncounterLocationStatus reserved = EncounterLocationStatus._(
    validatedValue: 'reserved',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reserved'.toFhirString,
  );

  /// completed
  static final EncounterLocationStatus completed = EncounterLocationStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EncounterLocationStatus elementOnly =
      EncounterLocationStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<EncounterLocationStatus> values = [
    planned,
    active,
    reserved,
    completed,
  ];

  /// Clones the current instance
  @override
  EncounterLocationStatus clone() => EncounterLocationStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EncounterLocationStatus withElement(Element? newElement) {
    return EncounterLocationStatus._(
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
  EncounterLocationStatus copyWith({
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
    return EncounterLocationStatus._(
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
