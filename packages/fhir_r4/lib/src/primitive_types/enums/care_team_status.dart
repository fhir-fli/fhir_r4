part of '../primitive_types.dart';

/// Actual enum for CareTeamStatus
enum CareTeamStatusEnum {
  /// proposed
  proposed,

  /// active
  active,

  /// suspended
  suspended,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CareTeamStatusEnum.proposed:
        return 'proposed';
      case CareTeamStatusEnum.active:
        return 'active';
      case CareTeamStatusEnum.suspended:
        return 'suspended';
      case CareTeamStatusEnum.inactive:
        return 'inactive';
      case CareTeamStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CareTeamStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return CareTeamStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CareTeamStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'proposed':
        return CareTeamStatusEnum.proposed;
      case 'active':
        return CareTeamStatusEnum.active;
      case 'suspended':
        return CareTeamStatusEnum.suspended;
      case 'inactive':
        return CareTeamStatusEnum.inactive;
      case 'entered-in-error':
        return CareTeamStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Indicates the status of the care team.
class CareTeamStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const CareTeamStatus._({
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
  factory CareTeamStatus(
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
    final valueEnum = CareTeamStatusEnum.fromString(valueString);
    return CareTeamStatus._(
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

  /// Factory constructor to create [CareTeamStatus]
  /// from JSON.
  factory CareTeamStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = CareTeamStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CareTeamStatus cannot be constructed from JSON.',
      );
    }
    return CareTeamStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for CareTeamStatus
  final CareTeamStatusEnum? valueEnum;

  /// proposed
  static const CareTeamStatus proposed = CareTeamStatus._(
    valueString: 'proposed',
    valueEnum: CareTeamStatusEnum.proposed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Proposed',
    ),
  );

  /// active
  static const CareTeamStatus active = CareTeamStatus._(
    valueString: 'active',
    valueEnum: CareTeamStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// suspended
  static const CareTeamStatus suspended = CareTeamStatus._(
    valueString: 'suspended',
    valueEnum: CareTeamStatusEnum.suspended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Suspended',
    ),
  );

  /// inactive
  static const CareTeamStatus inactive = CareTeamStatus._(
    valueString: 'inactive',
    valueEnum: CareTeamStatusEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const CareTeamStatus enteredInError = CareTeamStatus._(
    valueString: 'entered-in-error',
    valueEnum: CareTeamStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/care-team-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<CareTeamStatus> values = [
    proposed,
    active,
    suspended,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  CareTeamStatus withElement(Element? newElement) {
    return CareTeamStatus._(
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
  CareTeamStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  CareTeamStatusCopyWithImpl<CareTeamStatus> get copyWith =>
      CareTeamStatusCopyWithImpl<CareTeamStatus>(
        this,
        (v) => v as CareTeamStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class CareTeamStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  CareTeamStatusCopyWithImpl(super._value, super._then);

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
      CareTeamStatus(
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
