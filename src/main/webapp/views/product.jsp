<!DOCTYPE html >

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>





    <head>
        <style>

            p{
                text-align:center;
                margin-top:10%;
                font-size:70px;
                font-style: oblique;
                font-weight: bold;
                color:Navy;
                border: 2px solid black;
                outline: Navy solid 10px;



            }
            body{
                background-color:Tomato;
            }
            input[type=text], select {
                width: 60%;
                padding: 12px 20px;
                margin: 14px 0;

                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;


            }
            input[type=number], select {
                width: 60%;
                padding: 12px 20px;
                margin: 14px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;



            }


            .extra{
                width: 20%;
                background-color: Indigo;
                color: white;
                padding: 14px 20px;
                margin: 14px 0;

                border: none;
                border-radius: 4px;
                cursor: pointer;
                margin-left:25%;

            }

            .extra:hover {
                background-color: #45a049;
            }


            .table1{
                margin-left:40%;
            }
            .table1 td{
                color:Indigo;
                font-weight: bold;
            }
            .table2 th {

                height: 50px;

                background-color: Indigo;
                color: white;

            }
            .table2 tr{background-color: SkyBlue;}
            .table2 tr:hover {background-color:GreenYellow;}

            .table2 td{
                border: 1px solid FireBrick;
                height: 50px;
                vertical-align: bottom;
            }

            #products{



                text-align: left;
                width:70%;
                margin-left:15%;
                margin-right:15%;
                margin-top:5%;
                border-collapse:collapse;



            }


            caption{
                color:Indigo;
                font-size:20px;
                font-weight:bold;

            }

            .newpage{
                width: 22%;
                background-color: Indigo;
                color: white;
                padding: 14px 20px;
                margin-left:10%;
                border: none;
                border-radius: 4px;
                cursor: pointer;

            }
            .newpage:hover {
                background-color: #45a049;
            }
            .edit{
                background-color:Indigo;
                color: white;
            }
            .edit:hover {
                background-color: SkyBlue;
            }


        </style>
    </head>





<body>
<p>PRODUCT PAGE</p>
<form action="save-product" method="post"   class="inputData">

    <table class="table1">
        <tr>
            <td>PRODUCT CODE</td>
            <td><input type="text"   name="productCode" value="${product.productCode}" /></td>
        </tr>
        <tr>
            <td>PRODUCT NAME</td>
            <td><input type="text"   name="productName" value="${product.productName}" /></td>
        </tr>

        <tr>
            <td>PRODUCT PRICE(1 unit price)</td>
            <td><input type="number" id="PPname" name="productPrice" value="${product.productPrice}" ></td>
        </tr>

        <tr>
            <td>PRODUCT GST(%)</td>
            <td><input type="number" id="PPPname" name="productGST" value="${product.productGST}"></td>
        </tr>

    </table>
    <input type="submit" value="ADD PRODUCT TO PRODUCT LIST" class="extra">


    <input type="button" value="GO TO BILLING PAGE"class="newpage" onclick="location.href='billing'" >


</form>


<table class="table2" id="products">
    <caption>PRODUCT LIST</caption>
    <thead>
    <tr>
        <th>PRODUCT CODE</th>
        <th>PRODUCT NAME</th>
        <th>PRODUCT PRICE</th>
        <th>PRODUCT GST</th>
        <th>EDIT</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}">
        <tr>
            <td > ${product.productCode} </td>
            <td>${product.productName}</td>
            <td >${product.productPrice}</td>
            <td >${product.productGST}</td>
            <td><a href="/edit-product?productCode=${product.productCode }"><button type="button" class="edit">Edit</button></a></td>

        </tr>
    </c:forEach>
    </tbody>


</table>







</body>
</html>

