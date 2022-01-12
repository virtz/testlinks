import 'package:ajeo/core/models/category.dart';
import 'package:ajeo/core/models/product.dart';
import 'package:ajeo/core/models/subcategory.dart';
import 'package:ajeo/core/models/uos.dart';
import 'package:ajeo/core/models/variety.dart';

const imagebaseUrl = "https://aje-o.herokuapp.com/";

List<CategoryModel> categoryList = [
  CategoryModel(
      id: "mskfksfs fs s fs",
      categoryName: "Category_one",
      subcategory: [
        SubcategoryModel(
            id: "mdms;fmsdfs,s",
            subcategoryName: "Subcategory_one.one",
            product: [
              Product(
                  id: "mkds ms",
                  productname: "Product_One",
                  productimage: "assets/images/placeholder.jpg",
                  variety: [
                    Variety(id: "kskvksd s", varietyname: "Variety_One", uos: [
                      Uos(
                        id: "dsfkdmsmdfsdf",
                        uosname: "Uos_one",
                      )
                    ])
                  ])
            ])
      ],
      createdAt: 'dmadmamdlsmda'),
];

const htmlData = """<p>  
<ol>
<li>Click anywhere and just start typing.</li>
<li>Hit the / to see all the types of content you can create - headers,videos, sub pages </li>
<li>Highlight any text and use the menu that pops up to style your writing however you like</li>
<li>See the -- to the lefy of this checkbox on hover? Click and drag to move this line</li>
<li>Click anywhere and just start typing.</li>
<li>Click anywhere and just start typing.</li>
<li>Invite your teammates to work with your in Settings & Members.</li>
<li>Click anywhere and just start typing.</li>
<li>Click anywhere and just start typing.</li>
<li>Click anywhere and just start typing.</li>
</ol>
</p>""";

const faqs = """
<ul>
<li> How do I share the page?</li>
<li> How do I find products?</li>
<li> How do I find a subcategory without navigating through the caegories?</li>
<li> Can I subscribe to a newsletter?</li>
<li>  How often are the prices updated?</li>
<li> How do I contact you?</li>
<li> How do I give feedback?</li>
</ul> """;

const aboutUs = """
<h2>About Us</h2>
<p>
We are looking to be at the forefront of providing innovative services that improve the
 experiences of travelers in Africa. Presently at AJE-O, we understand the challenges
  indigenes of and travelers coming into Nigeria may encounter when roaming Nigeria.
   We know how difficult/unpleasant things can get when you don’t have complete knowledge of how the 
   system works. Therefore, our purpose is to enhance the experience of all travelers' indigenes or 
   visitors within Nigeria. We are dedicated to ensuring people have a hassle free and memorable 
   experience by providing them with rich information about Nigeria. We have a team of staff with a 
   plethora of skills and experience for gathering quality data that allows us to simplify Nigeria
    for everyone. Additionally, we have developed accessible and easy-to-use applications for interacting
     with this data such that all people of all ages can use them. Patronizing AJE-O, gives you Nigeria 
     like a book; just flip the pages to know more. With AJE-O, you can now open Nigeria like a book with 
     different pages.

</p>
<h2>Vision Statment</h2>(states where we are headed/the reason for our existence)
<p>
To become the go-to company for digital innovation that enhances travel-experience across 
countries in Africa and uplift Africa’s technology wealth
</p>
<h2>Mission Statement </h2>(states how we intend getting to the future we defined as a firm)
<p>Starting with Nigeria we aim to improve travel-experience through four categories;
</p>
<h2>Technology </h2>
<p>
Provide state-of-the-art applications accessible and affordable by all ages regardless of their level of computer literacy
</p>
<h2>
Socially
</h2>
<p>
Offer services that remove the current barriers to maximizing the social experience of visitors when they come to Africa such as 
creating access to the deep cultures woven into the African walls
</p>
<h2>Economically </h2>
<p>Offer services that provides financial information such that travelers can have a blissful experience for less
 </p>
 <h2>Data </h2>
 <p>
 encouraging and building the next generation of tech giants in africa by providing 
 access to data to Africans for research and entrepreneurship purposes
 </p>
 <h2>Core-Values</h2>(states the principles that guide our behavior and decisions as a firm)
 <p>
 <ul>
 <br>
 <li>
Being Accountable
 </li>
 </br>
 <br>
  <li>
Being Trust-worthy
 </li>
 </br>
 <br>
  <li>
Being Reliable
 </li>
 </br>
 <br>
  <li>
Being Respect
 </li>
 </br>
 <br>
  <li>
Building Transparency
 </li>
 </br>
 </ul>
 </p>
 """;
