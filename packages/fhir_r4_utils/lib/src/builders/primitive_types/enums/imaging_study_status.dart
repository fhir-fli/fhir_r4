// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the ImagingStudy.
class ImagingStudyStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ImagingStudyStatusBuilder._({
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
  factory ImagingStudyStatusBuilder(
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
    return ImagingStudyStatusBuilder._(
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

  /// Create empty [ImagingStudyStatusBuilder] with element only
  factory ImagingStudyStatusBuilder.empty() =>
      ImagingStudyStatusBuilder._(valueString: '');

  /// Factory constructor to create [ImagingStudyStatusBuilder]
  /// from JSON.
  factory ImagingStudyStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingStudyStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ImagingStudyStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// registered
  static ImagingStudyStatusBuilder registered = ImagingStudyStatusBuilder._(
    valueString: 'registered',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Registered'.toFhirStringBuilder,
  );

  /// available
  static ImagingStudyStatusBuilder available = ImagingStudyStatusBuilder._(
    valueString: 'available',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Available'.toFhirStringBuilder,
  );

  /// cancelled
  static ImagingStudyStatusBuilder cancelled = ImagingStudyStatusBuilder._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static ImagingStudyStatusBuilder entered_in_error =
      ImagingStudyStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static ImagingStudyStatusBuilder unknown = ImagingStudyStatusBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ImagingStudyStatusBuilder elementOnly =
      ImagingStudyStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ImagingStudyStatusBuilder> values = [
    registered,
    available,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImagingStudyStatusBuilder clone() => ImagingStudyStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ImagingStudyStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ImagingStudyStatusBuilder._(
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
  ImagingStudyStatusBuilder copyWith({
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
        'Invalid input for ImagingStudyStatus: $newValue',
      );
    }
    return ImagingStudyStatusBuilder._(
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
