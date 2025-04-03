// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The free/busy status of the slot.
class SlotStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SlotStatusBuilder._({
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
  factory SlotStatusBuilder(
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
    return SlotStatusBuilder._(
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

  /// Create empty [SlotStatusBuilder] with element only
  factory SlotStatusBuilder.empty() => SlotStatusBuilder._(valueString: '');

  /// Factory constructor to create [SlotStatusBuilder]
  /// from JSON.
  factory SlotStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlotStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SlotStatusBuilder cannot be constructed from JSON.',
      );
    }
    return SlotStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// busy
  static SlotStatusBuilder busy = SlotStatusBuilder._(
    valueString: 'busy',
    system: 'http://hl7.org/fhir/ValueSet/slotstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Busy'.toFhirStringBuilder,
  );

  /// free
  static SlotStatusBuilder free = SlotStatusBuilder._(
    valueString: 'free',
    system: 'http://hl7.org/fhir/ValueSet/slotstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Free'.toFhirStringBuilder,
  );

  /// busy_unavailable
  static SlotStatusBuilder busy_unavailable = SlotStatusBuilder._(
    valueString: 'busy-unavailable',
    system: 'http://hl7.org/fhir/ValueSet/slotstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Busy (Unavailable)'.toFhirStringBuilder,
  );

  /// busy_tentative
  static SlotStatusBuilder busy_tentative = SlotStatusBuilder._(
    valueString: 'busy-tentative',
    system: 'http://hl7.org/fhir/ValueSet/slotstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Busy (Tentative)'.toFhirStringBuilder,
  );

  /// entered_in_error
  static SlotStatusBuilder entered_in_error = SlotStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/slotstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SlotStatusBuilder elementOnly = SlotStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<SlotStatusBuilder> values = [
    busy,
    free,
    busy_unavailable,
    busy_tentative,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  SlotStatusBuilder clone() => SlotStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SlotStatusBuilder withElement(ElementBuilder? newElement) {
    return SlotStatusBuilder._(valueString: valueString, element: newElement);
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
  SlotStatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for SlotStatus: $newValue');
    }
    return SlotStatusBuilder._(
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
