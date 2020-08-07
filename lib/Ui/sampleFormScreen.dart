import 'package:boomerang/helper/UIHelper.dart';
import 'package:boomerang/helper/appTheme.dart';
import 'package:boomerang/helper/screenHelper.dart';
import 'package:boomerang/models/CartsModel.dart';
import 'package:boomerang/ui/base/base_StateFull_view.dart';
import 'package:boomerang/ui/generals/MainButton/MainButton.dart';
import 'package:boomerang/ui/users/baseUi/baseUiView.dart';
import 'package:boomerang/ui/users/mainUi/navigationHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class sampleFormScreen extends StatefulWidget {
  final String balance;
  final String userType;

  const sampleFormScreen({Key key, this.userType, this.balance})
      : super(key: key);

  @override
  _sampleFormScreenState createState() =>
      _sampleFormScreenState(this.userType, this.balance);
}

class _sampleFormScreenState extends BaseViewState<sampleFormScreen>
    implements sampleFormMVPView {
  sampleFormPresenter _presenter;
  List<CartsData> carts = new List();
  String passError = "";
  final String balance;
  final String userType;

  var chooseCart = false;
  FocusNode amountfocus = new FocusNode(), passfocus = new FocusNode();

  _sampleFormScreenState(this.userType, this.balance);

  @override
  void initState() {
    super.initState();
    _presenter = new sampleFormPresenter();
    _presenter.attachView(this);
    _presenter.getCarts();
    _presenter.get_phone(userType);
  }

  String barcode = "";
  bool isSecure = false, isValidate = false;
  var phone;

  final phoneController = TextEditingController();
  final passcontroller = TextEditingController();
  final toAddress = TextEditingController();
  final amount = TextEditingController();
  final comment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
      width: AppTheme.defaultScreenWidth,
      height: AppTheme.defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);
    return NavigationHomeScreen(
      screenView: BaseUIView(
        title: "asd",
        title2: "asd : " + balance + " asd",
        Child: <Widget>[
          Stack(
            alignment: Alignment(0, -1),
            children: <Widget>[
              Container(
                  alignment: Alignment(0, 0),
                  width: ScreenUtil.screenWidth,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        child: Text(
                          "",
                          style: AppTheme.bardashtTitle,
                        ),
                        padding: EdgeInsets.fromLTRB(
                            ScreenUtil().setWidth(18),
                            ScreenUtil().setWidth(18),
                            ScreenUtil().setWidth(42),
                            0),
                      ),
                      CustomTextFormField(
                        icon: "assets/images/phase_1/from_address.svg",
                        label: "  asd",
                        enabled: false,
                        controller: phoneController,
                      ),
                      if (isSecure)
                        Padding(
                          child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  ScreenUtil.screenWidth * 12 / 100,
                                  ScreenUtil().setHeight(8),
                                  ScreenUtil.screenWidth * 12 / 100,
                                  ScreenUtil().setHeight(8)),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        child: Container(
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius
                                                      .only(
                                                  bottomRight:
                                                      new Radius.circular(
                                                          ScreenUtil.instance
                                                              .setWidth(14)),
                                                  topRight: new Radius.circular(
                                                      ScreenUtil.instance
                                                          .setWidth(14))),
                                              color: AppTheme.PrimaryGreen),
                                          height: ScreenUtil().setHeight(85),
                                          alignment: Alignment.center,
                                          child: SvgPicture.asset(
                                              "assets/images/phase_1/asdvector.svg",
                                              color: Colors.white,
                                              width: ScreenUtil().setWidth(30),
                                              fit: BoxFit.fitWidth,
                                              semanticsLabel: 'Acme Logo'),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(
                                                  right:
                                                      ScreenUtil().setWidth(8)),
                                              height:
                                                  ScreenUtil().setHeight(85),
                                              decoration: new BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft:
                                                          new Radius.circular(
                                                              ScreenUtil()
                                                                  .setWidth(4)),
                                                      bottomLeft:
                                                          new Radius.circular(
                                                              ScreenUtil()
                                                                  .setWidth(
                                                                      4))),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: passError == null ||
                                                              passError == ""
                                                          ? AppTheme.PrimaryGreen
                                                          : AppTheme.red)),
                                              child: TextFormField(
                                                  obscureText: true,
                                                  controller: passcontroller,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  autovalidate: true,
                                                  maxLength: 10,
                                                  validator: (value) {
                                                    if (isSecure) {
                                                      if (value.isEmpty) {
                                                        passError =
                                                            'رasd';
                                                      } else if (value.length <
                                                          4) {
                                                        passError =
                                                            'asd';
                                                      } else
                                                        passError = null;
                                                    } else
                                                      passError = null;
                                                    return null;
                                                  },
                                                  style: AppTheme.body1,
                                                  decoration: InputDecoration(
                                                    counterText: "",
                                                    labelText: "asd",
                                                    labelStyle: AppTheme.body1,
                                                    errorStyle:
                                                        AppTheme.errorStyle,
                                                    border: InputBorder.none,
                                                  )),
                                            ),
                                            if (passError != null ||
                                                passError == "")
                                              Container(
                                                child: Text(
                                                  passError,
                                                  style: AppTheme.errorStyle,
                                                  textAlign: TextAlign.right,
                                                ),
                                                padding: EdgeInsets.only(
                                                    top: ScreenUtil()
                                                        .setHeight(8)),
                                              )
                                          ],
                                        ))
                                  ])),
                          padding:
                              EdgeInsets.only(top: ScreenUtil().setHeight(120)),
                        ),
                      Padding(
                        child: CustomTextFormField(
                          icon: "assets/images/phase_1/money_vector.svg",
                          label: "asd (asd)",
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            LengthLimitingTextInputFormatter(12),
                            WhitelistingTextInputFormatter.digitsOnly,
                            BlacklistingTextInputFormatter.singleLineFormatter,
                            CurrencyInputFormatter()
                          ],
                          validator: (value) {
                            if (value.isEmpty) {
                              isValidate = false;
                              return 'asd';
                            } else {
                              isValidate = true;
                              return null;
                            }
                          },
                          focusNode: amountfocus,
                          controller: amount,
                        ),
                        padding: EdgeInsets.only(
                            top: ScreenUtil().setHeight(isSecure ? 16 : 140)),
                      ),
                      MainButton(
                        title: "asd  ",
                        onTap: () async {
                          if (!isValidate ||
                              (toAddress.text == null ||
                                  toAddress.text == "" ||
                                  amount.text == null ||
                                  amount.text == "" ||
                                  (isSecure &&
                                      passcontroller.text.length < 4))) {
                            showError("لasd");
                          } else {
                            if (toAddress.text.length < 23) {
                              showError("asd");
                            } else {
                              showConfirm(
                                  "asd   asd asd ${amount.text} asd asd؟",
                                  (bool isConfirm) {
                                if (isConfirm) {
                                  Future.delayed(
                                      const Duration(milliseconds: 10), () {
                                    _presenter.doBardasht(
                                        phone,
                                        amount.text,
                                        toAddress.text,
                                        passcontroller.text,
                                        userType);
                                  });
                                }
                                return true;
                              }, "asd asd", "asd", "asd");
                            }
                          }
                        },
                      ),
                    ],
                  )),
              AnimatedContainer(
                height: chooseCart
                    ? ScreenUtil().setHeight(90) * carts.length >
                            ScreenUtil().setHeight(450)
                        ? ScreenUtil().setHeight(450)
                        : ScreenUtil().setHeight(80) * carts.length +
                            ScreenUtil().setHeight(70)
                    : ScreenUtil().setHeight(80),
                width: ScreenUtil.screenWidth * 76 / 100,
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          flex: 5,
                          child: AnimatedContainer(
                            padding: EdgeInsets.only(
                                right: ScreenUtil().setWidth(25)),
                            child: TextField(
                              textAlign: TextAlign.start,
                              onChanged: (text) {
//                                if (text.length == 16) FocusScope.of(context).requestFocus(amountfocus);
                              },
                              style: AppTheme.body1,
                              keyboardType: TextInputType.number,
                              controller: toAddress,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  counterText: "",
                                  labelText: "asd  ",
                                  labelStyle: AppTheme.profile),
                            ),
                            duration: Duration(microseconds: 700),
                            curve: Curves.linearToEaseOut,
                          )),
                      Text("IR", style: AppTheme.body1),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              chooseCart = !chooseCart;
                            });
                          },
                          child: AnimatedContainer(
                            padding: new EdgeInsets.all(
                                ScreenUtil.instance.setWidth(23)),
                            alignment: Alignment(-1.0, 0.0),
                            child: SvgPicture.asset(
                              "assets/images/phase_1/sd_vector.svg",
                              width: ScreenUtil().setWidth(35),
                              fit: BoxFit.fitWidth,
                            ),
                            duration: Duration(microseconds: 700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: ScreenUtil().setHeight(370),
                    child: ListView.builder(
                      itemCount: carts.length,
                      padding: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(8),
                          0, ScreenUtil().setWidth(8)),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              child: Column(children: <Widget>[
                                Padding(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                            carts[index].number,
                                            style: toAddress.text ==
                                                    carts[index].number
                                                ? AppTheme.selectedShaba
                                                : AppTheme.PrimaryGreen_18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.fromLTRB(
                                      0,
                                      ScreenUtil().setWidth(16),
                                      0,
                                      ScreenUtil().setWidth(16)),
                                ),
                                Container(
                                  height: ScreenUtil().setHeight(3),
                                  color: AppTheme.PrimaryGreen,
                                )
                              ]),
                              color: toAddress.text == carts[index].number
                                  ? AppTheme.PrimaryGreen
                                  : AppTheme.white),
                          onTap: () {
                            setState(() {
                              toAddress.text = carts[index].number;
                              chooseCart = false;
                            });
                          },
                        );
                      },
                    ),
                  )
                ]),
                decoration: new BoxDecoration(
                    border: Border.all(
                      color: AppTheme.PrimaryGreen,
                      width: 2, //
                    ),
                    borderRadius: new BorderRadius.all(
                        new Radius.circular(ScreenUtil.instance.setWidth(16)))),
                margin:
                    EdgeInsets.only(top: ScreenUtil.instance.setHeight(145)),
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 700),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void setBarcode(String barcode) {
    this.barcode = barcode;
    setState(() {});
  }

  @override
  void init(String phone, bool isSecure) {
    this.phone = phone;
    phoneController.text = phone;
    this.isSecure = isSecure;
    setState(() {});
  }

  @override
  void setCarts(List<CartsData> carts) {
    this.carts = carts;
    setState(() {});
  }
}
