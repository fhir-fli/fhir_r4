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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final String responsible;
  final PrimitiveElement Responsible;
  final CodeableConcept type;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final String usage;
  final PrimitiveElement Usage;
  final List<NamingSystemUniqueId> uniqueId;
}

@Data()
@JsonCodable()
class NamingSystemUniqueId {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final String value;
  final PrimitiveElement Value;
  final FhirBoolean preferred;
  final PrimitiveElement Preferred;
  final String comment;
  final PrimitiveElement Comment;
  final Period period;
}


