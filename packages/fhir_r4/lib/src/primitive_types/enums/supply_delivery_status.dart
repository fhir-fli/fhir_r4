// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Status of the supply delivery.
class SupplyDeliveryStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SupplyDeliveryStatus._({
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
  factory SupplyDeliveryStatus(
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
    return SupplyDeliveryStatus._(
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

  /// Create empty [SupplyDeliveryStatus] with element only
  factory SupplyDeliveryStatus.empty() =>
      SupplyDeliveryStatus._(valueString: '');

  /// Factory constructor to create [SupplyDeliveryStatus] from JSON.
  factory SupplyDeliveryStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyDeliveryStatus cannot be constructed from JSON.',
      );
    }
    return SupplyDeliveryStatus._(
      valueString: value,
      element: element,
    );
  }

  /// in_progress
  static final SupplyDeliveryStatus in_progress = SupplyDeliveryStatus._(
    valueString: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// completed
  static final SupplyDeliveryStatus completed = SupplyDeliveryStatus._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Delivered'.toFhirString,
  );

  /// abandoned
  static final SupplyDeliveryStatus abandoned = SupplyDeliveryStatus._(
    valueString: 'abandoned',
    system: 'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Abandoned'.toFhirString,
  );

  /// entered_in_error
  static final SupplyDeliveryStatus entered_in_error = SupplyDeliveryStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/supplydelivery-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered In Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SupplyDeliveryStatus elementOnly =
      SupplyDeliveryStatus._(valueString: '');

  /// List of all enum-like values
  static final List<SupplyDeliveryStatus> values = [
    in_progress,
    completed,
    abandoned,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SupplyDeliveryStatus clone() => SupplyDeliveryStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SupplyDeliveryStatus withElement(Element? newElement) {
    return SupplyDeliveryStatus._(
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
  SupplyDeliveryStatus copyWith({
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
      throw ArgumentError('Invalid input for SupplyDeliveryStatus: $newValue');
    }
    return SupplyDeliveryStatus._(
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
