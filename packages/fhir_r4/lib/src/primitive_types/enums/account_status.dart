// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates whether the account is available to be used.
class AccountStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AccountStatus._({
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
  factory AccountStatus(
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
    return AccountStatus._(
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

  /// Create empty [AccountStatus] with element only
  factory AccountStatus.empty() => AccountStatus._(validatedValue: '');

  /// Factory constructor to create [AccountStatus] from JSON.
  factory AccountStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AccountStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AccountStatus cannot be constructed from JSON.',
      );
    }
    return AccountStatus._(
      validatedValue: value,
      element: element,
    );
  }

  /// active
  static final AccountStatus active = AccountStatus._(
    validatedValue: 'active',
    system: 'http://hl7.org/fhir/ValueSet/account-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// inactive
  static final AccountStatus inactive = AccountStatus._(
    validatedValue: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/account-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final AccountStatus entered_in_error = AccountStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/account-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in error'.toFhirString,
  );

  /// on_hold
  static final AccountStatus on_hold = AccountStatus._(
    validatedValue: 'on-hold',
    system: 'http://hl7.org/fhir/ValueSet/account-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// unknown
  static final AccountStatus unknown = AccountStatus._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/account-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AccountStatus elementOnly = AccountStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<AccountStatus> values = [
    active,
    inactive,
    entered_in_error,
    on_hold,
    unknown,
  ];

  /// Clones the current instance
  @override
  AccountStatus clone() => AccountStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AccountStatus withElement(Element? newElement) {
    return AccountStatus._(validatedValue: value, element: newElement);
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
  AccountStatus copyWith({
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
    return AccountStatus._(
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
