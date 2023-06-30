import 'package:lusciousskin/Categories/Moisturizer.dart';

class Category {

  final String title;
  final String image;
  final path;


  Category(
      {
        required this.title,
        required this.image,
        required this.path,

      }
      );

}
List <Category> cat = [
  Category(

      title: "Moisturizer",
      image: "assets/Images/Homepage/Category/Moisturiser.jpg",
      path: Moisturiser(),

  ),
  Category(

      title: "Cleanser",
      image: "assets/Images/Homepage/Category/Cleanser.jpg",
      path: Moisturiser(),
  ),
  Category(

      title: "Sunscreen",
      image: "assets/Images/Homepage/Category/Sunscreen.jpg",
      path: Moisturiser(),
  ),
  Category(

      title: "Toner",
      image: "assets/Images/Homepage/Category/Toner.jpg",
      path:Moisturiser(),
  ),
  Category(

      title: "Serum",
      image: "assets/Images/Homepage/Category/Serum.jpg",
      path: Moisturiser(),
  ),
  Category(

      title: "Eye Cream",
      image: "assets/Images/Homepage/Category/EyeCream.jpg",
      path:Moisturiser(),
  ),



];