// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';

import 'java.dart';

extension FhirPathStringExtension on String {
  String hashTail() {
    return contains('#') ? '' : substring(lastIndexOf('/') + 1);
  }

  bool isUpperCase() {
    return length == 1 && contains(RegExp(r'^[A-Z]$'));
  }

  bool isAbsoluteUrl() {
    if (!contains(':')) return false;

    final scheme = substring(0, indexOf(':'));
    final details = substring(indexOf(':') + 1);

    return (['http', 'https', 'urn', 'file'].contains(scheme) ||
            (scheme.isToken() && scheme == scheme.toLowerCase()) ||
            startsWithInList([
              'urn:iso:',
              'urn:iso-iec:',
              'urn:iso-cie:',
              'urn:iso-astm:',
              'urn:iso-ieee:',
              'urn:iec:',
            ])) &&
        details.isNotEmpty &&
        !details.contains(' '); // rfc5141
  }

  bool startsWithInList(List<String?> list) {
    for (final l in list) {
      if (l != null && startsWith(l)) return true;
    }
    return false;
  }

  bool isToken() {
    if (isEmpty) return false;
    if (!this[0].isAlphabetic()) return false;

    for (var i = 1; i < length; i++) {
      final char = this[i];
      if (!(char.isAlphabetic() ||
          char.isDigit() ||
          char == '_' ||
          char == '[' ||
          char == ']')) {
        return false;
      }
    }
    return true;
  }

  bool isAlphabetic() {
    final code = codeUnitAt(0);
    return (code >= 65 && code <= 90) ||
        (code >= 97 && code <= 122); // A-Z, a-z
  }

  bool isDigit() {
    final code = codeUnitAt(0);
    return code >= 48 && code <= 57; // 0-9
  }

  String uncapitalize() {
    if (isEmpty) return this;
    if (length == 1) return toLowerCase();

    return substring(0, 1).toLowerCase() + substring(1);
  }

  String sdNs(String? overrideVersionNs) {
    if (isAbsoluteUrl()) {
      return this;
    } else if (overrideVersionNs != null) {
      return [overrideVersionNs, this].pathURL();
    } else {
      return 'http://hl7.org/fhir/StructureDefinition/$this';
    }
  }

  String escapeJson([
    bool escapeUnicodeWhitespace = true,
  ]) {
    final b = StringBuffer();
    for (final c in runes) {
      switch (c) {
        case 0x0D:
          b.write(r'\r');
        case 0x0A:
          b.write(r'\n');
        case 0x09:
          b.write(r'\t');
        case 0x22:
          b.write(r'\"');
        case 0x5C:
          b.write(r'\\');
        case 0x20:
          b.write(' ');
        default:
          if ((c == 0x0D || c == 0x0A) ||
              (c.isWhitespace() && escapeUnicodeWhitespace)) {
            b.write('\\u${c.toRadixString(16).padLeft(4, '0')}');
          } else if (c < 32) {
            b.write('\\u${c.toRadixString(16).padLeft(4, '0')}');
          } else {
            b.write(String.fromCharCode(c));
          }
      }
    }
    return b.toString();
  }

  bool isWhiteSpace() {
    return [
      '\u0009',
      '\n',
      '\u000B',
      '\u000C',
      '\r',
      '\u0020',
      '\u0085',
      '\u00A0',
      '\u1680',
      '\u2000',
      '\u2001',
      '\u2002',
      '\u2003',
      '\u2004',
      '\u2005',
      '\u2006',
      '\u2007',
      '\u2008',
      '\u2009',
      '\u200A',
      '\u2028',
      '\u2029',
      '\u202F',
      '\u205F',
      '\u3000',
    ].contains(this);
  }

