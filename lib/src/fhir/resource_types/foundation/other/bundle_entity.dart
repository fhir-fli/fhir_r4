import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class BundleEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Bundle';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? identifier;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? timestamp;

  @ToOne()
  PrimitiveElementEntity? timestampElement;

  int? total;

  @ToOne()
  PrimitiveElementEntity? totalElement;

  @ToMany()
  List<BundleLinkEntity>? link;

  @ToMany()
  List<BundleEntryEntity>? entry;

  @ToOne()
  SignatureEntity? signature;
}

class BundleLinkEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? relation;

  @ToOne()
  PrimitiveElementEntity? relationElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;
}

class BundleEntryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<BundleLinkEntity>? link;

  String? fullUrl;

  @ToOne()
  PrimitiveElementEntity? fullUrlElement;

  @ToOne()
  ResourceEntity? resource;

  @ToOne()
  BundleSearchEntity? search;

  @ToOne()
  BundleRequestEntity? request;

  @ToOne()
  BundleResponseEntity? response;
}

class BundleSearchEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  double? score;

  @ToOne()
  PrimitiveElementEntity? scoreElement;
}

class BundleRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? method;

  @ToOne()
  PrimitiveElementEntity? methodElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  String? ifNoneMatch;

  @ToOne()
  PrimitiveElementEntity? ifNoneMatchElement;

  String? ifModifiedSince;

  @ToOne()
  PrimitiveElementEntity? ifModifiedSinceElement;

  String? ifMatch;

  @ToOne()
  PrimitiveElementEntity? ifMatchElement;

  String? ifNoneExist;

  @ToOne()
  PrimitiveElementEntity? ifNoneExistElement;
}

class BundleResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? location;

  @ToOne()
  PrimitiveElementEntity? locationElement;

  String? etag;

  @ToOne()
  PrimitiveElementEntity? etagElement;

  String? lastModified;

  @ToOne()
  PrimitiveElementEntity? lastModifiedElement;

  @ToOne()
  ResourceEntity? outcome;
}
