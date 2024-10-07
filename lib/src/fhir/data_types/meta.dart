import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class FhirMeta extends DataType {
  FhirMeta({
    super.id,
    super.extension_,
    this.versionId,
    this.versionIdElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.source,
    this.sourceElement,
    this.profile,
    this.profileElement,
    this.security,
    this.tag,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirId? versionId;
  final Element? versionIdElement;
  final FhirInstant? lastUpdated;
  final Element? lastUpdatedElement;
  final FhirUri? source;
  final Element? sourceElement;
  final List<FhirCanonical>? profile;
  final List<Element>? profileElement;
  final List<Coding>? security;
  final List<Coding>? tag;
  @override
  FhirMeta clone() => throw UnimplementedError();
}
