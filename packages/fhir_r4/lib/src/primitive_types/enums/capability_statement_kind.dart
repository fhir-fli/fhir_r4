// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CapabilityStatementKind
enum CapabilityStatementKindEnum {
  /// instance
  instance,

  /// capability
  capability,

  /// requirements
  requirements,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CapabilityStatementKindEnum.instance:
        return 'instance';
      case CapabilityStatementKindEnum.capability:
        return 'capability';
      case CapabilityStatementKindEnum.requirements:
        return 'requirements';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CapabilityStatementKindEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CapabilityStatementKindEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CapabilityStatementKindEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'instance':
        return CapabilityStatementKindEnum.instance;
      case 'capability':
        return CapabilityStatementKindEnum.capability;
      case 'requirements':
        return CapabilityStatementKindEnum.requirements;
    }
    return null;
  }
}

/// How a capability statement is intended to be used.
class CapabilityStatementKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CapabilityStatementKind._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CapabilityStatementKind(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = CapabilityStatementKindEnum.fromString(valueString);
    return CapabilityStatementKind._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [CapabilityStatementKind]
  /// from JSON.
  factory CapabilityStatementKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CapabilityStatementKindEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CapabilityStatementKind._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CapabilityStatementKind cannot be constructed from JSON.',
      );
    }
    return CapabilityStatementKind._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CapabilityStatementKind
  final CapabilityStatementKindEnum? valueEnum;

  /// instance
  static const CapabilityStatementKind instance = CapabilityStatementKind._(
    valueString: 'instance',
    valueEnum: CapabilityStatementKindEnum.instance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/capability-statement-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Instance',
    ),
  );

  /// capability
  static const CapabilityStatementKind capability = CapabilityStatementKind._(
    valueString: 'capability',
    valueEnum: CapabilityStatementKindEnum.capability,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/capability-statement-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Capability',
    ),
  );

  /// requirements
  static const CapabilityStatementKind requirements = CapabilityStatementKind._(
    valueString: 'requirements',
    valueEnum: CapabilityStatementKindEnum.requirements,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/capability-statement-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Requirements',
    ),
  );

  /// List of all enum-like values
  static final List<CapabilityStatementKind> values = [
    instance,
    capability,
    requirements,
  ];

  /// Returns the enum value with an element attached
  CapabilityStatementKind withElement(Element? newElement) {
    return CapabilityStatementKind._(
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

  @override
  CapabilityStatementKind clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CapabilityStatementKindCopyWithImpl<CapabilityStatementKind> get copyWith =>
      CapabilityStatementKindCopyWithImpl<CapabilityStatementKind>(
        this,
        (v) => v as CapabilityStatementKind,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CapabilityStatementKindCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CapabilityStatementKindCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      CapabilityStatementKind(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
