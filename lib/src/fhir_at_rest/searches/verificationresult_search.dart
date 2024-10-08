// This file is auto-generated. Do not edit directly.
class VerificationResultSearch {
  final Map<String, String> parameters = <String, String>{};
  VerificationResultSearch add(String parameter, String value) {
    parameters[parameter] = value;
    return this;
  }

  String buildQuery() {
    return parameters.entries
        .map((MapEntry<String, String> e) => '${e.key}=${e.value}')
        .join('&');
  }
}
