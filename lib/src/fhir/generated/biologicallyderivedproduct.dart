import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BiologicallyDerivedProduct {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode productCategory;
  final PrimitiveElement ProductCategory;
  final CodeableConcept productCode;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<Reference> request;
  final FhirInteger quantity;
  final PrimitiveElement Quantity;
  final List<Reference> parent;
  final BiologicallyDerivedProduct_Collection collection;
  final List<BiologicallyDerivedProductProcessing> processing;
  final BiologicallyDerivedProduct_Manipulation manipulation;
  final List<BiologicallyDerivedProductStorage> storage;
  const BiologicallyDerivedProduct({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.productCategory,
    this.ProductCategory,
    this.productCode,
    this.status,
    this.Status,
    this.request,
    this.quantity,
    this.Quantity,
    this.parent,
    this.collection,
    this.processing,
    this.manipulation,
    this.storage,
  });
}
