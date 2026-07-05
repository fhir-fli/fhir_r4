// ignore_for_file: public_member_api_docs

import 'package:fhir_node/fhir_node.dart';

// ignore: constant_identifier_names
const String NS_SYSTEM_TYPE = 'http://hl7.org/fhirpath/System.';

class FHIRPathConstant {
  static bool isFHIRPathConstant(String string) {
    return string.isNotEmpty &&
        (string[0] == "'" ||
            string[0] == '"' ||
            string[0] == '@' ||
            string[0] == '%' ||
            string[0] == '-' ||
            string[0] == '+' ||
            (string[0].compareTo('0') >= 0 && string[0].compareTo('9') <= 0) ||
            string == 'true' ||
            string == 'false' ||
            string == '{}');
  }

  static bool isFHIRPathFixedName(String string) {
    return string.isNotEmpty && (string[0] == '`');
  }

  static bool isFHIRPathStringConstant(String string) {
    return string[0] == "'" || string[0] == '"' || string[0] == '`';
  }
}

/// Parse-time marker for an unresolved `%constant` / `@date` literal in the
/// expression tree. It is resolved (or an exception is thrown) before
/// evaluation results are produced, so it never appears in engine output.
/// Engine-owned: implements [FhirNode] directly rather than extending any
/// model class (mirrors Java, where FHIRConstant extends Base only because
/// Base is the node contract there).
class FHIRConstant implements FhirNode {
  FHIRConstant(this.value);

  static final BigInt serialVersionUID = BigInt.parse('-8933773658248269439');
  String value;
  String? idBase;

  @override
  String toString() => value;

  @override
  String get fhirType => '%constant';

  @override
  String get primitiveValue => value;

  @override
  bool get isPrimitive => false;

  @override
  bool get isResource => false;

  @override
  bool get isMetadataBased => false;

  @override
  bool hasType(List<String> names) {
    final t = fhirType;
    for (final n in names) {
      if (n.toLowerCase() == t.toLowerCase()) return true;
    }
    return false;
  }

  @override
  bool isEmpty() => false;

  @override
  bool equalsDeep(FhirNode? other) => other != null;

  @override
  List<FhirNode> getChildrenByName(String name, [bool checkValid = false]) {
    throw UnimplementedError();
  }

  @override
  List<String> listChildrenNames() => <String>[];

  @override
  FhirNode? getChildByName(String name) {
    final children = getChildrenByName(name);
    if (children.isEmpty) {
      return null;
    }
    if (children.length == 1) {
      return children.first;
    }
    throw Exception('Cannot get child value for $name');
  }
}
