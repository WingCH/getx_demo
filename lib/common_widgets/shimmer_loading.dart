import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// ref: https://codecanyon.net/item/devkit-flutter-ui-kit/29711710
class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _shimmerColor = Colors.grey[200]!;
    double _containerHeight = 20;
    double _spaceHeight = 10;

    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Shimmer.fromColors(
                highlightColor: Colors.white,
                baseColor: _shimmerColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: _shimmerColor,
                      ),
                      height: 110,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                          color: Colors.white,
                        ),
                        child: Container(
                          width: 80,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.only(left: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: _containerHeight,
                            child: Container(
                                decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Colors.white,
                            )),
                          ),
                          SizedBox(
                            height: _spaceHeight,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: _containerHeight,
                            child: Container(
                                decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Colors.white,
                            )),
                          ),
                          SizedBox(
                            height: _spaceHeight,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: _shimmerColor,
                            ),
                            height: _containerHeight,
                            width: 100,
                            child: Container(
                                decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Colors.white,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                period: const Duration(milliseconds: 1000),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              color: _shimmerColor,
              height: 1,
            ),
          ],
        );
      },
    );
  }
}
