import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BornesWidget extends StatefulWidget { // notre page est séparé en 7 parties sous la forme d'une pageview chaque page correspond à une borne spécifique 
  const BornesWidget({Key? key}) : super(key: key);

  @override
  _BornesWidgetState createState() => _BornesWidgetState();
}

class _BornesWidgetState extends State<BornesWidget> {
  PageController? pageViewController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ReservationdeplaceRecord>>(
      stream: queryReservationdeplaceRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ReservationdeplaceRecord> bornesReservationdeplaceRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final bornesReservationdeplaceRecord =
            bornesReservationdeplaceRecordList.isNotEmpty
                ? bornesReservationdeplaceRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 500,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                              child: PageView(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowUsersRecord =
                                              rowUsersRecordList.isNotEmpty
                                                  ? rowUsersRecordList.first
                                                  : null;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 75, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30,
                                                      borderWidth: 1,
                                                      buttonSize: 60,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      icon: Icon(
                                                        Icons
                                                            .arrow_back_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 30,
                                                      ),
                                                      onPressed: () async {
                                                        context.pop();
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 30, 0),
                                                  child: Text(
                                                    'Place Broglie',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 25,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 0, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: ToggleIcon( // sur chaque page une toggle icon est situé elle permet à l'utilisateur d'ajouter une borne au favoris 
                                                      onPressed: () async {
                                                        final usersUpdateData =
                                                            {
                                                          'Borne1favourite':
                                                              !rowUsersRecord!
                                                                  .borne1favourite!,
                                                        };
                                                        await rowUsersRecord!
                                                            .reference
                                                            .update(
                                                                usersUpdateData);
                                                      },
                                                      value: rowUsersRecord!
                                                          .borne1favourite!,
                                                      onIcon: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 25,
                                                      ),
                                                      offIcon: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          width: 390.1,
                                          height: 356,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 30, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Nombre de place :',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                            Text(
                                              bornesReservationdeplaceRecord!
                                                  .nombredeplaceborne1!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Places totales : 14\n\n\nAux alentours:\n-Hotel de ville\n-Théathe National du Rhin\n-Parking Opera-Broglie',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: !((valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne1rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne2rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne3rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne4reserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne5rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne6rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne7reserve,
                                                        false) ==
                                                    true)),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  final reservationdeplaceUpdateData =
                                                      {
                                                    'Nombredeplaceborne1':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  };
                                                  await bornesReservationdeplaceRecord!
                                                      .reference
                                                      .update(
                                                          reservationdeplaceUpdateData);

                                                  final usersUpdateData =
                                                      createUsersRecordData(
                                                    borne1rerserve: true,
                                                  );
                                                  await currentUserReference!
                                                      .update(usersUpdateData);

