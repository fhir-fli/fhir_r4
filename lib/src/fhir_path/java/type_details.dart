// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars

import 'dart:collection';

import 'package:fhir_r4/fhir_r4.dart';

import 'java.dart';

class TypeDetails {
  TypeDetails(this.collectionStatus, [List<String>? names]) {
    if (names != null) {
      for (final n in names) {
        types.add(ProfiledType(n));
      }
    }
  }

  TypeDetails.profiledTypes(
    this.collectionStatus,
    List<ProfiledType> profiledTypes,
  ) {
    types.addAll(profiledTypes);
  }

  TypeDetails.empty() {
    collectionStatus = CollectionStatus.singleton;
  }

  static const String FHIR_NS = 'http://hl7.org/fhir/StructureDefinition/';
  static const String FP_NS = 'http://hl7.org/fhirpath/';
  static const String FP_String = 'http://hl7.org/fhirpath/String';
  static const String FP_Boolean = 'http://hl7.org/fhirpath/Boolean';
  static const String FP_Integer = 'http://hl7.org/fhirpath/Integer';
  static const String FP_Decimal = 'http://hl7.org/fhirpath/Decimal';
  static const String FP_Quantity = 'http://hl7.org/fhirpath/Quantity';
  static const String FP_DateTime = 'http://hl7.org/fhirpath/DateTime';
  static const String FP_Time = 'http://hl7.org/fhirpath/Time';
  static const String FP_SimpleTypeInfo =
      'http://hl7.org/fhirpath/SimpleTypeInfo';
  static const String FP_ClassInfo = 'http://hl7.org/fhirpath/ClassInfo';
  static final Set<String> FP_NUMBERS =
      HashSet<String>.from([FP_Integer, FP_Decimal]);

  List<ProfiledType> types = [];
  CollectionStatus? collectionStatus;
  Set<String>? targets;
  bool choice = false;

  String addType(String n) {
    final pt = ProfiledType(n);
    final res = pt.uri;
    addProfiledType(pt);
    return res;
  }

  String addTypeWithProfile(String n, String p) {
    final pt = ProfiledType(n)..addProfile(p);
    final res = pt.uri;
    addProfiledType(pt);
    return res;
  }

  void addProfiledType(ProfiledType pt) {
    for (final et in types) {
      if (et.uri == pt.uri) {
        et.profiles ??= [];
        pt.profiles?.forEach((p) {
          if (!et.profiles!.contains(p)) {
            et.profiles!.add(p);
          }
        });
        et.bindings ??= [];
        pt.bindings?.forEach((b) {
          if (!et.bindings!.contains(b)) {
            et.bindings!.add(b);
          }
        });
        return;
      }
    }
    types.add(pt);
  }

  void addTypes(List<String> names) {
    for (final n in names) {
      addProfiledType(ProfiledType(n));
    }
  }

  bool hasType(String n) {
    final t = ProfiledType.ns(n);
    return types.any((pt) => pt.uri == t);
  }

  bool hasTypes(List<String> tn) {
    for (final n in tn) {
      var t = ProfiledType.ns(n);
      if (typesContains(t)) {
        return true;
      }
      if (n.existsInList({
        'boolean',
        'string',
        'integer',
        'decimal',
        'Quantity',
        'dateTime',
        'time',
        'ClassInfo',
        'SimpleTypeInfo',
      })) {
        t = '$FP_NS${n.capitalize()}';
        if (typesContains(t)) return true;
      }
    }
    return false;
  }

  bool typesContains(String t) {
    for (final pt in types) {
      if (pt.uri == t) return true;
    }
    return false;
  }

  bool hasTypeFromWorker(IWorkerContext context, List<String> tn) {
    for (final n in tn) {
      var t = ProfiledType.ns(n);
      if (typesContains(t)) {
        return true;
      }
      if ([
        'boolean',
        'string',
        'integer',
        'decimal',
        'Quantity',
        'dateTime',
        'time',
        'ClassInfo',
        'SimpleTypeInfo',
      ].contains(n)) {
        t = '$FP_NS${n.capitalize()}';
        if (typesContains(t)) {
          return true;
        }
      }
    }

    for (final n in tn) {
      String? tail;
      if (n.contains('#')) {
        tail = n.substring(n.indexOf('#') + 1);
        tail = tail.substring(tail.indexOf('.'));
      }
      final t = ProfiledType.ns(n);
      var sd = context.fetchResource<StructureDefinition>(t);
      while (sd?.url != null) {
        if (tail == null && typesContains(sd!.url!.toString())) {
          return true;
        }
        if (tail == null &&
            getSystemType(sd!.url!.toString()) != null &&
            typesContains(getSystemType(sd.url!.toString())!)) {
          return true;
        }
        if (tail != null && typesContains('${sd!.url}#${sd.type}$tail')) {
          return true;
        }
        if (sd!.baseDefinition != null) {
          if (sd.type.toString() == 'uri') {
            sd = context.fetchResource<StructureDefinition>(
              'http://hl7.org/fhir/StructureDefinition/string',
            );
          } else {
            sd = context.fetchResource<StructureDefinition>(
              sd.baseDefinition!.toString(),
            );
          }
        } else {
          sd = null;
        }
      }
    }

    return false;
  }

