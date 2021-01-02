import 'package:flutter/material.dart';
import 'package:shogi_knights/ui/widgets/board.dart';
import 'package:shogi_knights/ui/widgets/button.dart';
import 'package:shogi_knights/ui/widgets/piece.dart';
import 'package:shogi_knights/ui/widgets/place.dart';
import 'package:shogi_knights/ui/widgets/playerField.dart';
import 'package:shogi_knights/usecase/piece_use_case.dart';
import 'package:shogi_knights/viewmodels/piece_view_model.dart';
import 'package:shogi_knights/viewmodels/place_view_model.dart';

class GamePage extends StatefulWidget {
  final String title;
  GamePage({this.title = ''});

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final PieceUseCase pieceUseCase = PieceUseCase();
  List<PieceViewModel> pieces;
  List<PieceViewModel> handPieces = [];
  List<PieceViewModel> enemyHandPieces = [];
  List<PlaceViewModel> places;
  PieceViewModel? selectedPiece;
  int turn;

  _GamePageState({
    this.pieces = const [],
    this.handPieces = const [],
    this.enemyHandPieces = const [],
    this.places = const [],
    this.selectedPiece,
    this.turn = 1,
  });

  void reload() {
    setState(() {
      List<PieceViewModel> pieces = pieceUseCase.getPieces();
      this.pieces = pieces;
      this.handPieces = [];
      this.enemyHandPieces = [];
      this.places = [];
      this.turn = 1;
    });
  }

  void displayMovablePlaces(PieceViewModel piece, List<PlaceViewModel> places) {
    if (piece.player != this.turn) {
      return null;
    }
    places = places
        .where(
          (p) => pieces
              .where(
                (pi) =>
                    pi.column == p.column &&
                    pi.row == p.row &&
                    pi.player == this.turn,
              )
              .isEmpty,
        )
        .toList();
    setState(() {
      this.selectedPiece = piece;
      this.places = places;
    });
  }

  void movePiece(PlaceViewModel place) {
    setState(() {
      PieceViewModel newPiece = PieceViewModel(
        name: selectedPiece!.name,
        column: place.column,
        row: place.row,
        image: selectedPiece!.image,
        player: this.turn,
      );
      this.pieces.remove(this.selectedPiece);
      PieceViewModel nullPiece = PieceViewModel();
      PieceViewModel handPiece = pieces.firstWhere(
        (PieceViewModel p) =>
            (p.column == place.column) &&
            (p.row == place.row) &&
            (p.player == (this.turn * -1)),
        orElse: () => nullPiece,
      );
      if (handPiece != nullPiece) {
        this.pieces.remove(handPiece);
        if (turn == 1) {
          this.handPieces.add(handPiece);
        } else if (turn == -1) {
          this.enemyHandPieces.add(handPiece);
        }
      }
      this.pieces.add(newPiece);
      this.selectedPiece = null;
      this.places = [];
      this.turn *= -1;
    });
  }

  void displayPlaces(PieceViewModel piece) {
    List<PlaceViewModel> places = [
      PlaceViewModel(
        column: 4,
        row: 3,
      ),
    ];
    setState(() {
      this.selectedPiece = piece;
      this.places = places;
    });
  }

  void putPiece(PlaceViewModel place, PieceViewModel piece) {
    PieceViewModel newPiece = PieceViewModel(
      name: piece.name,
      column: place.column,
      row: place.row,
      image: piece.image,
      player: turn,
    );
    this.handPieces.remove(piece);
    this.pieces.add(newPiece);
  }

  @override
  void initState() {
    reload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Button(
            onPressed: reload,
            color: Colors.red,
            label: 'load',
          ),
          PlayerField(
            name: 'fu',
            handPieces: enemyHandPieces,
            displayPlaces: displayPlaces,
          ),
          Stack(children: <Widget>[
            Board(),
            ...this
                .pieces
                .map(
                  (PieceViewModel p) => Piece(
                    piece: p,
                    display: displayMovablePlaces,
                  ),
                )
                .toList(),
            ...this
                .places
                .map(
                  (PlaceViewModel pl) => Place(
                    place: pl,
                    move: movePiece,
                  ),
                )
                .toList(),
          ]),
          PlayerField(
            name: 'kaku',
            handPieces: handPieces,
            displayPlaces: displayPlaces,
          ),
        ],
      ),
    );
  }
}
