part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnHomePage extends PageState {
  @override
  List<Object> get props => [];
}

class OnGenrePage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLibraryPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnWelcomePage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  final int pageNumber;

  OnMainPage(this.pageNumber);

  @override
  List<Object> get props => [pageNumber];
}
