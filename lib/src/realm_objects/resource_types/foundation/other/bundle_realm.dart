import 'package:realm/realm.dart';
@RealmModel()
class _BundleRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirInstantRealm timestamp;
  late _PrimitiveElementRealm timestampElement;
  late _FhirUnsignedIntRealm total;
  late _PrimitiveElementRealm totalElement;
  late List<_BundleLinkRealm> link;
  late List<_BundleEntryRealm> entry;
  late _SignatureRealm signature;
}
@RealmModel()
class _BundleLinkRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String relation;
  late _PrimitiveElementRealm relationElement;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
}
@RealmModel()
class _BundleEntryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_BundleLinkRealm> link;
  late _FhirUriRealm fullUrl;
  late _PrimitiveElementRealm fullUrlElement;
  late _ResourceRealm resource;
  late _BundleSearchRealm search;
  late _BundleRequestRealm request;
  late _BundleResponseRealm response;
}
@RealmModel()
class _BundleSearchRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm mode;
  late _PrimitiveElementRealm modeElement;
  late _FhirDecimalRealm score;
  late _PrimitiveElementRealm scoreElement;
}
@RealmModel()
class _BundleRequestRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm method;
  late _PrimitiveElementRealm methodElement;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late String ifNoneMatch;
  late _PrimitiveElementRealm ifNoneMatchElement;
  late _FhirInstantRealm ifModifiedSince;
  late _PrimitiveElementRealm ifModifiedSinceElement;
  late String ifMatch;
  late _PrimitiveElementRealm ifMatchElement;
  late String ifNoneExist;
  late _PrimitiveElementRealm ifNoneExistElement;
}
@RealmModel()
class _BundleResponseRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String status;
  late _PrimitiveElementRealm statusElement;
  late _FhirUriRealm location;
  late _PrimitiveElementRealm locationElement;
  late String etag;
  late _PrimitiveElementRealm etagElement;
  late _FhirInstantRealm lastModified;
  late _PrimitiveElementRealm lastModifiedElement;
  late _ResourceRealm outcome;
}
