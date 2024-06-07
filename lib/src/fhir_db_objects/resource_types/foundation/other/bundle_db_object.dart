import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class BundleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> timestamp = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> timestampElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUnsignedIntDbObject> total = ToOne<FhirUnsignedIntDbObject>();
  final ToOne<PrimitiveElementDbObject> totalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<BundleLinkDbObject> link = ToMany<BundleLinkDbObject>();
  final ToMany<BundleEntryDbObject> entry = ToMany<BundleEntryDbObject>();
  final ToOne<SignatureDbObject> signature = ToOne<SignatureDbObject>();
  BundleDbObject({required this.id});
}

@Entity()
class BundleLinkDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> relation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> relationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  BundleLinkDbObject({required this.id});
}

@Entity()
class BundleEntryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<BundleLinkDbObject> link = ToMany<BundleLinkDbObject>();
  final ToOne<FhirUriDbObject> fullUrl = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> fullUrlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ResourceDbObject> resource = ToOne<ResourceDbObject>();
  final ToOne<BundleSearchDbObject> search = ToOne<BundleSearchDbObject>();
  final ToOne<BundleRequestDbObject> request = ToOne<BundleRequestDbObject>();
  final ToOne<BundleResponseDbObject> response =
      ToOne<BundleResponseDbObject>();
  BundleEntryDbObject({required this.id});
}

@Entity()
class BundleSearchDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> score = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> scoreElement =
      ToOne<PrimitiveElementDbObject>();
  BundleSearchDbObject({required this.id});
}

@Entity()
class BundleRequestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> method = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> methodElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> ifNoneMatch = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> ifNoneMatchElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> ifModifiedSince =
      ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> ifModifiedSinceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> ifMatch = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> ifMatchElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> ifNoneExist = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> ifNoneExistElement =
      ToOne<PrimitiveElementDbObject>();
  BundleRequestDbObject({required this.id});
}

@Entity()
class BundleResponseDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> status = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> location = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> locationElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> etag = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> etagElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> lastModified = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> lastModifiedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ResourceDbObject> outcome = ToOne<ResourceDbObject>();
  BundleResponseDbObject({required this.id});
}
