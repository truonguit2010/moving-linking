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

  final Header focusHeader;

  StickyHeaderWidget(this.focusHeader);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _NameWidget()),
        _HeaderItemWidget(
          header: Header.Portfolio,
          isFocus: focusHeader == Header.Portfolio,
        ),
        _HeaderItemWidget(
          header: Header.Thoughts,
          isFocus: focusHeader == Header.Thoughts,
        ),
        _HeaderItemWidget(
          header: Header.Contact,
          isFocus: focusHeader == Header.Contact,
        ),
      ],
    );
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

  _HeaderItemWidget({this.header, this.isFocus});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: FlatButton(
        onPressed: () => {},
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
