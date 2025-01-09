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
CountriesModel test2 = CountriesModel(
  question: "Пакистандын борбору",
  capitalImage: "assets/countries/islsmsbad.jpg",
  answers: [
    Answer(answer: "Тегеран", isTrue: false),
    Answer(answer: "Кабул", isTrue: false),
    Answer(answer: "Исламабад", isTrue: true),
    Answer(answer: "Доха", isTrue: false),
  ],
);
CountriesModel test3 = CountriesModel(
  question: " Индиянын борбору",
  capitalImage: "assets/countries/deli.jpg",
  answers: [
    Answer(answer: "Пекин", isTrue: false),
    Answer(answer: "Дакка", isTrue: false),
    Answer(answer: "Нейпьидо", isTrue: false),
    Answer(answer: "Дели", isTrue: true),
  ],
);
CountriesModel test4 = CountriesModel(
  question: " Сауд Арабиясынын борбору",
  capitalImage: "assets/countries/er_riad.jpg",
  answers: [
    Answer(answer: "Маскат", isTrue: false),
    Answer(answer: "Эр-Рияд", isTrue: true),
    Answer(answer: "Амман", isTrue: false),
    Answer(answer: "Багдад", isTrue: false)
  ],
);
CountriesModel test5 = CountriesModel(
  question: " Туркменистандын борбору",
  capitalImage: "assets/countries/ашхабад.jpg",
  answers: [
    Answer(answer: "Ашхабад", isTrue: true),
    Answer(answer: "Астана", isTrue: false),
    Answer(answer: "Улан-Батор", isTrue: false),
    Answer(answer: "Ташкент", isTrue: false),
  ],
);
CountriesModel test6 = CountriesModel(
  question: " Казакстандын борбору",
  capitalImage: "assets/countries/астана.jpg",
  answers: [
    Answer(answer: "Бишкек", isTrue: false),
    Answer(answer: "Ташкент", isTrue: false),
    Answer(answer: "Астана", isTrue: true),
    Answer(answer: "Алматы", isTrue: false),
  ],
);
CountriesModel test7 = CountriesModel(
  question: " Кыргызстандын борбору",
  capitalImage: "assets/countries/53_bishkek.jpg",
  answers: [
    Answer(answer: "Астана", isTrue: false),
    Answer(answer: "Алматы", isTrue: false),
    Answer(answer: "Ташкент", isTrue: false),
    Answer(answer: "Бишкек", isTrue: true),
  ],
);
CountriesModel test8 = CountriesModel(
  question: " Таиланд борбору",
  capitalImage: "assets/countries/бангок.jpg",
  answers: [
    Answer(answer: "Ханой", isTrue: false),
    Answer(answer: "Пном пень", isTrue: false),
    Answer(answer: "Бангкок", isTrue: true),
    Answer(answer: "Канчанабури", isTrue: false),
  ],
);

List<CountriesModel> tests = [
  test1,
  test2,
  test3,
  test4,
  test5,
  test6,
  test7,
  test8
];
