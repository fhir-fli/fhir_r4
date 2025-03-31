// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A coded concept indicating the current status of the Device Usage.
class DeviceUseStatementStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceUseStatementStatusBuilder._({
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
  factory DeviceUseStatementStatusBuilder(
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
    return DeviceUseStatementStatusBuilder._(
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

  /// Create empty [DeviceUseStatementStatusBuilder] with element only
  factory DeviceUseStatementStatusBuilder.empty() =>
      DeviceUseStatementStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [DeviceUseStatementStatusBuilder]
  /// from JSON.
  factory DeviceUseStatementStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceUseStatementStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceUseStatementStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static DeviceUseStatementStatusBuilder active =
      DeviceUseStatementStatusBuilder._(
    validatedValue: 'active',
    system:
        'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// completed
  static DeviceUseStatementStatusBuilder completed =
      DeviceUseStatementStatusBuilder._(
    validatedValue: 'completed',
    system:
        'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// entered_in_error
  static DeviceUseStatementStatusBuilder entered_in_error =
      DeviceUseStatementStatusBuilder._(
    validatedValue: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// intended
  static DeviceUseStatementStatusBuilder intended =
      DeviceUseStatementStatusBuilder._(
    validatedValue: 'intended',
    system:
        'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Intended'.toFhirStringBuilder,
  );

  /// stopped
  static DeviceUseStatementStatusBuilder stopped =
      DeviceUseStatementStatusBuilder._(
    validatedValue: 'stopped',
    system:
        'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Stopped'.toFhirStringBuilder,
  );

  /// on_hold
  static DeviceUseStatementStatusBuilder on_hold =
      DeviceUseStatementStatusBuilder._(
    validatedValue: 'on-hold',
    system:
        'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DeviceUseStatementStatusBuilder elementOnly =
      DeviceUseStatementStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<DeviceUseStatementStatusBuilder> values = [
    active,
    completed,
    entered_in_error,
    intended,
    stopped,
    on_hold,
  ];

  /// Clones the current instance
  @override
  DeviceUseStatementStatusBuilder clone() => DeviceUseStatementStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DeviceUseStatementStatusBuilder withElement(ElementBuilder? newElement) {
    return DeviceUseStatementStatusBuilder._(
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
  DeviceUseStatementStatusBuilder copyWith({
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
    return DeviceUseStatementStatusBuilder._(
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