  bool hasTypeInSet(Set<String> tn) {
    for (final n in tn) {
      final t = ProfiledType.ns(n);
      if (types.any((pt) => pt.uri == t)) {
        return true;
      }
    }
    return false;
  }

  TypeDetails union(TypeDetails right) {
    final result = TypeDetails(
      right.collectionStatus == CollectionStatus.unordered ||
              collectionStatus == CollectionStatus.unordered
          ? CollectionStatus.unordered
          : CollectionStatus.ordered,
    );
    types.forEach(result.addProfiledType);
    right.types.forEach(result.addProfiledType);
    return result;
  }

  TypeDetails intersect(TypeDetails right) {
    final result = TypeDetails(
      right.collectionStatus == CollectionStatus.unordered ||
              collectionStatus == CollectionStatus.unordered
          ? CollectionStatus.unordered
          : CollectionStatus.ordered,
    );
    for (final pt in types) {
      if (right.types.any((r) => r.uri == pt.uri)) {
        result.addProfiledType(pt);
      }
    }
    return result;
  }

  bool hasNoTypes() {
    return types.isEmpty;
  }

  Set<String> getTypes() {
    return HashSet<String>.from(types.map((pt) => pt.uri));
  }

  TypeDetails toSingleton() {
    final result = TypeDetails(CollectionStatus.singleton);
    result.types.addAll(types);
    return result;
  }

  TypeDetails toOrdered() {
    final result = TypeDetails(CollectionStatus.ordered);
    result.types.addAll(types);
    return result;
  }

  TypeDetails toUnordered() {
    final result = TypeDetails(CollectionStatus.unordered);
    result.types.addAll(types);
    return result;
  }

  void update(TypeDetails source) {
    for (final pt in source.types) {
      addProfiledType(pt);
    }
    collectionStatus ??= source.collectionStatus;
    if (source.collectionStatus == CollectionStatus.unordered) {
      collectionStatus = CollectionStatus.unordered;
    }
    if (source.targets != null) {
      targets ??= <String>{};
      targets!.addAll(source.targets!);
    }
    if (source.choice) {
      choice = true;
    }
  }

  TypeDetails copy() {
    final copy = TypeDetails(collectionStatus)
      ..types = List<ProfiledType>.from(types)
      ..targets = targets != null ? Set<String>.from(targets!) : null
      ..choice = choice;
    return copy;
  }

  bool matches(TypeDetails other) {
    return collectionStatus == other.collectionStatus &&
        types.length == other.types.length &&
        types.every(
          (type) => other.types.any(
            (otherType) => otherType.uri == type.uri,
          ),
        );
  }

  void addTarget(String url) {
    targets ??= <String>{};
    targets!.add(url);
  }

  Set<String>? getTargets() {
    return targets;
  }

  void addTargets(Set<String> src) {
    targets ??= <String>{};
    targets!.addAll(src);
  }

  String describe() {
    return getTypes().toString();
  }

  String getType() {
    return types.isNotEmpty ? types.first.uri : '';
  }

  bool hasBinding() {
    return types.any((pt) => pt.hasBindings());
  }

  dynamic getBinding() {
    for (final pt in types) {
      if (pt.hasBindings()) {
        return pt.bindings?.first;
      }
    }
    return null;
  }

  @override
  String toString() {
    return '${collectionStatus ?? CollectionStatus.singleton}: ${getTypes()}';
  }

  bool isList() {
    return collectionStatus != null &&
        collectionStatus != CollectionStatus.singleton;
  }

  // ignore: avoid_positional_boolean_parameters, use_setters_to_change_properties
  void setChoice(bool b) {
    choice = b;
  }

  bool isChoice() {
    return choice;
  }

  bool isEmpty() {
    return types.isEmpty;
  }

  List<String> getProfiles(String t) {
    final u = ProfiledType.ns(t);
    for (final pt in types) {
      if (u == pt.uri) {
        return pt.profiles ?? [];
      }
    }
    return [];
  }

  bool contains(TypeDetails other) {
    if (other.collectionStatus != collectionStatus) {
      return false;
    }
    for (final pt in other.types) {
      if (!types.any((t) => t.uri == pt.uri)) {
        return false;
      }
    }
    return true;
  }

  String? getSystemType(String url) {
    if (url.startsWith('http://hl7.org/fhir/StructureDefinition/')) {
      final code = url.substring(40);
      if ([
        'string',
        'boolean',
        'integer',
        'decimal',
        'dateTime',
        'time',
        'Quantity',
      ].contains(code)) {
        return '${TypeDetails.FP_NS}${code[0].toUpperCase()}${code.substring(1)}';
      }
    }
    return null;
  }
}

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

class FHIRLexerException implements Exception {
  FHIRLexerException(this.message, this.location);

  final String message;
  final SourceLocation location;

  @override
  String toString() => 'FHIRLexerException: $message';
}
