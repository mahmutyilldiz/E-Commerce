<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="odeme.aspx.cs" Inherits="test.odeme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
        <meta charset="utf-8">
        <title>E Store - eCommerce HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
       <div class="cart-page">
        <div class="container-fluid">
            <div class="row">

                         <div class="col-lg-4">
                    <div class="cart-page-inner">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="coupon">
                                    <input type="text" placeholder="İndirim Kodu">
                                    <button>Kodu Uygula</button>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="cart-summary">
                                    <div class="cart-content">
                                        <h1>Sepetiniz</h1> 
                                        <p>Ürünlerin Tutarı<span> <asp:Label ID="Label2" runat="server" ></asp:Label></span></p>
                                        <p>Kargo Tutarı<span>10₺</span></p>
                                        <h2>
                                            <asp:Label ID="Label1" runat="server" ></asp:Label> Toplam Tutar<span></span></h2>
                                    </div>
                                    <div class="cart-btn">
                                        <asp:LinkButton  CssClass="btn" ID="LinkButton1" aria-disabled="False"  runat="server" PostBackUrl="~/sepet.aspx">Sepeti Güncelle</asp:LinkButton>
                                       <%-- <button aria-disabled="False"> Sepeti Güncelle</button>--%>
                                        <asp:LinkButton ID="LinkButton2" CssClass="btn" runat="server" OnClick="odeme_Click">ÖDEME</asp:LinkButton>
                                          
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              

                </div>

            </div>
           </div>
      
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommerceDBConnectionString %>" SelectCommand="SELECT [fiyat] FROM [sepet]"></asp:SqlDataSource>
                        
    </form>

</body>
</html>
