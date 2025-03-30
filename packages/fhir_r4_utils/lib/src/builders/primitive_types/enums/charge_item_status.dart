// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Codes identifying the lifecycle stage of a ChargeItem.
class ChargeItemStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ChargeItemStatusBuilder._({
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
  factory ChargeItemStatusBuilder(
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
    return ChargeItemStatusBuilder._(
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

  /// Create empty [ChargeItemStatusBuilder] with element only
  factory ChargeItemStatusBuilder.empty() =>
      ChargeItemStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [ChargeItemStatusBuilder]
  /// from JSON.
  factory ChargeItemStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ChargeItemStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ChargeItemStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// planned
  static ChargeItemStatusBuilder planned = ChargeItemStatusBuilder._(
    validatedValue: 'planned',
    system: 'http://hl7.org/fhir/ValueSet/chargeitem-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Planned'.toFhirStringBuilder,
  );

  /// billable
  static ChargeItemStatusBuilder billable = ChargeItemStatusBuilder._(
    validatedValue: 'billable',
    system: 'http://hl7.org/fhir/ValueSet/chargeitem-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Billable'.toFhirStringBuilder,
  );

  /// not_billable
  static ChargeItemStatusBuilder not_billable = ChargeItemStatusBuilder._(
    validatedValue: 'not-billable',
    system: 'http://hl7.org/fhir/ValueSet/chargeitem-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not billable'.toFhirStringBuilder,
  );

  /// aborted
  static ChargeItemStatusBuilder aborted = ChargeItemStatusBuilder._(
    validatedValue: 'aborted',
    system: 'http://hl7.org/fhir/ValueSet/chargeitem-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Aborted'.toFhirStringBuilder,
  );

  /// billed
  static ChargeItemStatusBuilder billed = ChargeItemStatusBuilder._(
    validatedValue: 'billed',
    system: 'http://hl7.org/fhir/ValueSet/chargeitem-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Billed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ChargeItemStatusBuilder entered_in_error = ChargeItemStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/chargeitem-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static ChargeItemStatusBuilder unknown = ChargeItemStatusBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/chargeitem-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ChargeItemStatusBuilder elementOnly =
      ChargeItemStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ChargeItemStatusBuilder> values = [
    planned,
    billable,
    not_billable,
    aborted,
    billed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ChargeItemStatusBuilder clone() => ChargeItemStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ChargeItemStatusBuilder withElement(ElementBuilder? newElement) {
    return ChargeItemStatusBuilder._(
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
  ChargeItemStatusBuilder copyWith({
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
    return ChargeItemStatusBuilder._(
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
