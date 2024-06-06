import 'package:objectbox/objectbox.dart';
import '../../../fhir_r4.dart';
import '../fhir_db_objects.dart';

@Entity()
class PrimitiveElementDbObject {
  @Id(assignable: true)
  int id;
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();

  PrimitiveElementDbObject({this.id = 0});

  // Convert to FHIR PrimitiveElement
  PrimitiveElement toFhir() {
    return PrimitiveElement(
      extension_:
          extension_.map((FhirExtensionDbObject e) => e.toFhir()).toList(),
    );
  }

  // Convert from FHIR PrimitiveElement
  factory PrimitiveElementDbObject.fromFhir(PrimitiveElement primitiveElement) {
    final PrimitiveElementDbObject primitiveElementDbObject =
        PrimitiveElementDbObject();
    if (primitiveElement.extension_ != null) {
      primitiveElementDbObject.extension_.addAll(
        primitiveElement.extension_!
            .map((FhirExtension e) => FhirExtensionDbObject.fromFhir(e)),
      );
    }
    return primitiveElementDbObject;
  }
}
