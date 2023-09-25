// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeInputStruct extends BaseStruct {
  RecipeInputStruct({
    String? ingredients,
    String? extraInput,
    String? dayTime,
    String? timeToCook,
    String? levelofCook,
  })  : _ingredients = ingredients,
        _extraInput = extraInput,
        _dayTime = dayTime,
        _timeToCook = timeToCook,
        _levelofCook = levelofCook;

  // "Ingredients" field.
  String? _ingredients;
  String get ingredients => _ingredients ?? '';
  set ingredients(String? val) => _ingredients = val;
  bool hasIngredients() => _ingredients != null;

  // "extraInput" field.
  String? _extraInput;
  String get extraInput => _extraInput ?? '';
  set extraInput(String? val) => _extraInput = val;
  bool hasExtraInput() => _extraInput != null;

  // "dayTime" field.
  String? _dayTime;
  String get dayTime => _dayTime ?? '';
  set dayTime(String? val) => _dayTime = val;
  bool hasDayTime() => _dayTime != null;

  // "timeToCook" field.
  String? _timeToCook;
  String get timeToCook => _timeToCook ?? '';
  set timeToCook(String? val) => _timeToCook = val;
  bool hasTimeToCook() => _timeToCook != null;

  // "levelofCook" field.
  String? _levelofCook;
  String get levelofCook => _levelofCook ?? '';
  set levelofCook(String? val) => _levelofCook = val;
  bool hasLevelofCook() => _levelofCook != null;

  static RecipeInputStruct fromMap(Map<String, dynamic> data) =>
      RecipeInputStruct(
        ingredients: data['Ingredients'] as String?,
        extraInput: data['extraInput'] as String?,
        dayTime: data['dayTime'] as String?,
        timeToCook: data['timeToCook'] as String?,
        levelofCook: data['levelofCook'] as String?,
      );

  static RecipeInputStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RecipeInputStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Ingredients': _ingredients,
        'extraInput': _extraInput,
        'dayTime': _dayTime,
        'timeToCook': _timeToCook,
        'levelofCook': _levelofCook,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Ingredients': serializeParam(
          _ingredients,
          ParamType.String,
        ),
        'extraInput': serializeParam(
          _extraInput,
          ParamType.String,
        ),
        'dayTime': serializeParam(
          _dayTime,
          ParamType.String,
        ),
        'timeToCook': serializeParam(
          _timeToCook,
          ParamType.String,
        ),
        'levelofCook': serializeParam(
          _levelofCook,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecipeInputStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecipeInputStruct(
        ingredients: deserializeParam(
          data['Ingredients'],
          ParamType.String,
          false,
        ),
        extraInput: deserializeParam(
          data['extraInput'],
          ParamType.String,
          false,
        ),
        dayTime: deserializeParam(
          data['dayTime'],
          ParamType.String,
          false,
        ),
        timeToCook: deserializeParam(
          data['timeToCook'],
          ParamType.String,
          false,
        ),
        levelofCook: deserializeParam(
          data['levelofCook'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecipeInputStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecipeInputStruct &&
        ingredients == other.ingredients &&
        extraInput == other.extraInput &&
        dayTime == other.dayTime &&
        timeToCook == other.timeToCook &&
        levelofCook == other.levelofCook;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([ingredients, extraInput, dayTime, timeToCook, levelofCook]);
}

RecipeInputStruct createRecipeInputStruct({
  String? ingredients,
  String? extraInput,
  String? dayTime,
  String? timeToCook,
  String? levelofCook,
}) =>
    RecipeInputStruct(
      ingredients: ingredients,
      extraInput: extraInput,
      dayTime: dayTime,
      timeToCook: timeToCook,
      levelofCook: levelofCook,
    );
