import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'premium_membership_model.dart';
export 'premium_membership_model.dart';

class PremiumMembershipWidget extends StatefulWidget {
  const PremiumMembershipWidget({Key? key}) : super(key: key);

  @override
  _PremiumMembershipWidgetState createState() =>
      _PremiumMembershipWidgetState();
}

class _PremiumMembershipWidgetState extends State<PremiumMembershipWidget> {
  late PremiumMembershipModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PremiumMembershipModel());
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
                  'assets/images/bg_(1).png',
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
                                context.pushNamed(
                                  'Settings',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                      duration: Duration(milliseconds: 300),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1ngq9w24' /* Premium Membership */,
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
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 5.0),
                                  child: Container(
                                    width: 500.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x991A1010),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        color: Color(0x70FFFFFF),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'u2ehhfzm' /* $4.99 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Nunito Sans',
                                                    color: Colors.white,
                                                    fontSize: 40.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hj62liov' /* Per Month */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color: Colors.white,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  30.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.didPurchase =
                                                  await revenue_cat
                                                      .purchasePackage(
                                                          revenue_cat
                                                              .offerings!
                                                              .current!
                                                              .monthly!
                                                              .identifier);
                                              if (_model.didPurchase!) {
                                                setState(() {
                                                  FFAppState().isPremium = true;
                                                });

                                                context.pushNamed('Recipe');
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Unable to purchase',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        Colors.white,
                                                  ),
                                                );
                                              }

                                              setState(() {});
                                            },
                                            child: Container(
                                              width: 100.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFF833AB4),
                                                    Color(0xFFFD1D1D),
                                                    Color(0xFFFCB045)
                                                  ],
                                                  stops: [0.0, 0.3, 1.0],
                                                  begin: AlignmentDirectional(
                                                      -1.0, 0.87),
                                                  end: AlignmentDirectional(
                                                      1.0, -0.87),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bcqe9l59' /* BUY */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 5.0),
                                  child: Container(
                                    width: 500.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
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
                                        begin: AlignmentDirectional(-0.98, 1.0),
                                        end: AlignmentDirectional(0.98, -1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        color: Color(0x70FFFFFF),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6mnm6xvc' /* $23.95 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Nunito Sans',
                                                    color: Colors.white,
                                                    fontSize: 40.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '47r0zuvc' /* 6 Month / Save 20% */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color: Colors.white,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.didPurchaseCopy =
                                                await revenue_cat
                                                    .purchasePackage(revenue_cat
                                                        .offerings!
                                                        .current!
                                                        .sixMonth!
                                                        .identifier);
                                            if (_model.didPurchase!) {
                                              setState(() {
                                                FFAppState().isPremium = true;
                                              });

                                              context.pushNamed('Recipe');
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Unable to purchase',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor: Colors.white,
                                                ),
                                              );
                                            }

                                            setState(() {});
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x7ADFF1FF),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kwx6v1xx' /* BUY */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 5.0),
                                  child: Container(
                                    width: 500.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x991A1010),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        color: Color(0x70FFFFFF),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'f76a6ip1' /* $39.99 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Nunito Sans',
                                                    color: Colors.white,
                                                    fontSize: 40.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1xebm56j' /* 12 Month / Save 33% */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color: Colors.white,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.didPurchaseCopy2 =
                                                await revenue_cat
                                                    .purchasePackage(revenue_cat
                                                        .offerings!
                                                        .current!
                                                        .annual!
                                                        .identifier);
                                            if (_model.didPurchase!) {
                                              setState(() {
                                                FFAppState().isPremium = true;
                                              });

                                              context.pushNamed('Recipe');
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Unable to purchase',
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor: Colors.white,
                                                ),
                                              );
                                            }

                                            setState(() {});
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF833AB4),
                                                  Color(0xFFFD1D1D),
                                                  Color(0xFFFCB045)
                                                ],
                                                stops: [0.0, 0.3, 1.0],
                                                begin: AlignmentDirectional(
                                                    -1.0, 0.87),
                                                end: AlignmentDirectional(
                                                    1.0, -0.87),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'b0s5q55c' /* BUY */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (!FFAppState().isPremium)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Container(
                                      width: 500.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'bwujoqcm' /* Payment will be charged to you... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFA0C3D7),
                                                  ),
                                            ),
                                          ),
                                          if (!isAndroid)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await launchURL(
                                                      'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/');
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8h68rude' /* Please read our EULA (End User... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFEFC303),
                                                      ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, -1.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 500.0,
                                      height: 306.0,
                                      decoration: BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, -1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jteusjmm' /* Benefits */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/Group_10877_(11).png',
                                                      width: 20.0,
                                                      height: 100.0,
                                                      fit: BoxFit.none,
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't10yfjw3' /* Enjoy unlimited recipes
No adv... */
                                                      ,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          lineHeight: 1.57,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
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
