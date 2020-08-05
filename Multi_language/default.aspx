<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Multi_language._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title></title>
   <script type="text/javascript">
        $(document).ready(function () {

            
            $("#Button1").click(function (e) {

                
                $("#Label1").hide();
                e.preventDefault();
            });

       

            $('#add-order').click(function (e) {
                var $orders = $('#orders');

                console.log("joseph");
                $.ajax({
                    type: 'GET',
                    url: 'orders.json',
                    dataType: "json",
                    success: function (orderslist) {

                        for (i = 0; i < orderslist.length; i++) {

                            $orders.append('<li>name: ' + orderslist[i].name + ', drink:' + orderslist[i].drink + '</li>');
                        }
                        //$.each(orders, function (i, order) {
                          //  $orders.append('<li>name: ' + order.name + ', drink:' + order.drink + '</li>');
                          
                        //});
                    }
                })
                e.preventDefault();
            });

        });
   </script>
</head>
<body>
  <form id="form1" runat="server">
        <div>
            <h1>Task 1</h1>
        </div>
        <p>
            <asp:Button  type="button" class="btn btn-primary" ID="Button1" runat="server" Text="Button" />
        </p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        <a id="example" href="#" data-toggle="tooltip" title="Some tooltip text!">Hover over me</a>
        <label id="lblName" for="txtName" title="Full Name">Name</label>
        <input id="txtName" type="text"  title="josephj"/>



        <h1> Task 2</h1>
        <ul id="orders">
            <li> Name: joseph, Drink: coffee</li>
        </ul>

        <h2>Add a coffee order</h2>
        <p> name: <input type="text" id="name" /></p>
        <p> drink: <input type="text" id="drink" /></p>
        <button id="add-order" >Add!</button>
        
        <asp:Button ID="sqlconnect" runat="server" Text="Button" />
    </form>

    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
