import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@Entity()
class PrimitiveElementDbObject {
  @Id()
  int id;

  List<FhirExtensionDbObject>? extension_ = [];

  PrimitiveElementDbObject({this.id = 0, this.extension_});

  // Convert to FHIR FhirExtension
  PrimitiveElement toFhir() {
    return PrimitiveElement(
      extension_: extension_?.map((e) => e.toFhir()).toList(),
    );
  }

  // Convert from FHIR FhirExtension
  factory PrimitiveElementDbObject.fromFhir(PrimitiveElement primitiveElement) {
    return PrimitiveElementDbObject(
      extension_: primitiveElement.extension_
          ?.map((FhirExtension e) => FhirExtensionDbObject.fromFhir(e))
          .toList(),
    );
  }
}
