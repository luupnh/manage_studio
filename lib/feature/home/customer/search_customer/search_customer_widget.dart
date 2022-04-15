import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manage_studio/resources/app_icon.dart';
import 'package:manage_studio/resources/app_string.dart';
import 'package:manage_studio/resources/colors.dart';
import 'package:manage_studio/utils/app_textfield_input_form.dart';

class SearchCustomerWidget extends StatefulWidget {
  const SearchCustomerWidget({Key? key}) : super(key: key);

  @override
  _SearchCustomerWidgetState createState() => _SearchCustomerWidgetState();
}

class _SearchCustomerWidgetState extends State<SearchCustomerWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      color: AppColors.backgroundLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0, top: 20.0, right: 8.0),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      suffixIcon: AppIcon.iSearch,
                      hintText: AppStrings.search,
                      maxLines: 1,
                      fontSize: 14.0,
                      textEditingController: _searchController,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    height: 45.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.borderGrey,
                            spreadRadius: 1,
                            blurRadius: 1,
                            blurStyle: BlurStyle.outer),
                      ],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: AppIcon.iFilter,
                      iconSize: 25.0,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8.0),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.borderGrey,
                                spreadRadius: 1,
                                blurRadius: 1,
                                blurStyle: BlurStyle.outer),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            //  Hero(
                            //   tag: state.list![index].id!,
                            //   child: Container(
                            //     margin:
                            //     EdgeInsets.only(left: 25.0, top: 10.0),
                            //     width: 40.0,
                            //     height: 40.0,
                            //     decoration: new BoxDecoration(
                            //         shape: BoxShape.rectangle,
                            //         color: Style.Colors.secondColor),
                            //     child: Icon(
                            //       FontAwesomeIcons.userAlt,
                            //       color: Colors.white,
                            //     ),
                            //   ),
                            // )
                            //     :
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Hero(
                                tag: 1,
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Image.network(
                                    "https://jes.edu.vn/wp-content/uploads/2017/10/h%C3%ACnh-%E1%BA%A3nh.jpg",
                                    fit: BoxFit.fill,
                                    loadingBuilder: (BuildContext context,
                                        Widget child,
                                        ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Center(
                                        child: CupertinoActivityIndicator(
                                          color:
                                              AppColors.waitingIndicatorBlack,
                                          animating: true,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 25.0),
                                child: Text(
                                  "Hai Luu ne",
                                  maxLines: 2,
                                  style: TextStyle(
                                      height: 1.4,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.borderGrey,
                              spreadRadius: 1,
                              blurRadius: 1,
                              blurStyle: BlurStyle.outer),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //  Hero(
                          //   tag: state.list![index].id!,
                          //   child: Container(
                          //     margin:
                          //     EdgeInsets.only(left: 25.0, top: 10.0),
                          //     width: 40.0,
                          //     height: 40.0,
                          //     decoration: new BoxDecoration(
                          //         shape: BoxShape.rectangle,
                          //         color: Style.Colors.secondColor),
                          //     child: Icon(
                          //       FontAwesomeIcons.userAlt,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // )
                          //     :
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 1,
                              child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/273681429_1924227924430649_1095688089624265862_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=8K763b1L59UAX_4el48&_nc_ht=scontent.fsgn5-9.fna&oh=00_AT_2dY2lDsEF-NLbX3ZusoSvNi8966Cp3-pwQOaKmepuCw&oe=625C961A")),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Hai Luu ne",
                                maxLines: 2,
                                style: TextStyle(
                                    height: 1.4,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.borderGrey,
                              spreadRadius: 1,
                              blurRadius: 1,
                              blurStyle: BlurStyle.outer),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //  Hero(
                          //   tag: state.list![index].id!,
                          //   child: Container(
                          //     margin:
                          //     EdgeInsets.only(left: 25.0, top: 10.0),
                          //     width: 40.0,
                          //     height: 40.0,
                          //     decoration: new BoxDecoration(
                          //         shape: BoxShape.rectangle,
                          //         color: Style.Colors.secondColor),
                          //     child: Icon(
                          //       FontAwesomeIcons.userAlt,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // )
                          //     :
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 1,
                              child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: new DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/273681429_1924227924430649_1095688089624265862_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=8K763b1L59UAX_4el48&_nc_ht=scontent.fsgn5-9.fna&oh=00_AT_2dY2lDsEF-NLbX3ZusoSvNi8966Cp3-pwQOaKmepuCw&oe=625C961A")),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 25.0),
                              child: Text(
                                "Hai Luu ne",
                                maxLines: 2,
                                style: TextStyle(
                                    height: 1.4,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
