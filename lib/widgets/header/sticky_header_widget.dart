import 'package:flutter/material.dart';

enum Header { Portfolio, Thoughts, Contact }

extension HeaderExtension on Header {
  String get textValue {
    switch (this) {
      case Header.Portfolio:
        return 'Portfolio';
      case Header.Thoughts:
        return 'Thoughts';
      case Header.Contact:
        return 'Contact';
      default:
        return 'Text Value';
    }
  }
}

typedef OnUserSelectHeader<Header> = void Function(Header value);

class StickyHeaderWidget extends StatelessWidget {
  List<Header> _headers = [Header.Portfolio, Header.Thoughts, Header.Contact];
  final OnUserSelectHeader<Header> onUserSelectHeader;

  final Header focusHeader;

  StickyHeaderWidget({this.focusHeader, this.onUserSelectHeader});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _AvatarWidget()),
        _HeaderItemWidget(
          header: Header.Portfolio,
          isFocus: focusHeader == Header.Portfolio,
          onUserSelectHeader: this.onUserSelectHeader,
        ),
        _HeaderItemWidget(
          header: Header.Thoughts,
          isFocus: focusHeader == Header.Thoughts,
          onUserSelectHeader: this.onUserSelectHeader,
        ),
        _HeaderItemWidget(
          header: Header.Contact,
          isFocus: focusHeader == Header.Contact,
          onUserSelectHeader: this.onUserSelectHeader,
        ),
      ],
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("images/avatar.jpg");
  }

}

class _NameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Phạm Sơn Trường',
      style: TextStyle(color: Colors.white),
    );
  }
}

class _HeaderItemWidget extends StatelessWidget {
  final Header header;
  final bool isFocus;
  final OnUserSelectHeader<Header> onUserSelectHeader;
  _HeaderItemWidget({this.header, this.isFocus, this.onUserSelectHeader});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: FlatButton(
        onPressed: () {
          this.onUserSelectHeader.call(header);
        },
        child: Text(
          header.textValue,
          style: TextStyle(color: isFocus ? Colors.grey : Colors.white),
        ),
      ),
    );
//    return Text(
//      _headerItemText,
//      style: TextStyle(color: Colors.white),
//    );
  }
}
