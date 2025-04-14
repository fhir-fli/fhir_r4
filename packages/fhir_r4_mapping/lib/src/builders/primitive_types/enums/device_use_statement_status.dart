// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceUseStatementStatus
enum DeviceUseStatementStatusBuilderEnum {
  /// active
  active,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// intended
  intended,

  /// stopped
  stopped,

  /// on-hold
  onHold,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceUseStatementStatusBuilderEnum.active:
        return 'active';
      case DeviceUseStatementStatusBuilderEnum.completed:
        return 'completed';
      case DeviceUseStatementStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case DeviceUseStatementStatusBuilderEnum.intended:
        return 'intended';
      case DeviceUseStatementStatusBuilderEnum.stopped:
        return 'stopped';
      case DeviceUseStatementStatusBuilderEnum.onHold:
        return 'on-hold';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceUseStatementStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceUseStatementStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceUseStatementStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return DeviceUseStatementStatusBuilderEnum.active;
      case 'completed':
        return DeviceUseStatementStatusBuilderEnum.completed;
      case 'entered-in-error':
        return DeviceUseStatementStatusBuilderEnum.enteredInError;
      case 'intended':
        return DeviceUseStatementStatusBuilderEnum.intended;
      case 'stopped':
        return DeviceUseStatementStatusBuilderEnum.stopped;
      case 'on-hold':
        return DeviceUseStatementStatusBuilderEnum.onHold;
    }
    return null;
  }
}

/// A coded concept indicating the current status of the Device Usage.
class DeviceUseStatementStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceUseStatementStatusBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = DeviceUseStatementStatusBuilderEnum.fromString(
      valueString,
    );
    return DeviceUseStatementStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [DeviceUseStatementStatusBuilder]
  /// with element only
  factory DeviceUseStatementStatusBuilder.empty() =>
      DeviceUseStatementStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceUseStatementStatusBuilder] from JSON.
  factory DeviceUseStatementStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceUseStatementStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceUseStatementStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceUseStatementStatusBuilder
  final DeviceUseStatementStatusBuilderEnum? valueEnum;

  /// active
  static DeviceUseStatementStatusBuilder active =
      DeviceUseStatementStatusBuilder._(
    valueString: 'active',
    valueEnum: DeviceUseStatementStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// completed
  static DeviceUseStatementStatusBuilder completed =
      DeviceUseStatementStatusBuilder._(
    valueString: 'completed',
    valueEnum: DeviceUseStatementStatusBuilderEnum.completed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static DeviceUseStatementStatusBuilder enteredInError =
      DeviceUseStatementStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DeviceUseStatementStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// intended
  static DeviceUseStatementStatusBuilder intended =
      DeviceUseStatementStatusBuilder._(
    valueString: 'intended',
    valueEnum: DeviceUseStatementStatusBuilderEnum.intended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Intended',
    ),
  );

  /// stopped
  static DeviceUseStatementStatusBuilder stopped =
      DeviceUseStatementStatusBuilder._(
    valueString: 'stopped',
    valueEnum: DeviceUseStatementStatusBuilderEnum.stopped,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Stopped',
    ),
  );

  /// on_hold
  static DeviceUseStatementStatusBuilder onHold =
      DeviceUseStatementStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: DeviceUseStatementStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceUseStatementStatusBuilder elementOnly =
      DeviceUseStatementStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceUseStatementStatusBuilder> values = [
    active,
    completed,
    enteredInError,
    intended,
    stopped,
    onHold,
  ];

  /// Returns the enum value with an element attached
  DeviceUseStatementStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceUseStatementStatusBuilder._(
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
}
