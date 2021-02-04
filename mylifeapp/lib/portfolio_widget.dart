//PortfolioWidget

import 'package:flutter/material.dart';
import 'package:mylifeapp/widgets/particle_background/particle_background.dart';
import 'widgets/game/game.dart';

class PortfolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _PortfolioHeader(),
          _Bio(),
          _Skills(),
          _Games((g) {}),
          _StartLearningWidget()
        ],
      ),
    );
  }
}

class _PortfolioHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Portfolio',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Container(
            height: 20,
            width: 300,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class _Bio extends StatelessWidget {
  TextStyle _normal = TextStyle(color: Colors.white);
  TextStyle _bold = TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Reactive ',
        style: _normal,
        children: <TextSpan>[
          TextSpan(text: 'apps', style: _bold),
          TextSpan(text: ', fun ', style: _normal),
          TextSpan(text: 'games', style: _bold),
          TextSpan(text: ', and new ', style: _normal),
          TextSpan(text: 'ideas', style: _bold),
          TextSpan(text: ' – with panache', style: _normal),
        ],
      ),
    );
  }
}

// More layout need to learn here: https://flutter.dev/docs/development/ui/layout
class _Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: _Skill(
            title: 'Full Stack',
            content:
                'A portfolio of more than 50 websites and several cross-platform apps has demanded skills in everything from design and front-end wizardry to database architecture and server maintenance.',
          )),
          Expanded(
              child: _Skill(
            title: 'Creative',
            content:
                'Experimenting with cutting-edge technologies and APIs usually leads to awesome projects. \nSometimes, it leads to interactive physics simulations involving popcorn.',
          )),
          Expanded(
              child: _Skill(
            title: 'User-Centred',
            content:
                'In every project I touch, I combine creative, speedy code with a deep consideration for the user experience. \nI develop digital tools that are a true joy to use.',
          ))
        ],
      ),
    );
  }
}

class _Skill extends StatelessWidget {
  final String title;
  final String content;

  final TextStyle _titleTextStyle =
      TextStyle(fontSize: 30, color: Colors.white);
  final TextStyle _contentTextStyle =
      TextStyle(fontSize: 20, color: Colors.white);

  _Skill({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
//            textAlign: TextAlign.left,
            style: _titleTextStyle,
          ),
          Text(
            content,
//            textAlign: TextAlign.left,
            style: _contentTextStyle,
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String header;

  final TextStyle _headerTextStyle =
      TextStyle(fontSize: 24, color: Colors.white);

  _SectionHeader(this.header);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            header,
            style: _headerTextStyle,
          ),
          SizedBox(
            width: 100,
            height: 5,
            child: _UnderTitleLine(),
          )
        ],
      ),
    );
  }
}

class _UnderTitleLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class _Games extends StatelessWidget {
//  https://play-lh.googleusercontent.com/mp72JlhWGsRmKGtQcoKkyn4f7InbBBRLSTw1WG2Vs1PIMyn2m9ysoU0bWinlvHJOAO8=s360
  final List<GameShowcaseData> _gameShowcaseDatas = [
    // Merge Tanks
    GameShowcaseData(
        iconUrl:
            'https://play-lh.googleusercontent.com/mp72JlhWGsRmKGtQcoKkyn4f7InbBBRLSTw1WG2Vs1PIMyn2m9ysoU0bWinlvHJOAO8=s360',
        title: 'Merge Tanks',
        subTitle: 'Casual - Idle',
        buttonText: 'Play Now!'),

    // Tedoku
    GameShowcaseData(
        iconUrl:
            'https://play-lh.googleusercontent.com/mp72JlhWGsRmKGtQcoKkyn4f7InbBBRLSTw1WG2Vs1PIMyn2m9ysoU0bWinlvHJOAO8=s360',
        title: 'Tedoku',
        subTitle: 'Simple Fun Block Puzzle Game',
        buttonText: 'Play Now!'),

    // Triple Crush
    GameShowcaseData(
        iconUrl:
            'https://play-lh.googleusercontent.com/mp72JlhWGsRmKGtQcoKkyn4f7InbBBRLSTw1WG2Vs1PIMyn2m9ysoU0bWinlvHJOAO8=s360',
        title: 'Triple Crush',
        subTitle: 'Simple Fun Tile Matching Game',
        buttonText: 'Play Now!')
  ];

  final OnUserClickGameEvent<GameShowcaseData> onUserClickGameEvent;

  _Games(this.onUserClickGameEvent);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _SectionHeader('Games'),
          Container(
            child: RowOfGames(
              gameShowCases: _gameShowcaseDatas,
              onUserClickGameEvent: onUserClickGameEvent,
            ),
          )
        ],
      ),
    );
  }
}

class _StartLearningWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: Stack(
          children: <Widget>[
            Positioned.fill(child: AnimatedBackground()),
            Positioned.fill(child: Particles(30)),
            Positioned.fill(
                child: Center(
              child: Text(
                "Study",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
                textScaleFactor: 4,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
