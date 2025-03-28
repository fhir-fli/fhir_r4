// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A coded concept indicating the current status of the Device Usage.
class DeviceUseStatementStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceUseStatementStatus._({
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
  factory DeviceUseStatementStatus(
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
    return DeviceUseStatementStatus._(
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

  /// Create empty [DeviceUseStatementStatus] with element only
  factory DeviceUseStatementStatus.empty() =>
      DeviceUseStatementStatus._(validatedValue: '');

  /// Factory constructor to create [DeviceUseStatementStatus] from JSON.
  factory DeviceUseStatementStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceUseStatementStatus cannot be constructed from JSON.',
      );
    }
    return DeviceUseStatementStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static final DeviceUseStatementStatus active = DeviceUseStatementStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// completed
  static final DeviceUseStatementStatus completed = DeviceUseStatementStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// entered_in_error
  static final DeviceUseStatementStatus entered_in_error =
      DeviceUseStatementStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// intended
  static final DeviceUseStatementStatus intended = DeviceUseStatementStatus._(
    validatedValue: 'intended',
    system: 'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Intended'.toFhirString,
  );

  /// stopped
  static final DeviceUseStatementStatus stopped = DeviceUseStatementStatus._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// on_hold
  static final DeviceUseStatementStatus on_hold = DeviceUseStatementStatus._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/device-statement-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceUseStatementStatus elementOnly =
      DeviceUseStatementStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<DeviceUseStatementStatus> values = [
    active,
    completed,
    entered_in_error,
    intended,
    stopped,
    on_hold,
  ];

  /// Clones the current instance
  @override
  DeviceUseStatementStatus clone() => DeviceUseStatementStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceUseStatementStatus withElement(Element? newElement) {
    return DeviceUseStatementStatus._(
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
  DeviceUseStatementStatus copyWith({
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
    return DeviceUseStatementStatus._(
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