                                                  context.pushNamed('timer');
                                                },
                                                text: 'Réserver', // le boutton permet de réserver une borne chaque bouton est paramétré pour incrémenter la collection réservation de place de -1 ainsi que de fixer un booléen informant le systéme que l'utilisateur a reservé dans cette borne (utile pour l'affichage des boutons par la suite)
                                                options: FFButtonOptions(
                                                  width: 20,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowUsersRecord =
                                              rowUsersRecordList.isNotEmpty
                                                  ? rowUsersRecordList.first
                                                  : null;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30,
                                                  borderWidth: 1,
                                                  buttonSize: 60,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: Icon(
                                                    Icons.arrow_back_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30,
                                                  ),
                                                  onPressed: () async {
                                                    context.pop();
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(30, 0, 0, 0),
                                                child: Text(
                                                  'Place de Bordeaux',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 0, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: ToggleIcon(
                                                    onPressed: () async {
                                                      final usersUpdateData = {
                                                        'Borne2favourite':
                                                            !rowUsersRecord!
                                                                .borne2favourite!,
                                                      };
                                                      await rowUsersRecord!
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                    },
                                                    value: rowUsersRecord!
                                                        .borne2favourite!,
                                                    onIcon: Icon(
                                                      Icons.favorite,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                    offIcon: Icon(
                                                      Icons.favorite_border,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlML9UISnXCNTSeKkWotTk-Sj_whKHyX7J0g&usqp=CAU',
                                        width: 390.1,
                                        height: 356,
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 30, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Places disponibles actuellement: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                bornesReservationdeplaceRecord!
                                                    .nombredeplaceborne2!
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Places totales : 16\n\nAux alentours:\n-Lycée Kleber\n-Parking Place de Bordeaux\n-Palais de la Musique et des Congrès',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: !((valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne1rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne2rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne3rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne4reserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne5rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne6rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne7reserve,
                                                        false) ==
                                                    true)),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  final reservationdeplaceUpdateData =
                                                      {
                                                    'Nombredeplaceborne2':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  };
                                                  await bornesReservationdeplaceRecord!
                                                      .reference
                                                      .update(
                                                          reservationdeplaceUpdateData);

                                                  final usersUpdateData =
                                                      createUsersRecordData(
                                                    borne2rerserve: true,
                                                  );
                                                  await currentUserReference!
                                                      .update(usersUpdateData);

                                                  context.pushNamed('timer');
                                                },
                                                text: 'Réserver',
                                                options: FFButtonOptions(
                                                  width: 20,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 17,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowUsersRecord =
                                              rowUsersRecordList.isNotEmpty
                                                  ? rowUsersRecordList.first
                                                  : null;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30,
                                                    borderWidth: 1,
                                                    buttonSize: 60,
                                                    icon: Icon(
                                                      Icons.arrow_back_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                          'Pagedaccueil');
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 15, 0, 0),
                                                child: Text(
                                                  '61 Avenue de la forêt noire',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 22,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                width: 50,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                ),
                                                child: ToggleIcon(
                                                  onPressed: () async {
                                                    final usersUpdateData = {
                                                      'Borne3favourite':
                                                          !rowUsersRecord!
                                                              .borne3favourite!,
                                                    };
                                                    await rowUsersRecord!
                                                        .reference
                                                        .update(
                                                            usersUpdateData);
                                                  },
                                                  value: rowUsersRecord!
                                                      .borne3favourite!,
                                                  onIcon: Icon(
                                                    Icons.favorite,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 25,
                                                  ),
                                                  offIcon: Icon(
                                                    Icons.favorite_border,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 25,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Image.network(
                                          'data:image/jpeg;base64,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',
                                          width: 390.1,
                                          height: 356,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Places disponibles actuellement: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                      ),
                                            ),
                                            Text(
                                              bornesReservationdeplaceRecord!
                                                  .nombredeplaceborne3!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Places totales : 18\n\nAux alentours:\n-EM\n-Fac de Stras\n-Quartier Esplanade',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: !((valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne1rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne2rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne3rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne4reserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne5rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne6rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne7reserve,
                                                        false) ==
                                                    true)),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  final reservationdeplaceUpdateData =
                                                      {
                                                    'Nombredeplaceborne3':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  };
                                                  await bornesReservationdeplaceRecord!
                                                      .reference
                                                      .update(
                                                          reservationdeplaceUpdateData);

                                                  final usersUpdateData =
                                                      createUsersRecordData(
                                                    borne3rerserve: true,
                                                  );
                                                  await currentUserReference!
                                                      .update(usersUpdateData);

                                                  context.pushNamed('timer');
                                                },
                                                text: 'Réserver',
                                                options: FFButtonOptions(
                                                  width: 130,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowUsersRecord =
                                              rowUsersRecordList.isNotEmpty
                                                  ? rowUsersRecordList.first
                                                  : null;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 40, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30,
                                                    borderWidth: 1,
                                                    buttonSize: 60,
                                                    icon: Icon(
                                                      Icons.arrow_back_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                          'Pagedaccueil');
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Text(
                                                  'Avenue de Colmar',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 0, 0, 20),
                                                child: Container(
                                                  width: 25,
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: ToggleIcon(
                                                    onPressed: () async {
                                                      final usersUpdateData = {
                                                        'Borne4favourite':
                                                            !rowUsersRecord!
                                                                .borne4favourite!,
                                                      };
                                                      await rowUsersRecord!
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                    },
                                                    value: rowUsersRecord!
                                                        .borne4favourite!,
                                                    onIcon: Icon(
                                                      Icons.favorite,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                    offIcon: Icon(
                                                      Icons.favorite_border,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Image.network(
                                          'https://cdn-s-www.dna.fr/images/DEEF884F-4F3C-41A9-8C79-ADE53FD2617C/NW_raw/l-accident-s-est-produit-avenue-de-colmar-capture-d-ecran-google-street-view-1643090151.jpg',
                                          width: 390.1,
                                          height: 356,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Places disponibles actuellement: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                      ),
                                            ),
                                            Text(
                                              bornesReservationdeplaceRecord!
                                                  .nombredeplaceborne4!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Places totales : 15\n\nAux alentours:\n-Stade de la Meinau\n-Lycée Couffignal\n-Parking Krimmeri',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: !((valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne1rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne2rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne3rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne4reserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne5rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne6rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne7reserve,
                                                        false) ==
                                                    true)),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  final reservationdeplaceUpdateData =
                                                      {
                                                    'Nombredeplaceborne4':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  };
                                                  await bornesReservationdeplaceRecord!
                                                      .reference
                                                      .update(
                                                          reservationdeplaceUpdateData);

                                                  final usersUpdateData =
                                                      createUsersRecordData(
                                                    borne4reserve: true,
                                                  );
                                                  await currentUserReference!
                                                      .update(usersUpdateData);

                                                  context.pushNamed('timer');
                                                },
                                                text: 'Réserver',
                                                options: FFButtonOptions(
                                                  width: 130,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowUsersRecord =
                                              rowUsersRecordList.isNotEmpty
                                                  ? rowUsersRecordList.first
                                                  : null;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 3, 0, 0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30,
                                                      borderWidth: 1,
                                                      buttonSize: 60,
                                                      icon: Icon(
                                                        Icons
                                                            .arrow_back_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 30,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'Pagedaccueil');
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(60, 20, 0, 0),
                                                child: Text(
                                                  'Parc de l’étoile',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 10, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: ToggleIcon(
                                                    onPressed: () async {
                                                      final usersUpdateData = {
                                                        'Borne5favourite':
                                                            !rowUsersRecord!
                                                                .borne5favourite!,
                                                      };
                                                      await rowUsersRecord!
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                    },
                                                    value: rowUsersRecord!
                                                        .borne5favourite!,
                                                    onIcon: Icon(
                                                      Icons.favorite,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                    offIcon: Icon(
                                                      Icons.favorite_border,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwWNpi5UxuSsR7UBNU6YXICPSl-FkPnRzrPw&usqp=CAU',
                                          width: 390.1,
                                          height: 356,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Places disponibles actuellement: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                      ),
                                            ),
                                            Text(
                                              bornesReservationdeplaceRecord!
                                                  .nombredeplaceborne5!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Places totales : 14\n\nAux alentours:\n-Mairie\n-Gare routière( bus/autocar)\n-Hopitaux',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: !((valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne1rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne2rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne3rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne4reserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne5rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne6rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne7reserve,
                                                        false) ==
                                                    true)),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  final reservationdeplaceUpdateData =
                                                      {
                                                    'Nombredeplaceborne5':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  };
                                                  await bornesReservationdeplaceRecord!
                                                      .reference
                                                      .update(
                                                          reservationdeplaceUpdateData);

                                                  final usersUpdateData =
                                                      createUsersRecordData(
                                                    borne5rerserve: true,
                                                  );
                                                  await currentUserReference!
                                                      .update(usersUpdateData);

                                                  context.pushNamed('timer');
                                                },
                                                text: 'Réserver',
                                                options: FFButtonOptions(
                                                  width: 130,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowUsersRecord =
                                              rowUsersRecordList.isNotEmpty
                                                  ? rowUsersRecordList.first
                                                  : null;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30,
                                                    borderWidth: 1,
                                                    buttonSize: 60,
                                                    icon: Icon(
                                                      Icons.arrow_back_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                          'Pagedaccueil');
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 15, 0, 0),
                                                child: Text(
                                                  'Place de la gare ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 10, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: ToggleIcon(
                                                    onPressed: () async {
                                                      final usersUpdateData = {
                                                        'Borne6favourite':
                                                            !rowUsersRecord!
                                                                .borne6favourite!,
                                                      };
                                                      await rowUsersRecord!
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                    },
                                                    value: rowUsersRecord!
                                                        .borne6favourite!,
                                                    onIcon: Icon(
                                                      Icons.favorite,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                    offIcon: Icon(
                                                      Icons.favorite_border,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 15, 0, 0),
                                        child: Image.network(
                                          'https://www.rue89strasbourg.com/wp-content/uploads/2014/01/GareCC.jpg',
                                          width: 390.1,
                                          height: 356,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Places disponibles actuellement: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                      ),
                                            ),
                                            Text(
                                              bornesReservationdeplaceRecord!
                                                  .nombredeplaceborne6!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Places totales : 13\n\nAux alentours:\n-Gare ferroviaire\n-Différents hôtels\n-Place des Halles',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: !((valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne1rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne2rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne3rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne4reserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne5rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne6rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne7reserve,
                                                        false) ==
                                                    true)),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  final reservationdeplaceUpdateData =
                                                      {
                                                    'Nombredeplaceborne6':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  };
                                                  await bornesReservationdeplaceRecord!
                                                      .reference
                                                      .update(
                                                          reservationdeplaceUpdateData);

                                                  final usersUpdateData =
                                                      createUsersRecordData(
                                                    borne6rerserve: true,
                                                  );
                                                  await currentUserReference!
                                                      .update(usersUpdateData);

                                                  context.pushNamed('timer');
                                                },
                                                text: 'Réserver',
                                                options: FFButtonOptions(
                                                  width: 130,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      StreamBuilder<List<UsersRecord>>(
                                        stream: queryUsersRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          List<UsersRecord> rowUsersRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final rowUsersRecord =
                                              rowUsersRecordList.isNotEmpty
                                                  ? rowUsersRecordList.first
                                                  : null;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 80, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30,
                                                    borderWidth: 1,
                                                    buttonSize: 60,
                                                    icon: Icon(
                                                      Icons.arrow_back_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 30,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                          'Pagedaccueil');
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 20, 0),
                                                child: Text(
                                                  'Place Kleber',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 0, 0, 0),
                                                child: Container(
                                                  width: 50,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: ToggleIcon(
                                                    onPressed: () async {
                                                      final usersUpdateData = {
                                                        'Borne7favourite':
                                                            !rowUsersRecord!
                                                                .borne7favourite!,
                                                      };
                                                      await rowUsersRecord!
                                                          .reference
                                                          .update(
                                                              usersUpdateData);
                                                    },
                                                    value: rowUsersRecord!
                                                        .borne7favourite!,
                                                    onIcon: Icon(
                                                      Icons.favorite,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                    offIcon: Icon(
                                                      Icons.favorite_border,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: Image.network(
                                          'https://static.actu.fr/uploads/2021/11/sans-titre-1.jpg',
                                          width: 390.1,
                                          height: 356,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Places disponibles actuellement: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                      ),
                                            ),
                                            Text(
                                              bornesReservationdeplaceRecord!
                                                  .nombredeplaceborne7!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Places totales : 18\n\nAux alentours:\n-Cathédrale de Strasbourg\n-Rues commerciales',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Visibility(
                                            visible: !((valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne1rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne2rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne3rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne4reserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne5rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne6rerserve,
                                                        false) ==
                                                    true) ||
                                                (valueOrDefault<bool>(
                                                        currentUserDocument
                                                            ?.borne7reserve,
                                                        false) ==
                                                    true)),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  final reservationdeplaceUpdateData =
                                                      {
                                                    'Nombredeplaceborne7':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  };
                                                  await bornesReservationdeplaceRecord!
                                                      .reference
                                                      .update(
                                                          reservationdeplaceUpdateData);

                                                  final usersUpdateData =
                                                      createUsersRecordData(
                                                    borne7reserve: true,
                                                  );
                                                  await currentUserReference!
                                                      .update(usersUpdateData);

                                                  context.pushNamed('timer');
                                                },
                                                text: 'Réserver',
                                                options: FFButtonOptions(
                                                  width: 130,
                                                  height: 40,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
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
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 7,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController!.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: smooth_page_indicator.SlideEffect(
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 10,
                                    dotHeight: 10,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor:
                                        FlutterFlowTheme.of(context).black600,
                                    paintStyle: PaintingStyle.fill,
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
        );
      },
    );
  }
}
