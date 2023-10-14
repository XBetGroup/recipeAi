import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/admob_util.dart' as admob;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'output_model.dart';
export 'output_model.dart';

class OutputWidget extends StatefulWidget {
  const OutputWidget({
    Key? key,
    required this.contents,
    String? url,
  })  : this.url = url ??
            'https://oaidalleapiprodscus.blob.core.windows.net/private/org-j9iCaJufMoCcfVvGElNutL9G/user-omm2qtYFw75EgieigX2LpakY/img-kBvTSX59hSFMLb1diqmeqftz.png?st=2023-07-18T13%3A10%3A56Z&se=2023-07-18T15%3A10%3A56Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-07-17T23%3A52%3A02Z&ske=2023-07-18T23%3A52%3A02Z&sks=b&skv=2021-08-06&sig=yUXRNnaersfoPfFtz%2Blv%2BOzk4UOMxRhGOC7WEUHc2SU%3D',
        super(key: key);

  final dynamic contents;
  final String url;

  @override
  _OutputWidgetState createState() => _OutputWidgetState();
}

class _OutputWidgetState extends State<OutputWidget> {
  late OutputModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OutputModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.url = widget.url;
      });

      admob.loadInterstitialAd(
        "ca-app-pub-1761855375816044/4594368746",
        "ca-app-pub-1761855375816044/5492780770",
        false,
      );
    });
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
        body: SafeArea(
          top: true,
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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
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
                            child: FlutterFlowIconButton(
                              borderColor: Color(0x00FFFFFF),
                              borderRadius: 10.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              fillColor: Color(0xFF2D2222),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 15.0,
                              ),
                              onPressed: () async {
                                context.safePop();
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'jzhz4zfd' /*   */,
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
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
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
                            child: FlutterFlowIconButton(
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
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 300),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: Color(0x13FFFFFF),
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
                              child: Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    setState(() => FFAppState().toggle =
                                        !FFAppState().toggle);
                                    if (FFAppState().toggle) {
                                      setState(() {
                                        FFAppState().addToTitles(getJsonField(
                                          widget.contents,
                                          r'''$.name''',
                                        ).toString());
                                        FFAppState().addToTitle2(getJsonField(
                                          widget.contents,
                                          r'''$.name''',
                                        ).toString());
                                      });
                                      setState(() {
                                        FFAppState().addToUrls(widget.url);
                                        FFAppState().addToUrls2(widget.url);
                                      });
                                      setState(() {
                                        FFAppState()
                                            .addToRecipeLog(widget.contents!);
                                        FFAppState()
                                            .addToRecipelog2(widget.contents!);
                                      });
                                      setState(() {
                                        FFAppState().badge =
                                            FFAppState().badge + 1;
                                        FFAppState().badges2 =
                                            FFAppState().badges2 + 1;
                                      });
                                      setState(() {
                                        FFAppState().toggle = true;
                                      });
                                    } else {
                                      setState(() {
                                        FFAppState().removeAtIndexFromTitles(
                                            FFAppState().selectedEle);
                                        FFAppState().removeAtIndexFromTitle2(
                                            FFAppState().selectedEle);
                                      });
                                      setState(() {
                                        FFAppState().removeAtIndexFromUrls(
                                            FFAppState().selectedEle);
                                        FFAppState().removeAtIndexFromUrls2(
                                            FFAppState().selectedEle);
                                      });
                                      setState(() {
                                        FFAppState().removeAtIndexFromRecipeLog(
                                            FFAppState().selectedEle);
                                        FFAppState()
                                            .removeAtIndexFromRecipelog2(
                                                FFAppState().selectedEle);
                                      });
                                      setState(() {
                                        FFAppState().badge =
                                            FFAppState().badge + -1;
                                        FFAppState().badges2 =
                                            FFAppState().badges2 + -1;
                                      });
                                      setState(() {
                                        FFAppState().toggle = false;
                                      });
                                    }
                                  },
                                  value: FFAppState().toggle,
                                  onIcon: Icon(
                                    Icons.favorite_sharp,
                                    color: Color(0xFFEE510D),
                                    size: 25.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFFEE510D),
                                    size: 25.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 300.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x0BFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        border: Border.all(
                                          color: Color(0x64FFFFFF),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 7.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  widget.url,
                                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png',
                                                ),
                                                width: 307.0,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Text(
                                                    getJsonField(
                                                      widget.contents,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.access_time,
                                                      color: Colors.white,
                                                      size: 24.0,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '${getJsonField(
                                                          widget.contents,
                                                          r'''$.time_to_cook''',
                                                        ).toString()} minutes',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Nunito Sans',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '5c052c16' /* Ingredients: */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        if (FFAppState().voiceState)
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.ret = await actions.myTTS(
                                                getJsonField(
                                                  widget.contents,
                                                  r'''$.ingredients''',
                                                ).toString(),
                                                _model.voiceIngredientFlag,
                                              );
                                              setState(() {
                                                _model.voiceIngredientFlag =
                                                    _model.ret!;
                                              });
                                              setState(() => _model
                                                      .speakIngredientsStatus =
                                                  !_model
                                                      .speakIngredientsStatus);

                                              setState(() {});
                                            },
                                            child: Lottie.asset(
                                                'assets/lottie_animations/speaker.json',
                                                width: 40.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                                animate: _model
                                                    .speakIngredientsStatus),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x0BFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        border: Border.all(
                                          color: Color(0x64FFFFFF),
                                        ),
                                      ),
                                      alignment:
                                          AlignmentDirectional(-1.00, -1.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onLongPress: () async {
                                            await Clipboard.setData(
                                                ClipboardData(
                                                    text: functions
                                                        .convertListToString(
                                                            (getJsonField(
                                              widget.contents,
                                              r'''$.ingredients''',
                                              true,
                                            ) as List)
                                                                .map<String>((s) =>
                                                                    s.toString())
                                                                .toList()!)));
                                          },
                                          child: Text(
                                            functions.convertListToString(
                                                (getJsonField(
                                              widget.contents,
                                              r'''$.ingredients''',
                                              true,
                                            ) as List)
                                                    .map<String>(
                                                        (s) => s.toString())
                                                    .toList()!),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '4ov6c1br' /* Instructions: */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        if (FFAppState().voiceState)
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.retCopy =
                                                  await actions.myTTSCopy(
                                                getJsonField(
                                                  widget.contents,
                                                  r'''$.instructions''',
                                                ).toString(),
                                                _model.voiceInstructionFlag,
                                              );
                                              setState(() {
                                                _model.voiceInstructionFlag =
                                                    _model.retCopy!;
                                              });
                                              setState(() => _model
                                                      .speakInstructionsStatus =
                                                  !_model
                                                      .speakInstructionsStatus);

                                              setState(() {});
                                            },
                                            child: Lottie.asset(
                                                'assets/lottie_animations/speaker.json',
                                                width: 40.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                                animate: _model
                                                    .speakInstructionsStatus),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 30.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x0BFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        border: Border.all(
                                          color: Color(0x64FFFFFF),
                                        ),
                                      ),
                                      alignment:
                                          AlignmentDirectional(-1.00, -1.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onLongPress: () async {
                                            await Clipboard.setData(
                                                ClipboardData(
                                                    text: functions
                                                        .convertListToString(
                                                            (getJsonField(
                                              widget.contents,
                                              r'''$.instructions''',
                                              true,
                                            ) as List)
                                                                .map<String>((s) =>
                                                                    s.toString())
                                                                .toList()!)));
                                          },
                                          child: Text(
                                            functions.convertListToString(
                                                (getJsonField(
                                              widget.contents,
                                              r'''$.instructions''',
                                              true,
                                            ) as List)
                                                    .map<String>(
                                                        (s) => s.toString())
                                                    .toList()!),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.safePop();
                                          },
                                          child: Container(
                                            width: 155.0,
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
                                                  'gyo0ovzw' /* Edit Recipe */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                minFontSize: 17.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.goNamed('Recipe');
                                          },
                                          child: Container(
                                            width: 155.0,
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
                                                  'x7m8u4y0' /* New Recipe */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                minFontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
                              if (!FFAppState().isPremium)
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
        ),
      ),
    );
  }
}