  bool isInteger() {
    if (trim().isEmpty) {
      return false;
    }

    final value = startsWith('-') ? substring(1) : this;
    if (value.isEmpty) {
      return false;
    }

    for (var i = 0; i < value.length; i++) {
      if (!RegExp(r'\d').hasMatch(value[i])) {
        return false;
      }
    }

    // Check bounds -2,147,483,648..2,147,483,647
    if (value.length > 10) {
      return false;
    }

    if (startsWith('-')) {
      if (value.length == 10 && value.compareTo('2147483648') > 0) {
        return false;
      }
    } else {
      if (value.length == 10 && value.compareTo('2147483647') > 0) {
        return false;
      }
    }

    return true;
  }

  String stripBOM() {
    return replaceAll('\uFEFF', '');
  }

  bool noString() {
    return isEmpty;
  }

  String? capitalize() {
    if (isEmpty) return this;
    if (length == 1) return toUpperCase();

    return substring(0, 1).toUpperCase() + substring(1);
  }

  String? unescapeJson() {
    final b = StringBuffer();
    var i = 0;
    while (i < length) {
      if (this[i] == r'\') {
        i++;
        final ch = this[i];
        switch (ch) {
          case '"':
            b.write('"');
          case r'\':
            b.write(r'\');
          case '/':
            b.write('/');
          case 'b':
            b.write('\b');
          case 'f':
            b.write('\f');
          case 'n':
            b.write('\n');
          case 'r':
            b.write('\r');
          case 't':
            b.write('\t');
          case 'u':
            final hex = substring(i + 1, i + 5);
            b.write(String.fromCharCode(int.parse(hex, radix: 16)));
            i += 4;
          default:
            throw Exception('Unknown JSON escape \\$ch');
        }
      } else {
        b.write(this[i]);
      }
      i++;
    }
    return b.toString();
  }
}

extension FhirPathIntExtension on int {
  bool isWhitespace() {
    return this == 0x20 || this == 0x09 || this == 0x0A || this == 0x0D;
  }
}

extension FhirPathStringsExtension on List<String?> {
  String pathURL() {
    final s = StringBuffer();
    var d = false;
    for (final arg in this) {
      if (arg != null) {
        if (!d) {
          d = !arg.noString();
        } else if (!s.toString().endsWith('/') && !arg.startsWith('/')) {
          s.write('/');
        }
        s.write(arg);
      }
    }
    return s.toString();
  }
}

bool isWhitespace(dynamic value) {
  if (value is String) {
    return value.isWhiteSpace();
  } else if (value is int) {
    return value.isWhitespace();
  } else {
    return false;
  }
}

class FunctionDetails {
  FunctionDetails(this.description, this.minParameters, this.maxParameters);

  String description;
  int minParameters;
  int maxParameters;

  String getDescription() {
    return description;
  }

  int getMinParameters() {
    return minParameters;
  }

  int getMaxParameters() {
    return maxParameters;
  }
}

class ProfileUtilities {
  ProfileUtilities(this.context) {
    if (context != null) {
      fpe = FHIRPathEngine(context!);
    }
  }

  IWorkerContext? context;
  FHIRPathEngine? fpe;
}

enum Equality {
  null_,
  true_,
  false_,
}

/// if the fhir path expressions are allowed to use constants beyond those
/// defined in the specification
/// the application can implement them by providing a constant resolver
abstract class IEvaluationContext {
  /// A constant reference - e.g. a reference to a name that must be resolved in
  /// context. The % will be removed from the constant name before this is
  /// invoked. Variables created with defineVariable will not be processed by
  /// resolveConstant (or resolveConstantType)
  ///
  /// This will also be called if the host invokes the FluentPath engine with a
  /// context of null
  ///
  /// @param appContext    - content passed into the fluent path engine
  /// @param name          - name reference to resolve
  /// @param beforeContext - whether this is being called before the name is
  ///                      resolved locally, or not
  /// @return the value of the reference (or null, if it's not valid, though can
  ///         throw an exception if desired)
  List<FhirBase> resolveConstant(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool beforeContext,
    bool explicitConstant,
  );

  TypeDetails resolveConstantType(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool explicitConstant,
  );

  /// when the .log() function is called
  ///
  /// @param argument
  /// @param focus
  /// @return
  bool log(String argument, List<FhirBase> focus);

