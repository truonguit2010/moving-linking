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
    // TODO: implement build
    throw UnimplementedError();
  }
}

class Title extends StatelessWidget {
  final String text;

  Title(this.text);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class SubTitle extends StatelessWidget {
  final String text;

  SubTitle(this.text);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class Content extends StatelessWidget {
  final String text;

  Content(this.text);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
