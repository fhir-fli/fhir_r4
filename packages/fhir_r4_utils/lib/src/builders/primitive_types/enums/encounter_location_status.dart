// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the location.
class EncounterLocationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EncounterLocationStatusBuilder._({
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
  factory EncounterLocationStatusBuilder(
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
    return EncounterLocationStatusBuilder._(
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

  /// Create empty [EncounterLocationStatusBuilder] with element only
  factory EncounterLocationStatusBuilder.empty() =>
      EncounterLocationStatusBuilder._(valueString: '');

  /// Factory constructor to create [EncounterLocationStatusBuilder]
  /// from JSON.
  factory EncounterLocationStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterLocationStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterLocationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return EncounterLocationStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// planned
  static EncounterLocationStatusBuilder planned =
      EncounterLocationStatusBuilder._(
    valueString: 'planned',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Planned'.toFhirStringBuilder,
  );

  /// active
  static EncounterLocationStatusBuilder active =
      EncounterLocationStatusBuilder._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// reserved
  static EncounterLocationStatusBuilder reserved =
      EncounterLocationStatusBuilder._(
    valueString: 'reserved',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reserved'.toFhirStringBuilder,
  );

  /// completed
  static EncounterLocationStatusBuilder completed =
      EncounterLocationStatusBuilder._(
    valueString: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/encounter-location-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Completed'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EncounterLocationStatusBuilder elementOnly =
      EncounterLocationStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<EncounterLocationStatusBuilder> values = [
    planned,
    active,
    reserved,
    completed,
  ];

  /// Clones the current instance
  @override
  EncounterLocationStatusBuilder clone() => EncounterLocationStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EncounterLocationStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EncounterLocationStatusBuilder._(
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
  EncounterLocationStatusBuilder copyWith({
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
        'Invalid input for EncounterLocationStatus: $newValue',
      );
    }
    return EncounterLocationStatusBuilder._(
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
