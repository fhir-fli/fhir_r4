// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indicates whether this flag is active and needs to be displayed to a
/// user, or whether it is no longer needed or was entered in error.
class FlagStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  FlagStatus._({
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
  factory FlagStatus(
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
    return FlagStatus._(
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

  /// Create empty [FlagStatus] with element only
  factory FlagStatus.empty() => FlagStatus._(valueString: '');

  /// Factory constructor to create [FlagStatus] from JSON.
  factory FlagStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FlagStatus cannot be constructed from JSON.',
      );
    }
    return FlagStatus._(
      valueString: value,
      element: element,
    );
  }

  /// active
  static final FlagStatus active = FlagStatus._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/flag-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// inactive
  static final FlagStatus inactive = FlagStatus._(
    valueString: 'inactive',
    system: 'http://hl7.org/fhir/ValueSet/flag-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Inactive'.toFhirString,
  );

  /// entered_in_error
  static final FlagStatus entered_in_error = FlagStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/flag-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final FlagStatus elementOnly = FlagStatus._(valueString: '');

  /// List of all enum-like values
  static final List<FlagStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  FlagStatus clone() => FlagStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FlagStatus withElement(Element? newElement) {
    return FlagStatus._(
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
  FlagStatus copyWith({
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
      throw ArgumentError('Invalid input for FlagStatus: $newValue');
    }
    return FlagStatus._(
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
