// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the operational status of the DeviceMetric.
class DeviceMetricOperationalStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceMetricOperationalStatus._({
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
  factory DeviceMetricOperationalStatus(
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
    return DeviceMetricOperationalStatus._(
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

  /// Create empty [DeviceMetricOperationalStatus] with element only
  factory DeviceMetricOperationalStatus.empty() =>
      DeviceMetricOperationalStatus._(valueString: '');

  /// Factory constructor to create [DeviceMetricOperationalStatus] from JSON.
  factory DeviceMetricOperationalStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricOperationalStatus cannot be constructed from JSON.',
      );
    }
    return DeviceMetricOperationalStatus._(
      valueString: value,
      element: element,
    );
  }

  /// on_
  static final DeviceMetricOperationalStatus on_ =
      DeviceMetricOperationalStatus._(
    valueString: 'on',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On'.toFhirString,
  );

  /// off
  static final DeviceMetricOperationalStatus off =
      DeviceMetricOperationalStatus._(
    valueString: 'off',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Off'.toFhirString,
  );

  /// standby
  static final DeviceMetricOperationalStatus standby =
      DeviceMetricOperationalStatus._(
    valueString: 'standby',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Standby'.toFhirString,
  );

  /// entered_in_error
  static final DeviceMetricOperationalStatus entered_in_error =
      DeviceMetricOperationalStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered In Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceMetricOperationalStatus elementOnly =
      DeviceMetricOperationalStatus._(valueString: '');

  /// List of all enum-like values
  static final List<DeviceMetricOperationalStatus> values = [
    on_,
    off,
    standby,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  DeviceMetricOperationalStatus clone() => DeviceMetricOperationalStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricOperationalStatus withElement(Element? newElement) {
    return DeviceMetricOperationalStatus._(
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
  DeviceMetricOperationalStatus copyWith({
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
      throw ArgumentError(
          'Invalid input for DeviceMetricOperationalStatus: $newValue',);
    }
    return DeviceMetricOperationalStatus._(
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
