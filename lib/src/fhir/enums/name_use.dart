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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NameUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NameUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly.withElement(element);
    }
    return NameUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NameUse withElement(Element? newElement) {
    return NameUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
