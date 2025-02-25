// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the ImagingStudy.
class ImagingStudyStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ImagingStudyStatus._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [ImagingStudyStatus] with element only
  factory ImagingStudyStatus.empty() => ImagingStudyStatus._('');

  /// Factory constructor to create [ImagingStudyStatus] from JSON.
  factory ImagingStudyStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingStudyStatus cannot be constructed from JSON.',
      );
    }
    return ImagingStudyStatus._(
      value,
      element: element,
    );
  }

  /// registered
  static final ImagingStudyStatus registered = ImagingStudyStatus._(
    'registered',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Registered'.toFhirString,
  );

  /// available
  static final ImagingStudyStatus available = ImagingStudyStatus._(
    'available',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Available'.toFhirString,
  );

  /// cancelled
  static final ImagingStudyStatus cancelled = ImagingStudyStatus._(
    'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// entered_in_error
  static final ImagingStudyStatus entered_in_error = ImagingStudyStatus._(
    'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final ImagingStudyStatus unknown = ImagingStudyStatus._(
    'unknown',
    system: 'http://hl7.org/fhir/ValueSet/imagingstudy-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ImagingStudyStatus elementOnly = ImagingStudyStatus._('');

  /// List of all enum-like values
  static final List<ImagingStudyStatus> values = [
    registered,
    available,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImagingStudyStatus clone() => ImagingStudyStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImagingStudyStatus withElement(Element? newElement) {
    return ImagingStudyStatus._(
      value,
      element: newElement,
    );
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
  ImagingStudyStatus copyWith({
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
    return ImagingStudyStatus._(
      newValue ?? value,
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
