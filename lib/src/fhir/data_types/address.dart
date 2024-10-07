import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Address] /// An address expressed using postal conventions (as opposed to GPS or other
/// location definition formats). This data type may be used to convey
/// addresses for use in delivering mail as well as for visiting locations
/// which might not be valid for mail delivery. There are a variety of postal
/// address formats defined around the world.
class Address extends DataType {
  Address({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    this.line,
    this.lineElement,
    this.city,
    this.cityElement,
    this.district,
    this.districtElement,
    this.state,
    this.stateElement,
    this.postalCode,
    this.postalCodeElement,
    this.country,
    this.countryElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// The purpose of this address.
  final FhirCode? use;
  final Element? useElement;

  /// [type] /// Distinguishes between physical addresses (those you can visit) and mailing
  /// addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.
  final FhirCode? type;
  final Element? typeElement;

  /// [text] /// Specifies the entire address as it should be displayed e.g. on a postal
  /// label. This may be provided instead of or as well as the specific parts.
  final FhirString? text;
  final Element? textElement;

  /// [line] /// This component contains the house number, apartment number, street name,
  /// street direction, P.O. Box number, delivery hints, and similar address
  /// information.
  final List<FhirString>? line;
  final List<Element>? lineElement;

  /// [city] /// The name of the city, town, suburb, village or other community or delivery
  /// center.
  final FhirString? city;
  final Element? cityElement;

  /// [district] /// The name of the administrative area (county).
  final FhirString? district;
  final Element? districtElement;

  /// [state] /// Sub-unit of a country with limited sovereignty in a federally organized
  /// country. A code may be used if codes are in common use (e.g. US 2 letter
  /// state codes).
  final FhirString? state;
  final Element? stateElement;

  /// [postalCode] /// A postal code designating a region defined by the postal service.
  final FhirString? postalCode;
  final Element? postalCodeElement;

  /// [country] /// Country - a nation as commonly understood or generally accepted.
  final FhirString? country;
  final Element? countryElement;

  /// [period] /// Time period when address was/is in use.
  final Period? period;
  @override
  Address clone() => throw UnimplementedError();
  Address copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? use,
    Element? useElement,
    FhirCode? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
    List<FhirString>? line,
    List<Element>? lineElement,
    FhirString? city,
    Element? cityElement,
    FhirString? district,
    Element? districtElement,
    FhirString? state,
    Element? stateElement,
    FhirString? postalCode,
    Element? postalCodeElement,
    FhirString? country,
    Element? countryElement,
    Period? period,
  }) {
    return Address(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      line: line ?? this.line,
      lineElement: lineElement ?? this.lineElement,
      city: city ?? this.city,
      cityElement: cityElement ?? this.cityElement,
      district: district ?? this.district,
      districtElement: districtElement ?? this.districtElement,
      state: state ?? this.state,
      stateElement: stateElement ?? this.stateElement,
      postalCode: postalCode ?? this.postalCode,
      postalCodeElement: postalCodeElement ?? this.postalCodeElement,
      country: country ?? this.country,
      countryElement: countryElement ?? this.countryElement,
      period: period ?? this.period,
    );
  }
}
