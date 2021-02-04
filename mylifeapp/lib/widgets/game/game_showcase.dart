import 'package:flutter/material.dart';

class GameShowcaseData {
  final String iconUrl;
  final String title;
  final String subTitle;
  final String buttonText;

  final String appStoreLink;
  final String googlePlayLink;

  GameShowcaseData(
      {this.iconUrl,
      this.title,
      this.subTitle,
      this.buttonText,
      this.appStoreLink,
      this.googlePlayLink});
}

typedef OnUserClickGameEvent<T> = void Function(T value);

class RowOfGames extends StatelessWidget {
  final OnUserClickGameEvent<GameShowcaseData> onUserClickGameEvent;
  final List<GameShowcaseData> gameShowCases;

  RowOfGames({this.onUserClickGameEvent, this.gameShowCases});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: gameShowCases.map((e) {
        return Expanded(child: GameShowcase(e, onUserClickGameEvent));
      }).toList(),
    );
  }
}

class GameShowcase extends StatelessWidget {
  final GameShowcaseData gameShowcaseData;
  final OnUserClickGameEvent<GameShowcaseData> onUserClickGameEvent;

  GameShowcase(this.gameShowcaseData, this.onUserClickGameEvent);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _GameIcon(
            iconUrl: gameShowcaseData.iconUrl,
          ),
          _GameTitle(
            title: gameShowcaseData.title,
          ),
          _GameSubTitle(
            subTitle: gameShowcaseData.subTitle,
          ),
          _GameButton(
            gameShowcaseData: gameShowcaseData,
            onUserClickGameEvent: onUserClickGameEvent,
          )
        ],
      ),
    );
  }
}

class _GameIcon extends StatelessWidget {
  final String iconUrl;

  double get iconSize {
    return 50;
  }

  _GameIcon({this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        this.iconUrl,
        width: iconSize,
        height: iconSize,
      ),
    );
  }
}

class _GameTitle extends StatelessWidget {
  final String title;

  TextStyle _textStyle = TextStyle(color: Colors.white, fontSize: 20);

  _GameTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: _textStyle,
    );
  }
}

class _GameSubTitle extends StatelessWidget {
  final String subTitle;

  TextStyle _textStyle = TextStyle(color: Colors.white, fontSize: 14);

  _GameSubTitle({this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: _textStyle,
    );
  }
}

class _GameButton extends StatelessWidget {
  final GameShowcaseData gameShowcaseData;
  final OnUserClickGameEvent<GameShowcaseData> onUserClickGameEvent;

  final TextStyle _textStyle = TextStyle(color: Colors.white, fontSize: 14);

  _GameButton({this.gameShowcaseData, this.onUserClickGameEvent});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        onUserClickGameEvent?.call(gameShowcaseData);
      },
      child: Text(
        gameShowcaseData.buttonText,
        style: _textStyle,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)),
    );
  }
}
