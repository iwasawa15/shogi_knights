import 'package:shogi_knights/repository/piece_repository.dart';
import 'package:shogi_knights/viewmodels/piece_view_model.dart';

class PieceUseCase {
  final PieceRepository repository = PieceRepository();

  List<PieceViewModel> getPieces() {
    final response = repository.getPiece();
    return response;
  }
}
