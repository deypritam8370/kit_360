import 'package:flutter/material.dart';
import 'package:kit_360/Screens/Category/subPages/social_media.dart';
import 'package:kit_360/SearchBar/Constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:kit_360/SearchBar/Components/search_bar_comp.dart';
import 'package:flutter/services.dart';
import 'package:kit_360/SearchBar/next_screen.dart';
import 'package:kit_360/main.dart';
import 'package:kit_360/Screens/Dashboard/components/category_area.dart';

class SocialMediaSearch extends StatefulWidget {
  final List<CountryModel> countryModelList;
  @override
  _SearchScreenState createState() => _SearchScreenState();

  const SocialMediaSearch(this.countryModelList);
}

class _SearchScreenState extends State<SocialMediaSearch> {
  @override
  void initState() {
    // TODO: implement initState
    //countryModelListGlobal = countryModelList;
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
    return SearchBar<CountryModel>(
      searchBarPadding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 5),
      headerPadding: EdgeInsets.only(left: 0, right: 0),
      listPadding: EdgeInsets.only(left: 0, right: 0),
      hintText: "Search For Apps",
      hintStyle: TextStyle(
        color: Colors.white,
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
      iconActiveColor: Colors.deepPurple,
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      suggestions: widget.countryModelList,
      cancellationWidget: Text("Close"),
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
          child: Text("NO APPS FOUND"),
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
      buildSuggestion: (CountryModel countryModel, int index) {
        return countryGenerateColumn(countryModel, index);
      },
      onItemFound: (CountryModel countryModel, int index) {
        return countryGenerateColumn(countryModel, index);
      },
    );
  }

  Widget countryGenerateColumn(CountryModel countryModel, int index) => InkWell(
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
                              child: SizedBox(
                                height: 40,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 40,
                                        child: Image.asset('assets/' +
                                            countryModel.countryCode +
                                            '.png')),
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

  Future<List<CountryModel>> getCountrySearch(String search) async {
    print("Resident search = $search");
    if (search == "empty") return [];
    if (search == "error") throw Error();
    List<CountryModel> filterCountryList = [];

    widget.countryModelList.forEach((CountryModel) {
      if (CountryModel.countryName
              .toLowerCase()
              .contains(search.toLowerCase()) ||
          CountryModel.countryCode.toLowerCase().contains(search.toLowerCase()))
        filterCountryList.add(CountryModel);
    });

    return filterCountryList;
  }

  Future<List<CountryModel>> getCountrySearchWithSuggestion(
      String search) async {
    print("Resident search = $search");
    if (search == "empty") return [];
    if (search == "error") throw Error();
    List<CountryModel> filterCountryList = [];

    widget.countryModelList.forEach((CountryModel) {
      if (CountryModel.countryName
              .toLowerCase()
              .contains(search.toLowerCase()) ||
          CountryModel.countryCode.toLowerCase().contains(search.toLowerCase()))
        filterCountryList.add(CountryModel);
    });

    final suggestionList =
        search.isEmpty ? widget.countryModelList : filterCountryList;

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
