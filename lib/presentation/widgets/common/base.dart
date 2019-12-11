import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Base extends StatefulWidget {
  Base({this.appBarTitle, this.feedTitle, this.showDrawer, this.menuCardType, this.feedCardType, this.bannerImage});

  final String appBarTitle;
  final String feedTitle;
  final Widget showDrawer;
  final Widget menuCardType;
  final Widget feedCardType;
  final String bannerImage;

  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {
  _BaseState({this.appBarTitle, this.feedTitle, this.menuCardType, this.showDrawer, this.feedCardType, this.bannerImage});

  String appBarTitle;
  String feedTitle;
  bool showDrawer;
  Widget menuCardType;
  Widget feedCardType;
  String bannerImage;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _scrollToTop() {
    _scrollController.animateTo(_scrollController.position.minScrollExtent,
        duration: Duration(milliseconds: 1000), curve: Curves.easeIn);

  }


  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: 0,
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        leading: widget.showDrawer,
        title: Text(widget.appBarTitle.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0,
      ),
      drawer: Visibility(visible: true, child: Drawer()),
      body: Stack(
        children: <Widget>[
          ListView(
            controller: _scrollController,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SafeArea(
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black,
                            Colors.black,
                            Colors.black,
                            Colors.transparent
                          ],
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SafeArea(
                        top: false,
                        child: Image(
                          image: AssetImage(widget.bannerImage),
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 3,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:120.0),
                    child: widget.menuCardType,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                child: Text(
                  widget.feedTitle, textAlign: TextAlign.center, style: Theme
                    .of(context)
                    .textTheme
                    .button,),
              ),

              widget.feedCardType,
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _scrollToTop();
        },
      ),
    );
  }
}
