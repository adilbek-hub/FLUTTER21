class CountriesModel {
  final String question;
  final String capitalImage;
  final List<Answer> answers;

  CountriesModel({
    required this.question,
    required this.capitalImage,
    required this.answers,
  });
}

class Answer {
  final String answer;
  final bool isTrue;

  Answer({required this.answer, required this.isTrue});
}

CountriesModel test1 = CountriesModel(
  question: "Түштүк Кореянын борбору",
  capitalImage: "assets/countries/seaul.jpg",
  answers: [
    Answer(answer: "Гуанджоу", isTrue: false),
    Answer(answer: "Сеул", isTrue: true),
    Answer(answer: "Вашингтон", isTrue: false),
    Answer(answer: "Токио", isTrue: false),
  ],
);

List<CountriesModel> tests = [test1];
