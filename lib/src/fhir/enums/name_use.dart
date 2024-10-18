// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The use of a human name.
enum NameUse {
  /// Display: Usual
  /// Definition: Known as/conventional/the one you normally use.
  usual('usual'),

  /// Display: Official
  /// Definition: The formal name as registered in an official (government) registry, but which name might not be commonly used. May be called "legal name".
  official('official'),

  /// Display: Temp
  /// Definition: A temporary name. Name.period can provide more detailed information. This may also be used for temporary names assigned at birth or in emergency situations.
  temp('temp'),

  /// Display: Nickname
  /// Definition: A name that is used to address the person in an informal manner, but is not part of their formal or usual name.
  nickname('nickname'),

  /// Display: Anonymous
  /// Definition: Anonymous assigned name, alias, or pseudonym (used to protect a person's identity for privacy reasons).
  anonymous('anonymous'),

  /// Display: Old
  /// Definition: This name is no longer in use (or was never correct, but retained for records).
  old('old'),

  /// Display: Name changed for Marriage
  /// Definition: A name used prior to changing name because of marriage. This name use is for use by applications that collect and store names that were used prior to a marriage. Marriage naming customs vary greatly around the world, and are constantly changing. This term is not gender specific. The use of this term does not imply any particular history for a person's name.
  maiden('maiden'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const NameUse(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [NameUse] instances.
  static NameUse fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly.withElement(
        element,
      );
    }
    return NameUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  NameUse withElement(Element? newElement) {
    return NameUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
