import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/Constatnts/AppTheme.dart';
import 'package:flutterapp2/utils/screenHelper.dart';

class BottomSheetDiffrence extends StatefulWidget {
  AnimationController controllerCall;
  bool isExpanded = false;
  Function backClick;
  Function completeButtonClick;
  double minExtent = 0.3;
  double maxExtent = 0.7;
  double initialExtent;
  BuildContext draggableSheetContext;
  BottomSheetDiffrence(this.backClick, this.completeButtonClick);

  @override
  _BottomSheetState createState() => _BottomSheetState();

  openCloseBottomSheet() {
    if (controllerCall != null) if (controllerCall.isDismissed) {
      controllerCall.forward();
    } else if (controllerCall.isCompleted) {
      controllerCall.reverse();
    }
  }
}

class _BottomSheetState extends State<BottomSheetDiffrence>
    with SingleTickerProviderStateMixin {
  Duration _duration = Duration(milliseconds: 500);
  Tween<Offset> _tween = Tween(begin: Offset(0, 1), end: Offset(0, 0));
  String defaultValue = 'شماره 16 رقمی کارت خود را وارد نمایید';
  String inTextField;
  String removeLetterIcon = 'a.png';
  String backLetterIcon = 'a_2.png';

  @override
  void initState() {
    super.initState();
    widget.controllerCall =
        AnimationController(vsync: this, duration: _duration);
    widget.initialExtent = widget.minExtent;
    inTextField = defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    widget.draggableSheetContext = context;
    ScreenUtil.instance = ScreenUtil(
      width: AppTheme.defaultScreenWidth,
      height: AppTheme.defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);
    return SlideTransition(
      position: _tween.animate(widget.controllerCall),
      child: NotificationListener<DraggableScrollableNotification>(
        onNotification: (DraggableScrollableNotification DSNotification) {
          print("sss:" + DSNotification.extent.toString());
          if (DSNotification.extent > widget.minExtent) {
            setState(() {
//              widget.initialExtent=widget.maxExtent;
              widget.isExpanded = true;
            });
          } else {
            setState(() {
              widget.initialExtent=widget.minExtent;
              widget.isExpanded = false;
            });
          }
        },
        child: DraggableScrollableActuator(
          child: DraggableScrollableSheet(
            key: Key(widget.initialExtent.toString()),
            minChildSize: widget.minExtent,
            maxChildSize: widget.maxExtent,
            initialChildSize: widget.initialExtent,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: AppTheme.backSort,
                  border: Border.all(
                    color: AppTheme.backSort,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: ListView(
                  controller: scrollController,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            top: ScreenUtil().setHeight(15),
                            bottom: ScreenUtil().setHeight(15),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                          width: ScreenUtil().setWidth(60),
                          height: ScreenUtil().setHeight(5),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'add card',
                          style: AppTheme.white_14,
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: ScreenUtil().setWidth(320),
                            margin: EdgeInsets.only(
                              top: ScreenUtil().setHeight(15),
                              bottom: ScreenUtil().setHeight(15),
                            ),
                            padding: EdgeInsets.only(
                              top: ScreenUtil().setHeight(15),
                              bottom: ScreenUtil().setHeight(15),
                              left: ScreenUtil().setWidth(20),
                              right: ScreenUtil().setWidth(20),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Colors.grey[700],
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              inTextField,
                              textAlign: TextAlign.center,
                              style: AppTheme.lightgrey_12,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        toggleDraggableScrollableSheet();
                      },
                    ),
                    if (!widget.isExpanded)
                      GestureDetector(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: ScreenUtil().setWidth(150),
                                height: ScreenUtil().setHeight(35),
                                decoration: BoxDecoration(
                                  borderRadius: new BorderRadius.all(
                                    Radius.circular(ScreenUtil().setWidth(10)),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      AppTheme.Narenji,
                                      AppTheme.Narenji,
                                    ], // whitish to gray
                                    tileMode: TileMode
                                        .repeated, // repeats the gradient over the canvas
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'تکمیل اطلاعات',
                                    style: AppTheme.white_14,
                                  ),
                                ),
                              ),
                            ]),
                        onTap: widget.completeButtonClick,
                      ),
                    if (widget.isExpanded)
                      Container(
                        margin: EdgeInsets.only(
                            top: ScreenUtil().setHeight(10),
                            left: ScreenUtil().setWidth(20),
                            right: ScreenUtil().setWidth(20)),
                        width: ScreenUtil.screenWidth,
                        height: ScreenUtil().setHeight(280),
                        color: AppTheme.MediumGrey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buttonKeyboad('3'),
                                buttonKeyboad('2'),
                                buttonKeyboad('1'),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buttonKeyboad('6'),
                                buttonKeyboad('5'),
                                buttonKeyboad('4'),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buttonKeyboad('9'),
                                buttonKeyboad('8'),
                                buttonKeyboad('7'),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                buttonKeyboadImage(removeLetterIcon),
                                buttonKeyboad('0'),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, "/home");
                                    },
                                    child: buttonKeyboadImage('a_2.png')),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buttonKeyboad(String key) {
    return GestureDetector(
      child: Container(
        width: ScreenUtil().setWidth(70),
        height: ScreenUtil().setHeight(50),
        decoration: BoxDecoration(
            color: AppTheme.black,
            border: Border.all(
              color: Colors.grey[700],
              width: ScreenUtil().setWidth(0.3),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(ScreenUtil().setHeight(10)),
            )),
        child: Center(
            child: Text(
              key,
              style: AppTheme.white_17_bold,
            )),
      ),
      onTap: () {
        if (inTextField.contains(" "))
          setState(() {
            inTextField = key;
          });
        else
          setState(() {
            inTextField += key;
          });
      },
    );
  }

  //دکمه کیبورد با عکس
  Widget buttonKeyboadImage(String name) {
    return GestureDetector(
      child: Container(
        width: ScreenUtil().setWidth(70),
        height: ScreenUtil().setHeight(50),
        decoration: BoxDecoration(
            color: AppTheme.black,
            border: Border.all(
              color: Colors.grey[700],
              width: ScreenUtil().setWidth(0.3),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(ScreenUtil().setHeight(10)),
            )),
        child: Center(
            child: Container(
              width: ScreenUtil().setWidth(20),
              height: ScreenUtil().setHeight(20),
              child: Image.asset(
                "assets/images/" + name,
                fit: BoxFit.cover,
              ),
            )),
      ),
      onTap: () {
        if (name == removeLetterIcon) {
          if (inTextField != null && inTextField.length > 0) {
            setState(() {
              inTextField = inTextField.substring(0, inTextField.length - 1);
            });
          } else if (inTextField.length == 0) {
            setState(() {
              inTextField = defaultValue;
            });
          }
        } else if (name == backLetterIcon) {
          widget.backClick();
        }
      },
    );
  }

  void toggleDraggableScrollableSheet() {
    print('sss' + (widget.draggableSheetContext).toString());
    if (widget.draggableSheetContext != null) {
      setState(() {
//        widget.initialExtent = widget.maxExtent;
//        widget.isExpanded = true;

        widget.initialExtent =  widget.isExpanded ?  widget.minExtent :  widget.maxExtent;
        widget.isExpanded = ! widget.isExpanded;
        print('sss' +widget.initialExtent.toString()+"_"+ (widget.isExpanded).toString());

      });
      DraggableScrollableActuator.reset(widget.draggableSheetContext);
    }
  }
}
