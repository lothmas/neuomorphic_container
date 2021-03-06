library neuomorphic_container;

import 'package:flutter/material.dart';

/// A Neuomorphic Container.
// ignore: camel_case_types
class NeuomorphicContainer extends StatelessWidget {
  final Key key;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  final Decoration foregroundDecoration;
  final double width;
  final double height;
  final BoxConstraints constraints;
  final EdgeInsetsGeometry margin;
  final Matrix4 transform;
  final Widget child;
  final BorderRadiusGeometry borderRadius;
  final BoxShape shape;
  final BoxBorder border;

  NeuomorphicContainer(
      {this.key,
      this.child,
      this.alignment,
      this.padding,
      this.foregroundDecoration,
      this.width,
      this.height,
      this.shape = BoxShape.rectangle,
      this.constraints,
      this.borderRadius,
      this.margin,
      this.transform,
      this.border})
      : assert(margin == null || margin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(constraints == null || constraints.debugAssertIsValid()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: child,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(209, 205, 199, 1.0),
                offset: Offset(6.0, 6.0),
                blurRadius: 16.0),
            BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 1.0),
                offset: Offset(-6.0, -6.0),
                blurRadius: 16.0),
          ],
          color: Color.fromRGBO(239, 238, 238, 1.0),
          borderRadius: borderRadius,
          shape: shape,
          border: border),
    );
  }
}
