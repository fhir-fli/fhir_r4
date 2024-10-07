import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Binary extends DomainResource {
  Binary({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    required this.contentType,
    this.contentTypeElement,
    this.securityContext,
    this.data,
    this.dataElement,
  }) : super(resourceType: R4ResourceType.Binary);

  final FhirCode contentType;
  final Element? contentTypeElement;
  final Reference? securityContext;
  final FhirBase64Binary? data;
  final Element? dataElement;
  @override
  Binary clone() => throw UnimplementedError();
}
