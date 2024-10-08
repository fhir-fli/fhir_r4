// This file is auto-generated. Do not edit directly.
import '../../../fhir_r4.dart';

class SearchLinkage {
  final Map<String, String> parameters = <String, String>{};
  SearchLinkage add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
