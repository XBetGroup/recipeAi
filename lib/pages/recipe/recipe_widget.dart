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
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'recipe_model.dart';
export 'recipe_model.dart';

class RecipeWidget extends StatefulWidget {
  const RecipeWidget({
    Key? key,
    this.suggestionPrompts,
    String? ingredients,
    String? seasonsourcef,
    String? breakfast,
    String? time,
    String? level,
  })  : this.ingredients = ingredients ?? '',
        this.seasonsourcef = seasonsourcef ?? '',
        this.breakfast = breakfast ?? ' ',
        this.time = time ?? '',
        this.level = level ?? '',
        super(key: key);

  final String? suggestionPrompts;
  final String ingredients;
  final String seasonsourcef;
  final String breakfast;
  final String time;
  final String level;

  @override
  _RecipeWidgetState createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  late RecipeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      admob.loadInterstitialAd(
        "ca-app-pub-1761855375816044/4594368746",
        "ca-app-pub-1761855375816044/5492780770",
        false,
      );

      setState(() {
        FFAppState().currentLang = FFLocalizations.of(context).languageCode;
      });
    });

    _model.ingredientsInputController ??= TextEditingController();
    _model.extraInputController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Container(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: Drawer(
            elevation: 16.0,
            child: Align(
              alignment: AlignmentDirectional(1.00, -1.00),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/bg_(2).png',
                    ).image,
                  ),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    admob.loadInterstitialAd(
                      "ca-app-pub-1761855375816044/7748439297",
                      "ca-app-pub-1761855375816044/4669444840",
                      true,
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Group_44.png',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '8eqwn3gk' /* Recipe Ai */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Image.network(
                                    '',
                                    width: 10.0,
                                    height: 30.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Container(
                                    width: 230.0,
                                    height: 2.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x5B545454),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    _model.typeChoiceValueController?.reset();
                                    _model.timeChoiceValueController?.reset();
                                    _model.levelChoiceValueController?.reset();
                                  });
                                  setState(() {
                                    _model.ingredientsInputController?.clear();
                                    _model.extraInputController?.clear();
                                  });
                                  if (scaffoldKey.currentState!.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Container(
                                    width: 230.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2D2222),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Group_39575.png',
                                                width: 30.0,
                                                height: 24.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'hogmx40u' /* New Recipe */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  1.00, 0.00),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 15.0, 0.0),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'a87e9w1g' /* Saved Recipes */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Builder(
                                  builder: (context) {
                                    final titleDocList =
                                        FFAppState().title2.toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      reverse: true,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: titleDocList.length,
                                      itemBuilder:
                                          (context, titleDocListIndex) {
                                        final titleDocListItem =
                                            titleDocList[titleDocListIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 3.0, 10.0, 3.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      setState(() {
                                                        FFAppState()
                                                                .selectedEle =
                                                            titleDocListIndex;
                                                      });
                                                      setState(() {
                                                        FFAppState().toggle =
                                                            true;
                                                      });

                                                      context.pushNamed(
                                                        'Output',
                                                        queryParameters: {
                                                          'contents':
                                                              serializeParam(
                                                            FFAppState()
                                                                    .recipelog2[
                                                                titleDocListIndex],
                                                            ParamType.JSON,
                                                          ),
                                                          'url': serializeParam(
                                                            FFAppState().urls2[
                                                                titleDocListIndex],
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      _model.interstitialAdSuccess3Copy =
                                                          await admob
                                                              .showInterstitialAd();

                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4,
                                                      height: 50.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/Group_39575.png',
                                                                width: 30.0,
                                                                height: 24.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                              child: Text(
                                                                titleDocListItem
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 34,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.00, 0.00),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState().badges2 =
                                                              functions.reduceNum(
                                                                  FFAppState()
                                                                      .badges2);
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                              .removeAtIndexFromTitle2(
                                                                  titleDocListIndex);
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                              .removeAtIndexFromRecipelog2(
                                                                  titleDocListIndex);
                                                        });
                                                        setState(() {
                                                          FFAppState()
                                                              .removeAtIndexFromUrls2(
                                                                  titleDocListIndex);
                                                        });
                                                      },
                                                      child: Icon(
                                                        Icons.delete_outline,
                                                        color: Colors.white,
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  65.0, 0.0, 30.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) => Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Share.share(
                                      'Recipe Ai',
                                      sharePositionOrigin:
                                          getWidgetBoundingBox(context),
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.share_outlined,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'u2d595wl' /* Share app */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito Sans',
                                                color: Colors.white,
                                                fontSize: 18.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 50.0),
                              child: Text(
                                'Version ${FFAppState().versionNumber}',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/bg_(2).png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 15.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            badges.Badge(
                              badgeContent: Text(
                                FFAppState().title2.length.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              showBadge: true,
                              shape: badges.BadgeShape.circle,
                              badgeColor: Color(0xDBFF6200),
                              elevation: 3.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              position: badges.BadgePosition.topEnd(),
                              animationType: badges.BadgeAnimationType.scale,
                              toAnimate: true,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  scaffoldKey.currentState!.openDrawer();
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Group_44.png',
                                    width: 48.0,
                                    height: 48.0,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'fbhs3eu3' /*   */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: Container(
                                height: 40.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                      spreadRadius: 1.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GradientText(
                                      FFLocalizations.of(context).getText(
                                        'wx4tb5zp' /* Credits */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      colors: [
                                        Color(0xFF833AB4),
                                        Color(0xFFFD1D1D),
                                        Color(0xFFFCB045)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        FFAppState()
                                            .availableRequest
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Color(0x004B39EF),
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor: Color(0xFF171F25),
                                      icon: Icon(
                                        Icons.settings,
                                        color: Colors.white,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed(
                                          'Settings',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.00, -1.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            'umfp9cwi' /* Find New Recipes in 5 Steps */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          minFontSize: 14.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: AutoSizeText(
                                          FFLocalizations.of(context).getText(
                                            '9vust8ot' /* Provide a list of ingredients ... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito Sans',
                                                color: Colors.white,
                                                fontSize: 12.0,
                                              ),
                                          minFontSize: 11.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GradientText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'iczvmo46' /* Step 1 */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              colors: [
                                                Color(0xFF833AB4),
                                                Color(0xFFFD1D1D),
                                                Color(0xFFFCB045)
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'md1mqkxs' /* Enter the ingredients you have... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.85,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .ingredientsInputController,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'hgu2rwi9' /* e.g mushrooms, eggs, spinach, ... */,
                                                      ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x3BFFFFFF),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0x0AFFFFFF),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                        ),
                                                    validator: _model
                                                        .ingredientsInputControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GradientText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lf3cxb3h' /* Step 2 */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              colors: [
                                                Color(0xFF833AB4),
                                                Color(0xFFFD1D1D),
                                                Color(0xFFFCB045)
                                              ],
                                              gradientDirection:
                                                  GradientDirection.ltr,
                                              gradientType: GradientType.linear,
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.85,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yvmyizs0' /* Enter the condiments, seasonin... */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.85,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: TextFormField(
                                                    controller: _model
                                                        .extraInputController,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'tgegla6o' /* e.g garlic, pepper, salt, mayo... */,
                                                      ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x3BFFFFFF),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          Color(0x0AFFFFFF),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: Colors.white,
                                                        ),
                                                    validator: _model
                                                        .extraInputControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, -1.00),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 335.0,
                                              height: 29.0,
                                              decoration: BoxDecoration(),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: GradientText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3v6di0df' /* Step 3 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                  colors: [
                                                    Color(0xFF833AB4),
                                                    Color(0xFFFD1D1D),
                                                    Color(0xFFFCB045)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '36zv2et7' /* Type of Meal */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: AutoSizeText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wimoos2q' /* Please select what time of day... */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.85,
                                        decoration: BoxDecoration(),
                                        child: Wrap(
                                          spacing: 0.0,
                                          runSpacing: 0.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: FlutterFlowChoiceChips(
                                                  options: [
                                                    ChipData(FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '24e8bilm' /* Breakfast */,
                                                    )),
                                                    ChipData(FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'ts9yu4ie' /* Lunch */,
                                                    )),
                                                    ChipData(FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'dhki2rnp' /* Dinner */,
                                                    )),
                                                    ChipData(FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'ama1wc42' /* Snack */,
                                                    ))
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .typeChoiceValue =
                                                          val?.first),
                                                  selectedChipStyle: ChipStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFFFF3D00),
                                                        ),
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    iconSize: 18.0,
                                                    elevation: 4.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  unselectedChipStyle:
                                                      ChipStyle(
                                                    backgroundColor:
                                                        Color(0xFF2D2222),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFFB8B8B8),
                                                        ),
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    iconSize: 18.0,
                                                    elevation: 0.0,
                                                    borderColor:
                                                        Color(0xFFB8B8B8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  chipSpacing: 12.0,
                                                  rowSpacing: 12.0,
                                                  multiselect: false,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  controller: _model
                                                          .typeChoiceValueController ??=
                                                      FormFieldController<
                                                          List<String>>(
                                                    [],
                                                  ),
                                                  wrapped: true,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 335.0,
                                            height: 29.0,
                                            decoration: BoxDecoration(),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: GradientText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'i0qs2zlv' /* Step 4 */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                colors: [
                                                  Color(0xFF833AB4),
                                                  Color(0xFFFD1D1D),
                                                  Color(0xFFFCB045)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1hdfr9g9' /* Please select how much time yo... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: AutoSizeText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '601yob2s' /* Time to Prepare */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.85,
                                            decoration: BoxDecoration(),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, -1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: FlutterFlowChoiceChips(
                                            options: [
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'obuqo2gf' /* 5 min */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'zqnroy0o' /* 15 min */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'j28kzvmx' /* 60 min */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'iiea7sbo' /* 2 hours */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ewgm5wjd' /* Infinite */,
                                              ))
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.timeChoiceValue =
                                                    val?.first),
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor: Colors.white,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFFF3D00),
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 18.0,
                                              elevation: 4.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  Color(0xFF2D2222),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFB8B8B8),
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderColor: Color(0xFFB8B8B8),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            chipSpacing: 12.0,
                                            rowSpacing: 12.0,
                                            multiselect: false,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .timeChoiceValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [],
                                            ),
                                            wrapped: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 335.0,
                                            height: 29.0,
                                            decoration: BoxDecoration(),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: GradientText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '6q7xi8kt' /* Step 5 */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                colors: [
                                                  Color(0xFF833AB4),
                                                  Color(0xFFFD1D1D),
                                                  Color(0xFFFCB045)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6f2yqrps' /* Level of Difficulty */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.85,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  's11l8m73' /* Please select your level of ex... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.white,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.00, -1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: FlutterFlowChoiceChips(
                                            options: [
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'sxt27dbm' /* Beginner */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'b0d9agcg' /* Intermediate */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'z4unt8n4' /* Expert */,
                                              ))
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.levelChoiceValue =
                                                    val?.first),
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor: Colors.white,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFFF3D00),
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              iconSize: 18.0,
                                              elevation: 4.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  Color(0xFF2D2222),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFB8B8B8),
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderColor: Color(0xFFB8B8B8),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            chipSpacing: 12.0,
                                            rowSpacing: 12.0,
                                            multiselect: false,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .levelChoiceValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [],
                                            ),
                                            wrapped: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (((String ingredients) {
                                                    return ingredients != '';
                                                  }(_model
                                                      .ingredientsInputController
                                                      .text)) &&
                                                  ((String extraInput) {
                                                    return extraInput != '';
                                                  }(_model.extraInputController
                                                      .text)) &&
                                                  ((String type) {
                                                    return type != '';
                                                  }(_model.typeChoiceValue!)) &&
                                                  ((String time) {
                                                    return time != '';
                                                  }(_model.timeChoiceValue!)) &&
                                                  ((String level) {
                                                    return level != '';
                                                  }(_model
                                                      .levelChoiceValue!))) {
                                                if (FFAppState().isPremium) {
                                                  setState(() {
                                                    _model.userInput =
                                                        functions.convertToJSON(
                                                            'I need you to help me find recipes with a set of requirements. Ingredients must have correct weight, quantity, teaspoon, tablespoon, cup, and other possible units. I have the following ingredients: ${_model.ingredientsInputController.text}. I also have the following condiments: ${_model.extraInputController.text}. I am making a meal for ${_model.typeChoiceValue}. I only have this much time to make it: ${_model.timeChoiceValue}. My cooking skill level is ${_model.levelChoiceValue}');
                                                  });
                                                  setState(() {
                                                    FFAppState().animFlag =
                                                        true;
                                                  });

                                                  _model.interstitialAdSuccess2 =
                                                      await admob
                                                          .showInterstitialAd();

                                                  if (_model
                                                      .interstitialAdSuccess2!) {
                                                    admob.loadInterstitialAd(
                                                      "ca-app-pub-1761855375816044/4594368746",
                                                      "ca-app-pub-1761855375816044/5492780770",
                                                      true,
                                                    );
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Fail to load ads',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                  }

                                                  _model.apiResult =
                                                      await actions.chatGPT(
                                                    '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',
                                                    _model.userInput!
                                                        .toString(),
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                                  );
                                                  _model.url1 =
                                                      await DeepAIImageCall
                                                          .call(
                                                    text: getJsonField(
                                                      functions.passParam(
                                                          getJsonField(
                                                        _model.apiResult,
                                                        r'''$.choices[:].message.content''',
                                                      )),
                                                      r'''$.name''',
                                                    ).toString(),
                                                  );
                                                  if ((_model.url1?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      FFAppState().toggle =
                                                          false;
                                                    });
                                                    setState(() {
                                                      FFAppState().animFlag =
                                                          false;
                                                    });

                                                    context.pushNamed(
                                                      'Output',
                                                      queryParameters: {
                                                        'contents':
                                                            serializeParam(
                                                          functions.passParam(
                                                              getJsonField(
                                                            _model.apiResult,
                                                            r'''$.choices[:].message.content''',
                                                          )),
                                                          ParamType.JSON,
                                                        ),
                                                        'url': serializeParam(
                                                          DeepAIImageCall
                                                              .deepAiurl(
                                                            (_model.url1
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    setState(() {
                                                      FFAppState().toggle =
                                                          false;
                                                    });
                                                    setState(() {
                                                      FFAppState().animFlag =
                                                          false;
                                                    });

                                                    context.pushNamed(
                                                      'Output',
                                                      queryParameters: {
                                                        'contents':
                                                            serializeParam(
                                                          functions.passParam(
                                                              getJsonField(
                                                            _model.apiResult,
                                                            r'''$.choices[:].message.content''',
                                                          )),
                                                          ParamType.JSON,
                                                        ),
                                                        'url': serializeParam(
                                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png',
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                } else {
                                                  if (FFAppState()
                                                          .availableRequest ==
                                                      0) {
                                                    var confirmDialogResponse =
                                                        await showDialog<bool>(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Daily Allowance Exceeded!'),
                                                                  content: Text(
                                                                      'You have exceeded your daily allowance. Please come back tomorrow  or watch a video advert to unlock 1 more recipe.'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                      child: Text(
                                                                          'Cancel'),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                      child: Text(
                                                                          'Watch video'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ) ??
                                                            false;
                                                    if (confirmDialogResponse) {
                                                      _model.interstitialAdSuccess222 =
                                                          await admob
                                                              .showInterstitialAd();

                                                      if (_model
                                                          .interstitialAdSuccess222!) {
                                                        admob
                                                            .loadInterstitialAd(
                                                          "ca-app-pub-1761855375816044/4594368746",
                                                          "ca-app-pub-1761855375816044/5492780770",
                                                          true,
                                                        );
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Fail to load ads',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                      }

                                                      setState(() {
                                                        FFAppState()
                                                                .availableRequest =
                                                            FFAppState()
                                                                    .availableRequest +
                                                                1;
                                                      });
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            content: Text(
                                                                'One Request Added'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  } else {
                                                    setState(() {
                                                      _model.userInput =
                                                          functions.convertToJSON(
                                                              'I need you to help me find recipes with a set of requirements. Ingredients must have correct weight, quantity, teaspoon, tablespoon, cup, and other possible units. I have the following ingredients: ${_model.ingredientsInputController.text}. I also have the following condiments: ${_model.extraInputController.text}. I am making a meal for ${_model.typeChoiceValue}. I only have this much time to make it: ${_model.timeChoiceValue}. My cooking skill level is ${_model.levelChoiceValue}');
                                                    });
                                                    setState(() {
                                                      FFAppState().animFlag =
                                                          true;
                                                    });

                                                    _model.interstitialAdSuccess2342 =
                                                        await admob
                                                            .showInterstitialAd();

                                                    if (_model
                                                        .interstitialAdSuccess2342!) {
                                                      admob.loadInterstitialAd(
                                                        "ca-app-pub-1761855375816044/4594368746",
                                                        "ca-app-pub-1761855375816044/5492780770",
                                                        true,
                                                      );
                                                    }
                                                    _model.apiResult0 =
                                                        await actions.chatGPT(
                                                      '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',
                                                      _model.userInput!
                                                          .toString(),
                                                      FFLocalizations.of(
                                                              context)
                                                          .languageCode,
                                                    );
                                                    _model.url0 =
                                                        await DeepAIImageCall
                                                            .call(
                                                      text: getJsonField(
                                                        functions.passParam(
                                                            getJsonField(
                                                          _model.apiResult0,
                                                          r'''$.choices[:].message.content''',
                                                        )),
                                                        r'''$.name''',
                                                      ).toString(),
                                                    );
                                                    if ((_model
                                                            .url0?.succeeded ??
                                                        true)) {
                                                      setState(() {
                                                        FFAppState().toggle =
                                                            false;
                                                      });
                                                      setState(() {
                                                        FFAppState().animFlag =
                                                            false;
                                                      });

                                                      context.pushNamed(
                                                        'Output',
                                                        queryParameters: {
                                                          'contents':
                                                              serializeParam(
                                                            functions.passParam(
                                                                getJsonField(
                                                              _model.apiResult0,
                                                              r'''$.choices[:].message.content''',
                                                            )),
                                                            ParamType.JSON,
                                                          ),
                                                          'url': serializeParam(
                                                            DeepAIImageCall
                                                                .deepAiurl(
                                                              (_model.url0
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      setState(() {
                                                        FFAppState().toggle =
                                                            false;
                                                      });
                                                      setState(() {
                                                        FFAppState().animFlag =
                                                            false;
                                                      });

                                                      context.pushNamed(
                                                        'Output',
                                                        queryParameters: {
                                                          'contents':
                                                              serializeParam(
                                                            functions.passParam(
                                                                getJsonField(
                                                              _model.apiResult0,
                                                              r'''$.choices[:].message.content''',
                                                            )),
                                                            ParamType.JSON,
                                                          ),
                                                          'url': serializeParam(
                                                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png',
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    setState(() {
                                                      FFAppState().bank =
                                                          functions.reduceNum(
                                                              FFAppState()
                                                                  .bank);
                                                      FFAppState()
                                                              .availableRequest =
                                                          functions.reduceNum(
                                                              FFAppState()
                                                                  .availableRequest);
                                                    });
                                                  }
                                                }
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Please input all fields...',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                              }

                                              setState(() {});
                                            },
                                            child: Container(
                                              width: 241.0,
                                              height: 48.0,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4.0,
                                                    color: Color(0x33FFFFFF),
                                                    offset: Offset(0.0, 2.0),
                                                  )
                                                ],
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF833AB4),
                                                    Color(0xFFFD1D1D),
                                                    Color(0xFFFCB045)
                                                  ],
                                                  stops: [0.0, 0.5, 1.0],
                                                  begin: AlignmentDirectional(
                                                      -1.0, 0.0),
                                                  end: AlignmentDirectional(
                                                      1.0, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: AutoSizeText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'sh4swd21' /* Generate */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                  minFontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Home_Indicator.png',
                                      width: 200.0,
                                      height: 10.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  FlutterFlowAdBanner(
                                    showsTestAd: false,
                                    iOSAdUnitID:
                                        'ca-app-pub-1761855375816044/3172124796',
                                    androidAdUnitID:
                                        'ca-app-pub-1761855375816044/4766856614',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (FFAppState().animFlag)
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x76000000),
                  ),
                  child: Visibility(
                    visible: FFAppState().animFlag,
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Lottie.asset(
                        'assets/lottie_animations/Tap_Circle.json',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
