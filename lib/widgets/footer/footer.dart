import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

import 'package:mylifeapp/configurations.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _MenuColumn(),
          _LinkedColumn(),
          Expanded(child: _BioColumn())
        ],
      ),
    );
  }
}

class _MenuColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
//          _Name()/
        ],
      ),
    );
  }
}

class _Name extends StatelessWidget {
  final String text;

  final _textStyle = TextStyle(color: Colors.white, fontSize: 24);

  _Name(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle,
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String text;

  final _textStyle = TextStyle(color: Colors.white, fontSize: 24);

  _MenuItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle,
    );
  }
}

class _LinkedColumn extends StatelessWidget {
  TextStyle _textStyle = TextStyle(color: Colors.white, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [_GidHub(), _AppStore(), _GooglePlay()],
            ),
          ),
          Container(
            child: FlatButton(
              child: Text(
                EMAIL_PERSIONAL,
                style: _textStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _GidHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: FaIcon(FontAwesomeIcons.github),
        onPressed: () {
          js.context.callMethod('open', [LINK_GITHUB]);
        });
  }
}

class _AppStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: FaIcon(FontAwesomeIcons.appStore),
        onPressed: () {
          js.context.callMethod('open', [LINK_APPSTORE]);
        });
  }
}

class _GooglePlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: FaIcon(FontAwesomeIcons.googlePlay),
        onPressed: () {
          js.context.callMethod('open', [LINK_GOOGLEPLAY]);
        });
  }
}

class _BioColumn extends StatelessWidget {
  String get bioText {
    return 'Xander Gottlieb is a Designer and Developer specialising in User Experience. His portfolio includes more than 50 websites and several cross-platfrom apps.';
  }

  TextStyle _textStyle = TextStyle(color: Colors.white, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            bioText,
            style: _textStyle,
          )
        ],
      ),
    );
  }
}
