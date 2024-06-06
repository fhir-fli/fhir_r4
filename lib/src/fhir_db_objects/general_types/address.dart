import 'package:objectbox/objectbox.dart';

import '../fhir_db_objects.dart';

@Entity()
class AddressDbObject {
  @Id(assignable: true)
  int id;

  String? addressId;

  String? use;

  // Relations
  final ToOne<PrimitiveElementDbObject> useElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PrimitiveElementDbObject> cityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PrimitiveElementDbObject> districtElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PrimitiveElementDbObject> stateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PrimitiveElementDbObject> postalCodeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PrimitiveElementDbObject> countryElement =
      ToOne<PrimitiveElementDbObject>();

  // Text field
  String? text;

  // Address components
  List<String>? line;

  final ToMany<PrimitiveElementDbObject> lineElement =
      ToMany<PrimitiveElementDbObject>();

  String? city;
  String? district;
  String? state;
  String? postalCode;
  String? country;

  // Period field
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();

  // Extensions
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();

  AddressDbObject({
    required this.id,
    this.addressId,
    this.use,
    this.text,
    this.city,
    this.district,
    this.state,
    this.postalCode,
    this.country,
  });
}
