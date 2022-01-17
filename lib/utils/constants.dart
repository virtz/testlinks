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

const question1 =
    """Once you are on the product page there is a share button icon photo here please click the icon to share to any application you want
 """;
const question2 =
    """You can navigate though the hierarchy of product to get to the list of our products. You could also make use of our search bar located at the top of each page. Simply click in the bar and type the name of the product you are interested in. If the product is amongst our list of product it will show up amongst the list of result. Please click on the product to view more details about it. If the product does not show up it means it is not amongst our product list. """;
const question3 = """
Subcategories are the second level in our hierarchy of categorization. Please click on the browse page at the top right side of our home page. On the browse page, you can navigate through the list of categories we have to expose the subcategories in each categories to see the subcategory you are interested in. You could also make use of our search bar located at the top of each page. Simply click in the bar and type the name of the subcategory you are interested in. If the subcategory is amongst our list of subcategory it will show up amongst the list of result under subcategory. Please click on the subcategory to view the products under the subcategory. If the subcategory name does not show up amongst the list of results it means it is not amongst our subcategory list.
""";
const question4 =
    """ Yes. Please navigate to the bottom of our webpage where the footer is. Please click on the button that says to subscribe to our newsletter, put your email address and click subscribe. You are now subscribed to our monthly newsletter!""";
const question5 = """"
The products define the period of price update. We have carried out extensive research to understand when product prices change. If you want to check when a product price was last updated please navigate to the product page. The last time the product was updated will show at the bottom of the product page.
""";
const question6 =
    """We love hearing from our customers, you can reach us on any of our social media platforms listed in the footer of our page. Simply click on any of the media icons to take you to our pages. Once you are on our page you can simply send us a message and we will reply
 """;
const question7 = """
Currently, you can only give us feedback by sending a message to us privately through any of the channels listed in ur footer. We look forward to hearing from you.
""";
