// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Status of the supply request.
class SupplyRequestStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SupplyRequestStatus._({
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
  factory SupplyRequestStatus(
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
    return SupplyRequestStatus._(
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

  /// Create empty [SupplyRequestStatus] with element only
  factory SupplyRequestStatus.empty() =>
      SupplyRequestStatus._(validatedValue: '');

  /// Factory constructor to create [SupplyRequestStatus] from JSON.
  factory SupplyRequestStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyRequestStatus cannot be constructed from JSON.',
      );
    }
    return SupplyRequestStatus._(validatedValue: value, element: element);
  }

  /// draft
  static final SupplyRequestStatus draft = SupplyRequestStatus._(
    validatedValue: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Draft'.toFhirString,
  );

  /// active
  static final SupplyRequestStatus active = SupplyRequestStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// suspended
  static final SupplyRequestStatus suspended = SupplyRequestStatus._(
    validatedValue: 'suspended',
    system: 'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Suspended'.toFhirString,
  );

  /// cancelled
  static final SupplyRequestStatus cancelled = SupplyRequestStatus._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// completed
  static final SupplyRequestStatus completed = SupplyRequestStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final SupplyRequestStatus entered_in_error = SupplyRequestStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final SupplyRequestStatus unknown = SupplyRequestStatus._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SupplyRequestStatus elementOnly =
      SupplyRequestStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<SupplyRequestStatus> values = [
    draft,
    active,
    suspended,
    cancelled,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  SupplyRequestStatus clone() => SupplyRequestStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SupplyRequestStatus withElement(Element? newElement) {
    return SupplyRequestStatus._(validatedValue: value, element: newElement);
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
  SupplyRequestStatus copyWith({
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
    return SupplyRequestStatus._(
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
