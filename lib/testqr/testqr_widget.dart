import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestqrWidget extends StatefulWidget {
  const TestqrWidget({Key? key}) : super(key: key);

  @override
  _TestqrWidgetState createState() => _TestqrWidgetState();
}

class _TestqrWidgetState extends State<TestqrWidget> {
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
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 50,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.89),
                          child: Text(
                            'Borne 1',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align( // afin de mieux gérer l'accés à nos différentes pages nous avons realisé au sein de flutter un génerateur qr code, nous avons générer un qrcode par page
                          alignment: AlignmentDirectional(-0.69, -0.6),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 250,
                                height: 250,
                                child: custom_widgets.QRCode(
                                  width: 250,
                                  height: 250,
                                  qrSize: 250.0,
                                  qrData: 'https://Parklib.tk/scannerpage1',
                                  gapLess: true,
                                  qrPadding: 16.0,
                                  qrBorderRadius: 16.0,
                                  semanticsLabel: 'Hello Text Data',
                                  qrBackgroundColor:
                                      FlutterFlowTheme.of(context).gray200,
                                  qrForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.89),
                          child: Text(
                            'Borne 2',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.6),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 250,
                                height: 250,
                                child: custom_widgets.QRCode(
                                  width: 250,
                                  height: 250,
                                  qrSize: 250.0,
                                  qrData: 'https://Parklib.tk/scannerpage2',
                                  gapLess: true,
                                  qrPadding: 16.0,
                                  qrBorderRadius: 16.0,
                                  semanticsLabel: 'Hello Text Data',
                                  qrBackgroundColor:
                                      FlutterFlowTheme.of(context).gray200,
                                  qrForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.89),
                          child: Text(
                            'Borne 3',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.6),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 250,
                                height: 250,
                                child: custom_widgets.QRCode(
                                  width: 250,
                                  height: 250,
                                  qrSize: 250.0,
                                  qrData: 'https://Parklib.tk/scannerpage3',
                                  gapLess: true,
                                  qrPadding: 16.0,
                                  qrBorderRadius: 16.0,
                                  semanticsLabel: 'Hello Text Data',
                                  qrBackgroundColor:
                                      FlutterFlowTheme.of(context).gray200,
                                  qrForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.89),
                          child: Text(
                            'Borne 4',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.6),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 250,
                                height: 250,
                                child: custom_widgets.QRCode(
                                  width: 250,
                                  height: 250,
                                  qrSize: 250.0,
                                  qrData: 'https://Parklib.tk/scannerpage4',
                                  gapLess: true,
                                  qrPadding: 16.0,
                                  qrBorderRadius: 16.0,
                                  semanticsLabel: 'Hello Text Data',
                                  qrBackgroundColor:
                                      FlutterFlowTheme.of(context).gray200,
                                  qrForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.89),
                          child: Text(
                            'Borne 5',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.6),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 250,
                                height: 250,
                                child: custom_widgets.QRCode(
                                  width: 250,
                                  height: 250,
                                  qrSize: 250.0,
                                  qrData: 'https://Parklib.tk/scannerpage5',
                                  gapLess: true,
                                  qrPadding: 16.0,
                                  qrBorderRadius: 16.0,
                                  semanticsLabel: 'Hello Text Data',
                                  qrBackgroundColor:
                                      FlutterFlowTheme.of(context).gray200,
                                  qrForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.89),
                          child: Text(
                            'Borne 6',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.6),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 250,
                                height: 250,
                                child: custom_widgets.QRCode(
                                  width: 250,
                                  height: 250,
                                  qrSize: 250.0,
                                  qrData: 'https://Parklib.tk/scannerpage6',
                                  gapLess: true,
                                  qrPadding: 16.0,
                                  qrBorderRadius: 16.0,
                                  semanticsLabel: 'Hello Text Data',
                                  qrBackgroundColor:
                                      FlutterFlowTheme.of(context).gray200,
                                  qrForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.89),
                          child: Text(
                            'Borne 7',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.69, -0.6),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: 250,
                                height: 250,
                                child: custom_widgets.QRCode(
                                  width: 250,
                                  height: 250,
                                  qrSize: 250.0,
                                  qrData: 'https://Parklib.tk/scannerpage7',
                                  gapLess: true,
                                  qrPadding: 16.0,
                                  qrBorderRadius: 16.0,
                                  semanticsLabel: 'Hello Text Data',
                                  qrBackgroundColor:
                                      FlutterFlowTheme.of(context).gray200,
                                  qrForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
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
            ],
          ),
        ),
      ),
    );
  }
}
