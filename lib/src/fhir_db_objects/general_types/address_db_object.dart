import 'package:objectbox/objectbox.dart';
import '../../../fhir_r4.dart';
import '../fhir_db_objects.dart';

@Entity()
class AddressDbObject {
  @Id(assignable: true)
  int id;
  String? fhirId;
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  String? use;
  final ToOne<PrimitiveElementDbObject> useElement =
      ToOne<PrimitiveElementDbObject>();
  String? type;
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  String? text;
  final ToOne<PrimitiveElementDbObject> textElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<StringDbObject> line = ToMany<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> lineElement =
      ToMany<PrimitiveElementDbObject>();
  String? city;
  final ToOne<PrimitiveElementDbObject> cityElement =
      ToOne<PrimitiveElementDbObject>();
  String? district;
  final ToOne<PrimitiveElementDbObject> districtElement =
      ToOne<PrimitiveElementDbObject>();
  String? state;
  final ToOne<PrimitiveElementDbObject> stateElement =
      ToOne<PrimitiveElementDbObject>();
  String? postalCode;
  final ToOne<PrimitiveElementDbObject> postalCodeElement =
      ToOne<PrimitiveElementDbObject>();
  String? country;
  final ToOne<PrimitiveElementDbObject> countryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();

  AddressDbObject({this.id = 0, this.fhirId});

  // Convert to FHIR Address
  Address toFhir() {
    return Address(
      id: fhirId,
      extension_: extension_.map((e) => e.toFhir()).toList(),
      use: use != null ? AddressUse.values.byName(use!) : null,
      useElement: useElement.target?.toFhir(),
      type: type != null ? AddressType.values.byName(type!) : null,
      typeElement: typeElement.target?.toFhir(),
      text: text,
      textElement: textElement.target?.toFhir(),
      line: line.map((e) => e.value).toList(),
      lineElement: lineElement.map((e) => e.toFhir()).toList(),
      city: city,
      cityElement: cityElement.target?.toFhir(),
      district: district,
      districtElement: districtElement.target?.toFhir(),
      state: state,
      stateElement: stateElement.target?.toFhir(),
      postalCode: postalCode,
      postalCodeElement: postalCodeElement.target?.toFhir(),
      country: country,
      countryElement: countryElement.target?.toFhir(),
      period: period.target?.toFhir(),
    );
  }

  // Convert from FHIR Address
  factory AddressDbObject.fromFhir(Address address) {
    final addressDbObject = AddressDbObject(fhirId: address.id);

    if (address.extension_ != null) {
      addressDbObject.extension_.addAll(
        address.extension_!.map((e) => FhirExtensionDbObject.fromFhir(e)),
      );
    }

    if (address.useElement != null) {
      addressDbObject.useElement.target =
          PrimitiveElementDbObject.fromFhir(address.useElement!);
    }

    addressDbObject.use = address.use?.name;

    if (address.typeElement != null) {
      addressDbObject.typeElement.target =
          PrimitiveElementDbObject.fromFhir(address.typeElement!);
    }

    addressDbObject.type = address.type?.name;

    if (address.textElement != null) {
      addressDbObject.textElement.target =
          PrimitiveElementDbObject.fromFhir(address.textElement!);
    }

    addressDbObject.text = address.text;

    if (address.line != null) {
      addressDbObject.line.addAll(
        address.line!.map((lineItem) => StringDbObject(value: lineItem)),
      );
    }

    if (address.lineElement != null) {
      addressDbObject.lineElement.addAll(
        address.lineElement!.map(
            (lineElement) => PrimitiveElementDbObject.fromFhir(lineElement)),
      );
    }

    if (address.cityElement != null) {
      addressDbObject.cityElement.target =
          PrimitiveElementDbObject.fromFhir(address.cityElement!);
    }

    addressDbObject.city = address.city;

    if (address.districtElement != null) {
      addressDbObject.districtElement.target =
          PrimitiveElementDbObject.fromFhir(address.districtElement!);
    }

    addressDbObject.district = address.district;

    if (address.stateElement != null) {
      addressDbObject.stateElement.target =
          PrimitiveElementDbObject.fromFhir(address.stateElement!);
    }

    addressDbObject.state = address.state;

    if (address.postalCodeElement != null) {
      addressDbObject.postalCodeElement.target =
          PrimitiveElementDbObject.fromFhir(address.postalCodeElement!);
    }

    addressDbObject.postalCode = address.postalCode;

    if (address.countryElement != null) {
      addressDbObject.countryElement.target =
          PrimitiveElementDbObject.fromFhir(address.countryElement!);
    }

    addressDbObject.country = address.country;

    if (address.period != null) {
      addressDbObject.period.target = PeriodDbObject.fromFhir(address.period!);
    }

    return addressDbObject;
  }
}
