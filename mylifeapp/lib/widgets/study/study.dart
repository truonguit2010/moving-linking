import 'package:flutter/material.dart';

class StudyWidgetData {
  final String title;
  final String subTitle;
  final String content;
  final String leftSideImageUrl;
  final String buttonText;
  final String startColor;
  final String endColor;

  StudyWidgetData(
      {this.title,
      this.subTitle,
      this.content,
      this.leftSideImageUrl,
      this.buttonText,
      this.startColor,
      this.endColor});
}

class StudyWidget extends StatelessWidget {
  final StudyWidgetData studyWidgetData;

  StudyWidget({this.studyWidgetData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: _InfoColumn(
              studyWidgetData: studyWidgetData,
            ),
            flex: 3,
          ),
          Expanded(
            child: _ImageColumn(
              studyWidgetData: studyWidgetData,
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  final StudyWidgetData studyWidgetData;

  _InfoColumn({this.studyWidgetData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _Title(
            text: studyWidgetData.title,
          ),
          _SubTitle(
            text: studyWidgetData.subTitle,
          ),
          _Content(
            text: studyWidgetData.content,
          )
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String text;

  final _textStyle = TextStyle(fontSize: 24, color: Colors.white);

  _Title({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle,
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String text;

  final _textStyle = TextStyle(fontSize: 16, color: Colors.white);

  _SubTitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle,
    );
  }
}

class _Content extends StatelessWidget {
  final String text;

  final _textStyle = TextStyle(fontSize: 12, color: Colors.white);

  _Content({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle,
    );
  }
}

class _ImageColumn extends StatelessWidget {
  final StudyWidgetData studyWidgetData;

  _ImageColumn({this.studyWidgetData});

  @override
  Widget build(BuildContext context) {
    return Container(
//      child: Positioned.fill(
//        child: Image.network(
//          this.studyWidgetData.leftSideImageUrl,
//          fit: BoxFit.fitWidth,
//        ),
//      ),
        );
  }
}
