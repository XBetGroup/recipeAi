import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/admob_util.dart' as admob;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'recipe_widget.dart' show RecipeWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RecipeModel extends FlutterFlowModel<RecipeWidget> {
  ///  Local state fields for this page.

  dynamic userInput;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [AdMob - Show Interstitial Ad] action in Container widget.
  bool? interstitialAdSuccess3Copy;
  // State field(s) for IngredientsInput widget.
  TextEditingController? ingredientsInputController;
  String? Function(BuildContext, String?)? ingredientsInputControllerValidator;
  // State field(s) for ExtraInput widget.
  TextEditingController? extraInputController;
  String? Function(BuildContext, String?)? extraInputControllerValidator;
  // State field(s) for TypeChoice widget.
  String? typeChoiceValue;
  FormFieldController<List<String>>? typeChoiceValueController;
  // State field(s) for TimeChoice widget.
  String? timeChoiceValue;
  FormFieldController<List<String>>? timeChoiceValueController;
  // State field(s) for LevelChoice widget.
  String? levelChoiceValue;
  FormFieldController<List<String>>? levelChoiceValueController;
  // Stores action output result for [AdMob - Show Interstitial Ad] action in Container widget.
  bool? interstitialAdSuccess2;
  // Stores action output result for [Custom Action - chatGPT] action in Container widget.
  dynamic? apiResult;
  // Stores action output result for [Backend Call - API (DeepAIImage)] action in Container widget.
  ApiCallResponse? url1;
  // Stores action output result for [AdMob - Show Interstitial Ad] action in Container widget.
  bool? interstitialAdSuccess222;
  // Stores action output result for [AdMob - Show Interstitial Ad] action in Container widget.
  bool? interstitialAdSuccess2342;
  // Stores action output result for [Custom Action - chatGPT] action in Container widget.
  dynamic? apiResult0;
  // Stores action output result for [Backend Call - API (DeepAIImage)] action in Container widget.
  ApiCallResponse? url0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    ingredientsInputController?.dispose();
    extraInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
