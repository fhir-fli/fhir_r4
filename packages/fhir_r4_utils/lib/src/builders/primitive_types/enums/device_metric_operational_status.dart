// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the operational status of the DeviceMetric.
class DeviceMetricOperationalStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricOperationalStatusBuilder._({
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
  factory DeviceMetricOperationalStatusBuilder(
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
    return DeviceMetricOperationalStatusBuilder._(
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

  /// Create empty [DeviceMetricOperationalStatusBuilder] with element only
  factory DeviceMetricOperationalStatusBuilder.empty() =>
      DeviceMetricOperationalStatusBuilder._(valueString: '');

  /// Factory constructor to create [DeviceMetricOperationalStatusBuilder]
  /// from JSON.
  factory DeviceMetricOperationalStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatusBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricOperationalStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricOperationalStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// on_
  static DeviceMetricOperationalStatusBuilder on_ =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'on',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On'.toFhirStringBuilder,
  );

  /// off
  static DeviceMetricOperationalStatusBuilder off =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'off',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Off'.toFhirStringBuilder,
  );

  /// standby
  static DeviceMetricOperationalStatusBuilder standby =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'standby',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Standby'.toFhirStringBuilder,
  );

  /// entered_in_error
  static DeviceMetricOperationalStatusBuilder entered_in_error =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/metric-operational-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered In Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DeviceMetricOperationalStatusBuilder elementOnly =
      DeviceMetricOperationalStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<DeviceMetricOperationalStatusBuilder> values = [
    on_,
    off,
    standby,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  DeviceMetricOperationalStatusBuilder clone() =>
      DeviceMetricOperationalStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricOperationalStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceMetricOperationalStatusBuilder._(
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
  DeviceMetricOperationalStatusBuilder copyWith({
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
        'Invalid input for DeviceMetricOperationalStatus: $newValue',
      );
    }
    return DeviceMetricOperationalStatusBuilder._(
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
