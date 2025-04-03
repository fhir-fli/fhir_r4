// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Medication Status Codes
class MedicationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MedicationStatusCodes._({
    required super.valueString,
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
  factory MedicationStatusCodes(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return MedicationStatusCodes._(
      valueString: valueString,
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

  /// Create empty [MedicationStatusCodes] with element only
  factory MedicationStatusCodes.empty() =>
      MedicationStatusCodes._(valueString: '');

  /// Factory constructor to create [MedicationStatusCodes] from JSON.
  factory MedicationStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationStatusCodes._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static final MedicationStatusCodes active = MedicationStatusCodes._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/medication-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// inactive
  static final MedicationStatusCodes inactive = MedicationStatusCodes._(
    valueString: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/medication-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final MedicationStatusCodes entered_in_error = MedicationStatusCodes._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/medication-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MedicationStatusCodes elementOnly =
      MedicationStatusCodes._(valueString: '');

  /// List of all enum-like values
  static final List<MedicationStatusCodes> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  MedicationStatusCodes clone() => MedicationStatusCodes._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationStatusCodes withElement(Element? newElement) {
    return MedicationStatusCodes._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  MedicationStatusCodes copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for MedicationStatusCodes: $newValue');
    }
    return MedicationStatusCodes._(
      valueString: newValue ?? valueString,
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
