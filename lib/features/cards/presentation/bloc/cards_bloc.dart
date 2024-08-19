import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'dart:math';
import 'package:flutter/material.dart';

part 'cards_event.dart';
part 'cards_state.dart';

// class CardsBloc extends Bloc<CardsEvent, CardsState> {
//   CardsBloc() : super(CardsInitial()) {
//     on<CardsEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  double horizontalDrag = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (horizontal) {
        setState(() {
          horizontalDrag += horizontal.delta.dx;
          horizontalDrag %= 360;
        });
      },
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(pi / 180 * horizontalDrag),
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 13, 66, 200), Color(0xff000000)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: horizontalDrag <= 90 || horizontalDrag >= 270
              ? cardFront()
              : cardBack(),
        ),
      ),
    );
  }

  Widget cardFront() {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Islamic Bank',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              Text(
                '|',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 10,
                  fontSize: 10,
                ),
              ),
              Text(
                'Universal Bank',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 60,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 0),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 8,
                  top: 8,
                  child: Container(
                    width: 10,
                    height: 24,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 8,
                  child: Container(
                    width: 10,
                    height: 24,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  left: 32,
                  top: 8,
                  child: Container(
                    width: 10,
                    height: 24,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  left: 44,
                  top: 8,
                  child: Container(
                    width: 10,
                    height: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '1234 5678 9101 1121',
            style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18,
                wordSpacing: 15,
                shadows: [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: Colors.black,
                    offset: Offset(2, 2),
                  )
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '05 / 20',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget cardBack() {
    return Container(
      padding: const EdgeInsets.only(top: 18),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.grey[700],
          )
        ],
      ),
    );
  }
}
