function edit_row(productCode)
{
    document.getElementById("edit_button"+productCode).style.display="none";
    document.getElementById("save_button"+productCode).style.display="block";

    var code=document.getElementById("productCode"+productCode);
    var name=document.getElementById("productName"+productCode);
    var price=document.getElementById("productPrice"+productCode);
    var gst=document.getElementById("productGST"+productCode);

    var code_data=code.innerHTML;
    var name_data=name.innerHTML;
    var price_data=price.innerHTML;
    var gst_data=gst.innerHTML;


    code.innerHTML="<input type='text' id='code_text"+productCode+"' value='"+code_data+"'>";
    name.innerHTML="<input type='text' id='name_text"+productCode+"' value='"+name_data+"'>";
    price.innerHTML="<input type='number' id='price_text"+productCode+"' value='"+price_data+"'>";
    gst.innerHTML="<input type='number' id='gst_text"+productCode+"' value='"+gst_data+"'>";
}
function save_row(productCode)
{
    var code_val=document.getElementById("code_text"+productCode).value;
    var name_val=document.getElementById("name_text"+productCode).value;
    var price_val=document.getElementById("price_text"+productCode).value;
    var gst_val=document.getElementById("gst_text"+productCode).value;

    document.getElementById("productCode"+productCode).innerHTML=code_val;
    document.getElementById("name_row"+productCode).innerHTML=name_val;
    document.getElementById("price_row"+productCode).innerHTML=price_val;
    document.getElementById("gst_row"+no).innerHTML=gst_val;

    document.getElementById("edit_button"+productCode).style.display="block";
    document.getElementById("save_button"+productCode).style.display="none";
}