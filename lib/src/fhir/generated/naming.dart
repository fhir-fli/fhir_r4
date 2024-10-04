import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class NamingSystem {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final String responsible;
  final PrimitiveElement responsibleElement;
  final CodeableConcept type;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final String usage;
  final PrimitiveElement usageElement;
  final List<NamingSystemUniqueId> uniqueId;
}

@Data()
@JsonCodable()
class NamingSystemUniqueId {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String value;
  final PrimitiveElement valueElement;
  final FhirBoolean preferred;
  final PrimitiveElement preferredElement;
  final String comment;
  final PrimitiveElement commentElement;
  final Period period;
}


