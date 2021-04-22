import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kit_360/SearchBar/next_screen.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:kit_360/SearchBar/Components/search_bar_comp.dart';
import 'package:page_transition/page_transition.dart';

class CountryModel2 {
  String countryName;
  String countryCode;
  Widget tap;
  @override
  String toString() {
    return '$countryName $countryCode';
  }

  CountryModel2(this.countryName, this.countryCode, this.tap);
}

class SearchScreen2 extends StatefulWidget {
  final List<CountryModel2> countryModelList2;
  @override
  _SearchScreenState createState() => _SearchScreenState();

  const SearchScreen2(this.countryModelList2);
}

class _SearchScreenState extends State<SearchScreen2> {
  List<CountryModel2> countryModelList2 = <CountryModel2>[
    CountryModel2('Alarm', 'alarm.png', NextScreen()),
    CountryModel2('Calculator', 'calculator.png', NextScreen()),
    CountryModel2('Camera', 'camera.png', NextScreen()),
    //CountryModel2('Linkedin', 'linkedin.png', NextScreen()),
    CountryModel2('Quora', 'quora.png', NextScreen()),
    //CountryModel2('Youtube', 'youtube.png', NextScreen())
  ];

  @override
  void initState() {
    // TODO: implement initState
    countryModelListGlobal2 = countryModelList2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Container(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: searchBar(context)),
          )),
    );
  }

  // TODO: CountrySearchBar
  Widget searchBar(BuildContext context) {
    return SearchBar<CountryModel2>(
      searchBarPadding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 5),
      headerPadding: EdgeInsets.only(left: 0, right: 0),
      listPadding: EdgeInsets.only(left: 0, right: 0),
      hintText: "Search Placeholder",
      hintStyle: TextStyle(
        color: Colors.black54,
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
      iconActiveColor: Colors.deepPurple,
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      suggestions: widget.countryModelList2,
      cancellationWidget: Text("Cancel"),
      minimumChars: 1,
//      placeHolder: Center(
//        child: Padding(
//          padding: const EdgeInsets.only(left: 10, right: 10),
//          child: Text(searchMessage, textAlign: TextAlign.center, style: CustomTextStyle.textSubtitle1(context).copyWith(fontSize: 14),),
//        ),
//      ),
      emptyWidget: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text("There is no any data found"),
        ),
      ),
      onError: (error) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text("$error", textAlign: TextAlign.center),
          ),
        );
      },
      loader: Center(
        child: LoadingIndicator(),
      ),
      onSearch: getCountrySearchWithSuggestion,

      /// CountrySearch  // if want to search with API then use thi ----> getCountryListFromApi
      onCancelled: () {
        Navigator.pop(context);
      },
      buildSuggestion: (CountryModel2 countryModel, int index) {
        return countryGenerateColumn(countryModel, index);
      },
      onItemFound: (CountryModel2 countryModel, int index) {
        return countryGenerateColumn(countryModel, index);
      },
    );
  }

  Widget countryGenerateColumn(CountryModel2 countryModel, int index) =>
      InkWell(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(8.0, 5.0, 0.0, 5.0),
                      width: MediaQuery.of(context).size.width * .60,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                            child: GestureDetector(
                              // height: 40,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        alignment: Alignment.topRight,
                                        type: PageTransitionType.scale,
                                        child: countryModel.tap));
                              },
                              child: Row(
                                children: [
                                  Image.asset(countryModel.countryCode),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(countryModel.countryName,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Divider(height: 0.5)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

//  Future<List<CountryModel>> getCountryListFromApi(String search) async {
//    var _param = {
//      "search_value":search,
//      "user_token": "",
//    };
//    print("Resident search = $search");
//    if (search == "empty") return [];
//    if (search == "error") throw Error();
//
//    var response = await ApiManager.instance
//        .postAPICall(BASE_URL_Local + get_search_country_list, _param, context);
//    var data = response["data"];
//    List<CountryModel> countryModelList = [];
//    for (var u in data) {
//      CountryModel countryModel = CountryModel(
//        u["countryName"],
//        u["countryCode"]
//      );
//      countryModelList.add(countryModel);
//    }
//    return countryModelList;
//  }

  Future<List<CountryModel2>> getCountrySearch(String search) async {
    print("Resident search = $search");
    if (search == "empty") return [];
    if (search == "error") throw Error();
    List<CountryModel2> filterCountryList = [];

    widget.countryModelList2.forEach((CountryModel2) {
      if (CountryModel2.countryName
              .toLowerCase()
              .contains(search.toLowerCase()) ||
          CountryModel2.countryCode
              .toLowerCase()
              .contains(search.toLowerCase()))
        filterCountryList.add(CountryModel2);
    });

    return filterCountryList;
  }

  Future<List<CountryModel2>> getCountrySearchWithSuggestion(
      String search) async {
    print("Resident search = $search");
    if (search == "empty") return [];
    if (search == "error") throw Error();
    List<CountryModel2> filterCountryList = [];

    widget.countryModelList2.forEach((CountryModel2) {
      if (CountryModel2.countryName
              .toLowerCase()
              .contains(search.toLowerCase()) ||
          CountryModel2.countryCode
              .toLowerCase()
              .contains(search.toLowerCase()))
        filterCountryList.add(CountryModel2);
    });

    final suggestionList =
        search.isEmpty ? widget.countryModelList2 : filterCountryList;

    return suggestionList;
  }
}

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
      ),
    );
  }
}
