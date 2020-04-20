<html>
<head>
<style>

    p{
        text-align:center;
        margin-top:10%;
        font-size:50px;
        font-style: oblique;
        font-weight: bold;
        color: #4CAF50;

    }
    input[type=text], select {
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type=number], select {
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type=submit] {
        width: 25%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;

        margin-left: 37%;
        margin-right:34%;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type=submit]:hover {
        background-color: #45a049;

    }

    table {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;

        margin-left:37%;
        margin-right:30%;

    }
    body{
        background-color:Pink;
    }
</style>

</head>
<body>
<p>EDIT PRODUCT DETAILS</p>
<div>
<form method="POST" action="save-product">
    <table>
        <tr>
            <td>
                PRODUCT CODE </td>
            <td>   <input type="text" name="productCode" value="${product.productCode}" readonly placeholder="Product Code"/> </td>
        </tr>
        <tr>
            <td>
                PRODUCT NAME </td>
            <td>   <input type="text" name="productName" value="${product.productName}" placeholder="Product Name"> </td>
        </tr>
        <tr>
            <td>
                PRODUCT PRICE </td>
            <td>   <input type="number" name="productPrice" value="${product.productPrice}" placeholder="Product Price"> </td>
        </tr>
        <tr>
            <td>
                PRODUCT GST </td>
            <td>  <input type="number" name="productGST" value="${product.productGST}" placeholder="Product GST"> </td>
        </tr>



    </table>
    <input type="Submit" value="EDIT">
</form>
    </div>
</body>

</html>