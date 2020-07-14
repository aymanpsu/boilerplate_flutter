import '../models/categories_modal.dart';

final _category_1 = Categories(
  id: 0,
  name: "Integration",
  image: "assets/images/api_icon.png",
  backgroundColor: "#FFEFF0",
  numberOfExample: 5,
  routePath: "/",
);
final _category_2 = Categories(
  id: 1,
  name: "Localization",
  image: "assets/images/localization_icon.png",
  backgroundColor: "#F5F4EF",
  numberOfExample: 2,
  routePath: "/",
);
final _category_3 = Categories(
  id: 2,
  name: "Provider",
  image: "assets/images/provider_icon.png",
  backgroundColor: "#F3ECED",
  numberOfExample: 5,
  routePath: "/",
);
final _category_4 = Categories(
  id: 3,
  name: "Theme",
  image: "assets/images/theme_icon.png",
  backgroundColor: "#DFE3FF",
  numberOfExample: 5,
  routePath: "/",
);

final List<Categories> categories = [
  _category_1,
  _category_2,
  _category_3,
  _category_4,
];