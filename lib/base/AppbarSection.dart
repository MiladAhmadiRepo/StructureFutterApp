import 'package:flutter/material.dart';
import 'package:flutterapp2/utils/Currency.dart';
import 'package:flutterapp2/utils/screenHelper.dart';
import 'package:flutterapp2/Constatnts/AppSvg.dart';

class appbarSection extends StatefulWidget {
  appbarSection(
      {this.title,
      this.onBackClick,
      this.onCloseClick,
      this.onDeleteClick,
      this.onBasketClick,
      this.onInventoryCashback,
      this.onEditClick});

  _appbarState appbarState;
  String title;

  final Function() onBackClick;
  final Function() onCloseClick;
  final Function() onDeleteClick;
  final Function() onBasketClick;
  final Function() onEditClick;
  final Function() onInventoryCashback;

  void updateInventoryCashback(String inventoryCashback) {
    appbarState.updateInventoryCashback(inventoryCashback);
  }

  void clearTotalPrice() {
    appbarState.clearTotalPrice();
  }

  void minusTotalPrice() {
    appbarState.minusTotalPrice();
  }

  void addTotalPrice() {
    appbarState.addTotalPrice();
  }

  @override
  _appbarState createState() {
    appbarState = _appbarState();
    return appbarState;
  }
}

class _appbarState extends State<appbarSection> {
  int totalSale = 0;
  String inventoryCashback = "0";


  void updateInventoryCashback(String inventoryCashback) {
    setState(() {
      this.inventoryCashback = inventoryCashback;
    });
  }

  void clearTotalPrice() {
    setState(() {
      totalSale = 0;
    });
  }

  void minusTotalPrice() {
    setState(() {
      if (totalSale != 0) totalSale--;
    });
  }

  void addTotalPrice() {
    setState(() {
      totalSale++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //show price
                    if (widget.onInventoryCashback != null)
                      GestureDetector(
                        onTap: widget.onInventoryCashback,
                        child: Text(
                          formatPrice(this.inventoryCashback) + ' \$ ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenUtil.screenHeightDp,
                              color: Colors.green,
                              fontFamily: 'iran_sans'),
                        ),
                      ),

                    //  show back button
                    if (widget.onBackClick != null)
                      GestureDetector(
                          onTap: widget.onBackClick, child: AppSvg.svgBack),

                    //show reject button
                    if (widget.onCloseClick != null)
                      GestureDetector(
                          onTap: widget.onCloseClick, child:  AppSvg.svgClose),

                    if (widget.onInventoryCashback == null &&
                        widget.onBackClick == null &&
                        widget.onCloseClick == null)
                      Container(),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //show screen name
                    if (widget.title != null && widget.title.isNotEmpty)
                      Text(
                        widget.title,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'iran_sans'),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //show basket
                    if (widget.onBasketClick != null)
                      GestureDetector(
                        onTap: widget.onBasketClick,
                        child: Stack(
                          children: <Widget>[
                            AppSvg.svgBasket,
                            Positioned(
                              left: 0,
                              child: Visibility(
                                visible: totalSale > 0,
                                child: Container(
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  constraints: BoxConstraints(
                                    minWidth: 12,
                                    minHeight: 12,
                                  ),
                                  child: new Text(
                                    '$totalSale',
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    //show remove button
                    if (widget.onDeleteClick != null)
                      GestureDetector(
                          onTap: widget.onDeleteClick, child:  AppSvg.svgTrash),

                    //edit text
                    if (widget.onEditClick != null)
                      GestureDetector(
                        onTap: widget.onEditClick,
                        child: Text(
                          ' ویرایش ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'iran_sans'),
                        ),
                      ),

                    if (widget.onBasketClick == null &&
                        widget.onDeleteClick == null &&
                        widget.onEditClick == null)
                      Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
