import 'package:flutter/material.dart';

class ChipsList extends StatefulWidget {

  _ChipsListState chipsListStateInstanciate; //جهت اضافه کردن چیپس
  final List<ChipsModel> list; //لیست ورودی
  final Axis scrollOrientation; //جهت لیست

  //اضافه کردن چیپس
  void addChips(ChipsModel model) {
    chipsListStateInstanciate.addChips(model);
  }

  //برگرداندن لیست وارد شده
  List<ChipsModel> getListItems() {
    return chipsListStateInstanciate.getListItems();
  }

  //سازنده
  ChipsList({this.list, this.scrollOrientation});

  @override
  _ChipsListState createState() {
    chipsListStateInstanciate = _ChipsListState();
    return chipsListStateInstanciate;
  }
}

class _ChipsListState extends State<ChipsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list.length,
        scrollDirection: widget.scrollOrientation,
        itemBuilder: (context, index) {
          return ShowItems(
            title: widget.list[index].inputText,
            onDelete: () => removeItem(index),
            onSelected: () => selectItem(index),
            selected: widget.list[index].selectItem,
            choiceChip: true, //بر اساس مقدار بولین ، نوع چیپ ها تغییر میکنه
          );
        });
  }

  //حذف کردن چیپ
  void removeItem(int index) {
    setState(() {
      widget.list.removeAt(index);
    });
  }

  //انتخاب چیپ
  void selectItem(int index) {
    setState(() {
      widget.list[index].selectItem = !widget.list[index].selectItem;
    });
  }

  //اضافه کردن چیپس
  void addChips(ChipsModel model) {
    setState(() {
      widget.list.add(model);
    });
  }

  //برگرداندن لیست وارد شده
  List<ChipsModel> getListItems() {
    return widget.list;
  }

}

//نمایش چیپ ها
class ShowItems extends StatelessWidget {
  String title;
  VoidCallback onDelete;
  VoidCallback onSelected;
  bool selected;
  bool choiceChip; //1 close - 2 select

  ShowItems(
      {this.title,
      this.onDelete,
      this.onSelected,
      this.selected,
      this.choiceChip});

  setColorBackGround(BuildContext context, Color colorBackGroundSelected) {
    return colorBackGroundSelected != null
        ? colorBackGroundSelected
        : Theme.of(context).primaryColor;
  }

  //رنگ پشت زمینه چیپس انتخابی
  Color setSelectedBackColor() {
    return Colors.grey[700];
  }

  //رنگ ایکون چیپس انتخابی
  Color setSelectedIconColor() {
    return Colors.grey[500];
  }

  //رنگ متن هنگامی که چیپس انتخاب شده باشد
  TextStyle setTextStyle() {
    if (selected)
      return TextStyle(color: Colors.white);
    else
      return TextStyle(color: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: !choiceChip
            //چیپس معمولی با حدف کردن
            ? Chip(
                onDeleted: () => this.onDelete(),
                deleteIcon: Icon(Icons.cancel),
                deleteIconColor: Colors.grey[500],
                label: Text(title),
              )
            //چیپس انتخابی
            : RawChip(
                label: Text(title),
                selected: selected,
                onSelected: (bool selected) => this.onSelected(),
                labelStyle: setTextStyle(),
                selectedColor: setSelectedBackColor(),
                checkmarkColor: setSelectedIconColor(),
              ));
  }
}

//مدل
class ChipsModel {
  String inputText;
  bool selectItem;

  ChipsModel({this.inputText, this.selectItem});

  @override
  String toString() => '$inputText : $selectItem ';

}
