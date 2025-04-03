// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Status of the supply request.
class SupplyRequestStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SupplyRequestStatusBuilder._({
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
  factory SupplyRequestStatusBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return SupplyRequestStatusBuilder._(
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

  /// Create empty [SupplyRequestStatusBuilder] with element only
  factory SupplyRequestStatusBuilder.empty() =>
      SupplyRequestStatusBuilder._(valueString: '');

  /// Factory constructor to create [SupplyRequestStatusBuilder]
  /// from JSON.
  factory SupplyRequestStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyRequestStatusBuilder cannot be constructed from JSON.',
      );
    }
    return SupplyRequestStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// draft
  static SupplyRequestStatusBuilder draft = SupplyRequestStatusBuilder._(
    valueString: 'draft',
    system:
        'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Draft'.toFhirStringBuilder,
  );

  /// active
  static SupplyRequestStatusBuilder active = SupplyRequestStatusBuilder._(
    valueString: 'active',
    system:
        'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// suspended
  static SupplyRequestStatusBuilder suspended = SupplyRequestStatusBuilder._(
    valueString: 'suspended',
    system:
        'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Suspended'.toFhirStringBuilder,
  );

  /// cancelled
  static SupplyRequestStatusBuilder cancelled = SupplyRequestStatusBuilder._(
    valueString: 'cancelled',
    system:
        'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// completed
  static SupplyRequestStatusBuilder completed = SupplyRequestStatusBuilder._(
    valueString: 'completed',
    system:
        'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static SupplyRequestStatusBuilder entered_in_error =
      SupplyRequestStatusBuilder._(
    valueString: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static SupplyRequestStatusBuilder unknown = SupplyRequestStatusBuilder._(
    valueString: 'unknown',
    system:
        'http://hl7.org/fhir/ValueSet/supplyrequest-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SupplyRequestStatusBuilder elementOnly =
      SupplyRequestStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<SupplyRequestStatusBuilder> values = [
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
  SupplyRequestStatusBuilder clone() => SupplyRequestStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SupplyRequestStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SupplyRequestStatusBuilder._(
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
  SupplyRequestStatusBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for SupplyRequestStatus: $newValue',
      );
    }
    return SupplyRequestStatusBuilder._(
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
