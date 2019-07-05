import 'package:flutter/material.dart';

class FormsAnimation extends StatefulWidget {
  FormsAnimation({Key key, this.frontWidget, this.backWidget})
      : super(key: key);
  final Widget frontWidget;
  final Widget backWidget;
  FormsAnimationState createState() => new FormsAnimationState();
}

class FormsAnimationState extends State<FormsAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _frontScale;
  Animation<double> _backScale;

  Widget _floatingActionButtonIcon;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _frontScale = new Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 0.5, curve: Curves.easeIn),
    ));
    _backScale = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.5, 1.0, curve: Curves.easeOut),
    );
  }

  changeFloatingActionButtonIcon() {
    _floatingActionButtonIcon = _controller.isCompleted
        ? new Icon(Icons.zoom_in)
        : new Icon(Icons.arrow_back_ios);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return new Center(
      child: new Stack(
        children: <Widget>[
          new AnimatedBuilder(
            child: this.widget.backWidget,
            animation: _backScale,
            builder: (BuildContext context, Widget child) {
              final Matrix4 transform = new Matrix4.identity()
                ..scale(1.0, _backScale.value, 1.0);
              return new Transform(
                transform: transform,
                alignment: FractionalOffset.center,
                child: child,
              );
            },
          ),
          new AnimatedBuilder(
            child: this.widget.frontWidget,
            animation: _frontScale,
            builder: (BuildContext context, Widget child) {
              final Matrix4 transform = new Matrix4.identity()
                ..scale(1.0, _frontScale.value, 1.0);
              return new Transform(
                transform: transform,
                alignment: FractionalOffset.center,
                child: child,
              );
            },
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              height: 40.0,
              width: 40.0,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Color(0xff2196f3),
                  child: _floatingActionButtonIcon == null
                      ? new Icon(Icons.zoom_in)
                      : _floatingActionButtonIcon,
                  onPressed: () {
                    setState(() {
                      if (_controller.isCompleted || _controller.velocity > 0) {
                        changeFloatingActionButtonIcon();
                        _controller.reverse();
                      } else {
                        changeFloatingActionButtonIcon();
                        _controller.forward();
                      }
                    });
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
