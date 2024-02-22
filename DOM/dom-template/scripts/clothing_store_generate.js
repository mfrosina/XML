function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    let clothesStore = doc.createElement("clothes-store");
    doc.appendChild(clothesStore);

    // Shop-info
    let shopInfo = doc.createElement("store-info");
    shopInfo.setAttribute("id", "CS-789012");
    shopInfo.setAttribute("established", "2022");
    clothesStore.appendChild(shopInfo);

    let name = doc.createElement("store-name");
    shopInfo.appendChild(name);
    name.appendChild(doc.createTextNode("Менидисcимо"));

    let location = doc.createElement("location");
    shopInfo.appendChild(location);

    let street = doc.createElement("street");
    location.appendChild(street);
    street.appendChild(doc.createTextNode('булевард "Голям" 456'));

    let city = doc.createElement("city");
    city.setAttribute("zip", "3000");
    location.appendChild(city);
    city.appendChild(doc.createTextNode("Варна"));

    let country = doc.createElement("country");
    location.appendChild(country);
    country.appendChild(doc.createTextNode("България"));

    let contact = doc.createElement("store-contact");
    shopInfo.appendChild(contact);

    let email = doc.createElement("store-email");
    contact.appendChild(email);
    email.appendChild(doc.createTextNode("info@menidissimo.com"));

    let website = doc.createElement("website");
    website.setAttribute("uri", "https://menidissimo.com");
    contact.appendChild(website);

    let openingHours = doc.createElement("opening-hours");
    shopInfo.appendChild(openingHours);

    let weekday = doc.createElement("weekday");
    openingHours.appendChild(weekday);
    weekday.appendChild(doc.createTextNode("Понеделник-Събота"));

    let time = doc.createElement("time");
    openingHours.appendChild(time);

    let startTime = doc.createElement("start");
    time.appendChild(startTime);
    startTime.appendChild(doc.createTextNode("09:30"));

    let endTime = doc.createElement("end");
    time.appendChild(endTime);
    endTime.appendChild(doc.createTextNode("18:30"));

    // Categories
    let categories = doc.createElement("categories");
    clothesStore.appendChild(categories);

    let category = doc.createElement("category");
    category.setAttribute("id", "C1");
    category.setAttribute("name", "Мъжко");
    categories.appendChild(category);

    let subcategory1 = doc.createElement("subcategory");
    subcategory1.setAttribute("id", "C1.1");
    subcategory1.setAttribute("name", "Блузи");
    category.appendChild(subcategory1);

    let subcategory2 = doc.createElement("subcategory");
    subcategory2.setAttribute("id", "C1.2");
    subcategory2.setAttribute("name", "Панталони");
    category.appendChild(subcategory2);

    let subcategory3 = doc.createElement("subcategory");
    subcategory3.setAttribute("id", "C1.3");
    subcategory3.setAttribute("name", "Аксесоари");
    category.appendChild(subcategory3);

    // Products
    let products = doc.createElement("products");
    clothesStore.appendChild(products);

    // Product 1
    let product1 = doc.createElement("product");
    product1.setAttribute("id", "C004");
    product1.setAttribute("stock", "25");
    products.appendChild(product1);

    let productName1 = doc.createElement("name");
    product1.appendChild(productName1);
    productName1.appendChild(doc.createTextNode("Класическа Риза"));

    let productDescription1 = doc.createElement("description");
    product1.appendChild(productDescription1);
    productDescription1.appendChild(doc.createTextNode("Стайлинг и комфорт с тази класическа риза."));

    let productPrice1 = doc.createElement("price");
    product1.appendChild(productPrice1);
    productPrice1.appendChild(doc.createTextNode("59.99"));

    let productSizes1 = doc.createElement("sizes");
    productSizes1.setAttribute("type", "eu");
    product1.appendChild(productSizes1);

    let productSize1_1 = doc.createElement("size");
    productSizes1.appendChild(productSize1_1);
    productSize1_1.appendChild(doc.createTextNode("38"));

    let productSize1_2 = doc.createElement("size");
    productSizes1.appendChild(productSize1_2);
    productSize1_2.appendChild(doc.createTextNode("40"));

    let productSize1_3 = doc.createElement("size");
    productSizes1.appendChild(productSize1_3);
    productSize1_3.appendChild(doc.createTextNode("42"));

    let productColors1 = doc.createElement("colors");
    product1.appendChild(productColors1);

    let productColor1_1 = doc.createElement("color");
    productColors1.appendChild(productColor1_1);
    productColor1_1.appendChild(doc.createTextNode("Бял"));

    let productColor1_2 = doc.createElement("color");
    productColors1.appendChild(productColor1_2);
    productColor1_2.appendChild(doc.createTextNode("Син"));

    let productCategory1 = doc.createElement("product-category");
    product1.appendChild(productCategory1);
    productCategory1.setAttribute("ref", "C1");

    let productSubcategory1 = doc.createElement("product-subcategory");
    product1.appendChild(productSubcategory1);
    productSubcategory1.setAttribute("ref", "C1.1");

    let productMaterial1 = doc.createElement("material");
    product1.appendChild(productMaterial1);
    productMaterial1.appendChild(doc.createTextNode("Памук"));

    let productPhoto1 = doc.createElement("photo");
    product1.appendChild(productPhoto1);
    productPhoto1.setAttribute("uri", "https://example.com/pics/mensshirt.jpg");

    // Product 2
    let product2 = doc.createElement("product");
    product2.setAttribute("id", "C005");
    product2.setAttribute("stock", "20");
    products.appendChild(product2);

    let productName2 = doc.createElement("name");
    product2.appendChild(productName2);
    productName2.appendChild(doc.createTextNode("Спортни Панталони"));

    let productDescription2 = doc.createElement("description");
    product2.appendChild(productDescription2);
    productDescription2.appendChild(doc.createTextNode("Удобство и стил с тези спортни панталони."));

    let productPrice2 = doc.createElement("price");
    product2.appendChild(productPrice2);
    productPrice2.appendChild(doc.createTextNode("19.99"));

    productPrice2.setAttribute("currency", "EUR");

    let productSizes2 = doc.createElement("sizes");
    productSizes2.setAttribute("type", "eu");
    product2.appendChild(productSizes2);

    let productSize2_1 = doc.createElement("size");
    productSizes2.appendChild(productSize2_1);
    productSize2_1.appendChild(doc.createTextNode("32"));

    let productSize2_2 = doc.createElement("size");
    productSizes2.appendChild(productSize2_2);
    productSize2_2.appendChild(doc.createTextNode("34"));

    let productSize2_3 = doc.createElement("size");
    productSizes2.appendChild(productSize2_3);
    productSize2_3.appendChild(doc.createTextNode("36"));

    let productColors2 = doc.createElement("colors");
    product2.appendChild(productColors2);

    let productColor2_1 = doc.createElement("color");
    productColors2.appendChild(productColor2_1);
    productColor2_1.appendChild(doc.createTextNode("Черен"));

    let productColor2_2 = doc.createElement("color");
    productColors2.appendChild(productColor2_2);
    productColor2_2.appendChild(doc.createTextNode("Сив"));

    let productCategory2 = doc.createElement("product-category");
    product2.appendChild(productCategory2);
    productCategory2.setAttribute("ref", "C1");

    let productSubcategory2 = doc.createElement("product-subcategory");
    product2.appendChild(productSubcategory2);
    productSubcategory2.setAttribute("ref", "C1.2");

    let productMaterial2 = doc.createElement("material");
    product2.appendChild(productMaterial2);
    productMaterial2.appendChild(doc.createTextNode("Полиестер"));

    let productRating2 = doc.createElement("rating");
    product2.appendChild(productRating2);
    productRating2.appendChild(doc.createTextNode("4.2"));

    let productPhoto2 = doc.createElement("photo");
    product2.appendChild(productPhoto2);
    productPhoto2.setAttribute("uri", "https://example.com/pics/menstrousers.jpg");

    // Product 3
    let product3 = doc.createElement("product");
    product3.setAttribute("id", "C006");
    product3.setAttribute("stock", "15");
    products.appendChild(product3);

    let productName3 = doc.createElement("name");
    product3.appendChild(productName3);
    productName3.appendChild(doc.createTextNode("Колан"));

    let productDescription3 = doc.createElement("description");
    product3.appendChild(productDescription3);
    productDescription3.appendChild(doc.createTextNode("Класически кожен колан за завършен вид."));

    let productPrice3 = doc.createElement("price");
    product3.appendChild(productPrice3);
    productPrice3.appendChild(doc.createTextNode("94.99"));

    let productSizes3 = doc.createElement("sizes");
    productSizes3.setAttribute("type", "int");
    product3.appendChild(productSizes3);

    let productSize3_1 = doc.createElement("size");
    productSizes3.appendChild(productSize3_1);
    productSize3_1.appendChild(doc.createTextNode("S"));

    let productSize3_2 = doc.createElement("size");
    productSizes3.appendChild(productSize3_2);
    productSize3_2.appendChild(doc.createTextNode("M"));

    let productSize3_3 = doc.createElement("size");
    productSizes3.appendChild(productSize3_3);
    productSize3_3.appendChild(doc.createTextNode("L"));

    let productColors3 = doc.createElement("colors");
    product3.appendChild(productColors3);

    let productColor3_1 = doc.createElement("color");
    productColors3.appendChild(productColor3_1);
    productColor3_1.appendChild(doc.createTextNode("Кафяв"));

    let productColor3_2 = doc.createElement("color");
    productColors3.appendChild(productColor3_2);
    productColor3_2.appendChild(doc.createTextNode("Черен"));

    let productCategory3 = doc.createElement("product-category");
    product3.appendChild(productCategory3);
    productCategory3.setAttribute("ref", "C1");

    let productSubcategory3 = doc.createElement("product-subcategory");
    product3.appendChild(productSubcategory3);
    productSubcategory3.setAttribute("ref", "C1.3");

    let productMaterial3 = doc.createElement("material");
    product3.appendChild(productMaterial3);
    productMaterial3.appendChild(doc.createTextNode("Кожа"));

    let productPhoto3 = doc.createElement("photo");
    product3.appendChild(productPhoto3);
    productPhoto3.setAttribute("uri", "https://example.com/pics/leatherbelt.jpg");

    // Staff
    let staff = doc.createElement("staff");
    clothesStore.appendChild(staff);

    // Staff Member 1
    let member1 = doc.createElement("member");
    member1.setAttribute("id", "ST001");
    member1.setAttribute("role", "Продавач");
    member1.setAttribute("experience", "3 години");
    staff.appendChild(member1);

    let memberName1 = doc.createElement("member-name");
    member1.appendChild(memberName1);

    let memberFirstName1 = doc.createElement("first");
    memberName1.appendChild(memberFirstName1);
    memberFirstName1.appendChild(doc.createTextNode("Мария"));

    let memberLastName1 = doc.createElement("last");
    memberName1.appendChild(memberLastName1);
    memberLastName1.appendChild(doc.createTextNode("Петрова"));

    let memberGender1 = doc.createElement("gender");
    member1.appendChild(memberGender1);
    memberGender1.appendChild(doc.createTextNode("Ж"));

    let memberContact1 = doc.createElement("member-contact");
    member1.appendChild(memberContact1);

    let memberEmail1 = doc.createElement("email");
    memberContact1.appendChild(memberEmail1);
    memberEmail1.appendChild(doc.createTextNode("maria.petrova@menidissimo.com"));

    let memberPhone1 = doc.createElement("phone");
    memberContact1.appendChild(memberPhone1);
    memberPhone1.appendChild(doc.createTextNode("+359 888 234 567"));

    let memberHireDate1 = doc.createElement("hire-date");
    member1.appendChild(memberHireDate1);
    memberHireDate1.appendChild(doc.createTextNode("2022-03-10"));

    let memberBirthDate1 = doc.createElement("birth-date");
    member1.appendChild(memberBirthDate1);
    memberBirthDate1.appendChild(doc.createTextNode("1995-07-18"));

    let memberResponsibilities1 = doc.createElement("responsibilities");
    member1.appendChild(memberResponsibilities1);

    let memberResponsibility1_1 = doc.createElement("responsibility");
    memberResponsibilities1.appendChild(memberResponsibility1_1);
    memberResponsibility1_1.appendChild(doc.createTextNode("Обслужване на клиенти и консултиране"));

    let memberResponsibility1_2 = doc.createElement("responsibility");
    memberResponsibilities1.appendChild(memberResponsibility1_2);
    memberResponsibility1_2.appendChild(doc.createTextNode("Поддържане на чистота в магазина"));

    let memberResponsibility1_3 = doc.createElement("responsibility");
    memberResponsibilities1.appendChild(memberResponsibility1_3);
    memberResponsibility1_3.appendChild(doc.createTextNode("Помощ в организацията на събития и промоции"));

    return doc;
}