  // extensibility for functions
  ///
  /// @param functionName
  /// @return null if the function is not known
  FunctionDetails resolveFunction(FHIRPathEngine engine, String functionName);

  /// Check the function parameters, and throw an error if they are incorrect,
  /// or return the type for the function
  ///
  /// @param functionName
  /// @param parameters
  /// @return
  TypeDetails checkFunction(
    FHIRPathEngine engine,
    Object appContext,
    String functionName,
    TypeDetails focus,
    List<TypeDetails> parameters,
  );

  /// @param appContext
  /// @param functionName
  /// @param parameters
  /// @return
  List<FhirBase> executeFunction(
    FHIRPathEngine engine,
    Object appContext,
    List<FhirBase> focus,
    String functionName,
    List<List<FhirBase>> parameters,
  );

  /// Implementation of resolve() function. Passed a string, return matching
  /// resource, if one is known - else null
  ///
  /// @appContext - passed in by the host to the FHIRPathEngine
  /// @param url the reference (Reference.reference or the value of the
  /// canonical
  /// @return
  /// @throws FHIRException
  FhirBase resolveReference(
    FHIRPathEngine engine,
    Object appContext,
    String url,
    FhirBase refContext,
  );

  bool conformsToProfile(
    FHIRPathEngine engine,
    Object appContext,
    FhirBase item,
    String url,
  );

  /// return the value set referenced by the url, which has been used in
  /// memberOf()
  ValueSet resolveValueSet(
    FHIRPathEngine engine,
    Object appContext,
    String url,
  );
}

class ExpressionNodeWithOffset {
  ExpressionNodeWithOffset(this.offset, this.node);

  int offset;
  ExpressionNode node;

  int getOffset() {
    return offset;
  }

  ExpressionNode getNode() {
    return node;
  }
}

class ExecutionContext {
  ExecutionContext(
    this.appInfo,
    this.focusResource,
    this.rootResource,
    this.context,
    this.thisItem,
  ) {
    index = 0;
  }

  final Object appInfo;
  final FhirBase focusResource;
  final FhirBase rootResource;
  final FhirBase context;
  final FhirBase thisItem;
  List<FhirBase>? total;
  int index = 0;
  Map<String, List<FhirBase>>? definedVariables;

  FhirBase getFocusResource() => focusResource;

  FhirBase getRootResource() => rootResource;

  FhirBase getThisItem() => thisItem;

  List<FhirBase>? getTotal() => total;

  void next() {
    index++;
  }

  FhirInteger getIndex() => FhirInteger(input: index);

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  List<FhirBase> getDefinedVariable(String name) {
    return definedVariables == null
        ? <FhirBase>[]
        : definedVariables![name] ?? <FhirBase>[];
  }

  void setDefinedVariable(
    IWorkerContext worker,
    String name,
    List<FhirBase> value,
  ) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [name]),
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [
          name,
        ]),
      );
    }

    definedVariables![name] = value;
  }
}

class ExecutionTypeContext {
  ExecutionTypeContext(
    this.appInfo,
    this.resource,
    this.context,
    this.thisItem,
  );

  final Object appInfo;
  final String resource;
  final TypeDetails? context;
  final TypeDetails thisItem;
  TypeDetails? total;
  Map<String, TypeDetails>? definedVariables;

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  TypeDetails? getDefinedVariable(String name) {
    return definedVariables?[name];
  }

  void setDefinedVariable(String name, TypeDetails value) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables![name] = value;
  }
}

bool isSystemVariable(String name) {
  if (['sct', 'loinc', 'ucum', 'resource', 'rootResource', 'context']
      .contains(name)) {
    return true;
  }
  return false;
}

class ElementDefinitionMatch {
  ElementDefinitionMatch(this.definition, this.fixedType);

  ElementDefinition? definition;
  String? fixedType;
}

extension ElementDefinitionExtension on ElementDefinition {
  bool hasContentReference() {
    return contentReference != null &&
        (contentReference!.value?.toString().isNotEmpty ?? false);
  }
}
