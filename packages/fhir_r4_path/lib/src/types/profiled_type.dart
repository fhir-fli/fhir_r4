// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars

import 'package:fhir_r4/fhir_r4.dart';
import 'type_details.dart';
class ProfiledType {

  ProfiledType(String n) : uri = ns(n);

  final String uri;
  List<String>? profiles;
  List<dynamic>? bindings;

  static String ns(String n) => n.startsWith('http://')
      ? n
      : 'http://hl7.org/fhir/StructureDefinition/$n';

  void addProfile(String profile) {
    profiles ??= [];
    profiles!.add(profile);
  }

  void addBinding(dynamic binding) {
    bindings ??= [];
    bindings!.add(binding);
  }

  bool hasBindings() => bindings != null && bindings!.isNotEmpty;

  String describeMin() {
    if (uri.startsWith(TypeDetails.FP_NS)) {
      return 'System.${uri.substring(TypeDetails.FP_NS.length)}';
    }
    if (uri.startsWith('http://hl7.org/fhir/StructureDefinition/')) {
      return 'FHIR.${uri.substring('http://hl7.org/fhir/StructureDefinition/'.length)}';
    }
    return uri;
  }

  void addProfiles(List<FhirCanonical> list) {
    profiles ??= <String>[];
    for (final u in list) {
      profiles!.add(u.toString());
    }
  }

  bool isSystemType() {
    return uri.startsWith(TypeDetails.FP_NS);
  }
}
