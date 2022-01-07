class Covid {
  Covid({
    required this.updated,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.testsPerOneMillion,
    required this.population,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
    required this.affectedCountries,
  });
  late final int updated;
  late final int cases;
  late final int todayCases;
  late final int deaths;
  late final int todayDeaths;
  late final int recovered;
  late final int todayRecovered;
  late final int active;
  late final int critical;
  late final int casesPerOneMillion;
  late final double deathsPerOneMillion;
  late final int tests;
  late final double testsPerOneMillion;
  late final int population;
  late final int oneCasePerPeople;
  late final int oneDeathPerPeople;
  late final int oneTestPerPeople;
  late final double activePerOneMillion;
  late final double recoveredPerOneMillion;
  late final double criticalPerOneMillion;
  late final int affectedCountries;
  
  Covid.fromJson(Map<String, dynamic> json){
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['updated'] = updated;
    _data['cases'] = cases;
    _data['todayCases'] = todayCases;
    _data['deaths'] = deaths;
    _data['todayDeaths'] = todayDeaths;
    _data['recovered'] = recovered;
    _data['todayRecovered'] = todayRecovered;
    _data['active'] = active;
    _data['critical'] = critical;
    _data['casesPerOneMillion'] = casesPerOneMillion;
    _data['deathsPerOneMillion'] = deathsPerOneMillion;
    _data['tests'] = tests;
    _data['testsPerOneMillion'] = testsPerOneMillion;
    _data['population'] = population;
    _data['oneCasePerPeople'] = oneCasePerPeople;
    _data['oneDeathPerPeople'] = oneDeathPerPeople;
    _data['oneTestPerPeople'] = oneTestPerPeople;
    _data['activePerOneMillion'] = activePerOneMillion;
    _data['recoveredPerOneMillion'] = recoveredPerOneMillion;
    _data['criticalPerOneMillion'] = criticalPerOneMillion;
    _data['affectedCountries'] = affectedCountries;
    return _data;
  }
}