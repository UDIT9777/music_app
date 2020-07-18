import 'package:flutter/material.dart';
import 'package:flutterplayerlistapp/core/const.dart';
import 'package:flutterplayerlistapp/widget/custom_button.dart';


class ProgressWidget extends StatefulWidget {
  final double value;
  final String labelStart;
  final String labelEnd;

  ProgressWidget({this.value,this.labelStart, this.labelEnd,});


  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: 50,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text( widget.labelStart, style: TextStyle(color: AppColors.styleColor),),
                Text(widget.labelEnd, style: TextStyle(color: AppColors.styleColor),),
              ],
            ),
          ),
          _mainProgress(width),
          _progressValue(width * widget.value),
          _indicatorButton(width * widget.value < 30 ? 30 : width * widget.value ),
        ],
      ),
    );
  }

  Widget _indicatorButton(double width){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 40,
        width: width,
        child: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(),
            ),
            CustomWidget(
              size: 30,
              onTap: null,
              child: Icon(Icons.fiber_manual_record, size: 20, color:
              AppColors.darkBlue,),

            )
          ],
        ),
      ),
    );
  }

  Widget _progressValue(double width){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.lightBlue,
          border: Border.all(
            color: AppColors.styleColor.withAlpha(90),
            width: .5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
    );
  }


  Widget _mainProgress(double width){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          border: Border.all(
            color: AppColors.styleColor.withAlpha(90),
            width: .5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.styleColor.withAlpha(90),
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(1, -1),
            ),
          ],
        ),
      ),
    );
  }
}
