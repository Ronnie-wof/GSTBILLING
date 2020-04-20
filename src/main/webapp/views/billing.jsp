<!DOCTYPE html >

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>

    <style>

        .title{

            text-align:center;
            margin-top:10%;
            font-size:70px;
            font-style: oblique;
            font-weight: bold;

            border: 2px solid FireBrick;

            border-radius: 17px;




            color: FireBrick;


        }
        body{

            background-color:LightSalmon;
            opacity: 1.0;

        }

        div{
            margin-top:10%;
            margin-left:35%;

            font-size:19px;

            color:FireBrick;
            font-weight: bold;


        }
        input[type=submit] {
            width: 40%;
            background-color: FireBrick;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            margin-left:70px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: FireBrick;
        }

        table, th, td {
            border: 1px solid FireBrick;
            padding: 4px;
        }

        th {
            height: 50px;

            background-color: Tomato;
            color: white;

        }
        tr{background-color: GoldenRod;}
        tr:hover {background-color:GreenYellow;}

        td{
            height: 50px;
            vertical-align: bottom;
        }

        #bills{



            text-align: left;
            width:70%;
            margin-left:15%;
            margin-right:15%;
            margin-top:5%;
            border-collapse:collapse;



        }
        input[type=button] {
            width: 30%;
            background-color: FireBrick;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            margin-left:37%;
            margin-right:30%;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=button]:hover {
            background-color: Tomato;
        }
        .message{
            margin-left:70px;
            color:FireBrick;
            text-align: center;
            font-weight:bold;
            font-size:18px;
        }



    </style>
    <script>
        document.addEventListener("mouseover",func2)
        document.addEventListener("mouseout",func2)
        function func1(ele) {
            var ide=ele.id;
            var cost=parseFloat(document.getElementById(ide+"3").textContent);
            cost=ele.value+ele.value*cost*0.01
            document.getElementById(ide+"2").textContent=(ele.name*cost).toFixed(2);
            func2();
        }

        function func2(){
            lis=document.getElementsByClassName("lastcol");
            var tota=0;
            for(var i=0;i<lis.length;i++){
                tota+=parseFloat(lis[i].textContent);
            }
            document.getElementById('basket_cost').textContent=tota;
        }


    </script>
</head>

<body>
<p class="title"> BILLING PAGE</p>

<form action="search-product" method="post">
<div>  ENTER PRODUCT CODE/PRODUCT NAME <input type="text" name="productCode" value="${product.productCode}">

    <input type="submit"  value="SEARCH PRODUCT"></div>


</form>
<p class ="message">${Message}</p>

<table id="bills">
    <thead>
    <tr>
        <th>PRODUCT CODE</th>
        <th>PRODUCT NAME</th>
        <th>PRODUCT PRICE</th>
        <th>PRODUCT GST</th>
        <th>QUANTITY</th>
        <th>TOTAL AMOUNT</th>
    </tr>
    </thead>
        <tbody>
        <c:forEach var="products1" items="${products1}" >
            <tr>
                <td> ${products1.productCode} </td>
                <td>${products1.productName}</td>
                <td >${products1.productPrice}</td>
                <td id="${products1.productCode}3">${products1.productGST}</td>
                <td><input id="${products1.productCode}" type="text" name="${products1.productPrice}" value="1" onkeyup="func1(this)"></td>
                <td class="lastcol" id="${products1.productCode}2">${products1.productPrice}</td>
            </tr>
        </c:forEach>
    <tr><td colspan="5">BASKET COST</td><td id="basket_cost">0</td></tr>
        </tbody>




    </table>

        <input type="button" value="GO TO PRODUCT PAGE"class="newpage" onclick="location.href='product'" >
</body>
</html>