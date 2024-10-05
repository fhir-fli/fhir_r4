abstract class FhirBase {
  // Constructor allowing fhirType to be passed in
  FhirBase({required this.fhirType});

  // FHIR type of the resource (e.g., 'Patient', 'Observation')
  final String fhirType;

  // User appended data items - allow users to add extra information to the class
  final Map<String, dynamic> _userData = <String, dynamic>{};

  // Round tracking xml comments for testing convenience
  final List<String> _formatCommentsPre = <String>[];
  final List<String> _formatCommentsPost = <String>[];

  // JSON and YAML Methods
  dynamic toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    namedChildren.forEach((String key, FhirBase child) {
      json[key] = child.toJson();
    });
    return json;
  }

  dynamic toJsonWithType() {
    final dynamic json = toJson();
    if (json is Map<String, dynamic>) {
      json['fhirType'] = fhirType;
    }
    return json;
  }

  dynamic toYaml(); // To be implemented by subclasses
  String toJsonString(); // To be implemented by subclasses

  // Property changed event
  final Map<String, List<void Function()>> _propertyChanged =
      <String, List<void Function()>>{};

  // Annotations
  final List<dynamic> _annotations = <dynamic>[];

  // User Data Methods
  dynamic getUserData(String name) => _userData[name];

  void setUserData(String name, dynamic value) {
    if (value != null) {
      _userData[name] = value;
    }
  }

  void clearUserData(String name) {
    _userData.remove(name);
  }

  bool hasUserData(String name) => _userData.containsKey(name);

  String? getUserString(String name) {
    final dynamic data = getUserData(name);
    return data?.toString();
  }

  int getUserInt(String name) {
    final dynamic data = getUserData(name);
    return data is int ? data : 0;
  }

  // Format Comments Methods
  List<String> get formatCommentsPre => _formatCommentsPre;

  List<String> get formatCommentsPost => _formatCommentsPost;

  bool hasFormatComment() =>
      _formatCommentsPre.isNotEmpty || _formatCommentsPost.isNotEmpty;

  // Annotations Methods
  void addAnnotation(dynamic annotation) {
    _annotations.add(annotation);
  }

  void removeAnnotations(Type type) {
    _annotations.removeWhere((dynamic element) => element.runtimeType == type);
  }

  Iterable<dynamic> annotations(Type type) {
    return _annotations.where((dynamic element) => element.runtimeType == type);
  }

  // Property Changed Methods
  void addPropertyChangedListener(String property, void Function() listener) {
    _propertyChanged
        .putIfAbsent(property, () => <void Function()>[])
        .add(listener);
  }

  void removePropertyChangedListener(
      String property, void Function() listener) {
    _propertyChanged[property]?.remove(listener);
  }

  void notifyPropertyChanged(String property) {
    if (_propertyChanged.containsKey(property)) {
      for (final void Function() listener in _propertyChanged[property]!) {
        listener();
      }
    }
  }

  // Deep Copy and Comparison Methods
  FhirBase deepCopy() {
    final FhirBase copy = clone();
    if (_annotations.isNotEmpty) {
      copy._annotations.addAll(_annotations);
    }
    return copy;
  }

  static bool compareDeep(FhirBase? e1, FhirBase? e2,
      {bool allowNull = false}) {
    if (allowNull) {
      final bool noLeft = e1 == null || e1.isEmpty();
      final bool noRight = e2 == null || e2.isEmpty();
      if (noLeft && noRight) {
        return true;
      }
    }

    if (e1 == null || e2 == null) {
      return false;
    }

    if (e2.isMetadataBased() && !e1.isMetadataBased()) {
      // Respect existing order for debugging consistency; outcome must be the same either way
      return e2.equalsDeep(e1);
    } else {
      return e1.equalsDeep(e2);
    }
  }

  bool compareDeepLists<T extends FhirBase>(List<T>? list1, List<T>? list2) {
    if (list1 == null && list2 == null) {
      return true; // Both are null, so they're considered equal
    }
    if (list1 == null || list2 == null || list1.length != list2.length) {
      return false; // If one is null or they have different lengths, they're not equal
    }

    // Compare each element in the lists
    for (int i = 0; i < list1.length; i++) {
      if (!list1[i].equalsDeep(list2[i])) {
        return false;
      }
    }

    return true;
  }

  bool equalsDeep(FhirBase? other) {
    return other != null;
  }

  bool isMetadataBased() {
    return false;
  }

  bool isExactly(FhirBase other) => other.runtimeType == runtimeType;

  bool matches(FhirBase other) => other.runtimeType == runtimeType;

  // Abstract Method to be implemented by subclasses
  FhirBase clone();

  // Child Elements Methods
  List<FhirBase> children = <FhirBase>[];

  void addChild(FhirBase child) {
    children.add(child);
  }

  Map<String, FhirBase> namedChildren = <String, FhirBase>{};

  FhirBase? getChildByName(String name) => namedChildren[name];

  bool tryGetValue(String key, dynamic value) => false;

  // Validation Methods
  List<String> validate() => <String>[];

  // Additional utility methods
  bool get isPrimitive => false;

  String? primitiveValue() => null;

  bool isEmpty() =>
      _userData.isEmpty && _annotations.isEmpty && children.isEmpty;
}
