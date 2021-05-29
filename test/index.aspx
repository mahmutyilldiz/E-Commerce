<%@ Page Language="C#" AutoEventWireup="true"  EnableEventValidation="false" CodeBehind="index.aspx.cs" Inherits="test.index" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>E Store - eCommerce HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="eCommerce HTML Template Free Download" name="keywords">
    <meta content="eCommerce HTML Template Free Download" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
        rel="stylesheet">

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
        <!-- Top bar Start -->
        <div class="top-bar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <i class="fa fa-envelope"></i>
                        support@email.com
                    </div>
                    <div class="col-sm-6">
                        <i class="fa fa-phone-alt"></i>
                        +850-345-6789
                    </div>
                </div>
            </div>
        </div>
        <!-- Top bar End -->

        <!-- Nav Bar Start -->
        <div class="nav">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">

                        <div class="navbar-nav mr-auto">

                            <a href="index.aspx" class="nav-item nav-link active">Anasayfa</a>
                            <a href="product-list.html" class="nav-item nav-link">Ürünler</a>
                            <a href="product-detail.html" class="nav-item nav-link">Ürün Detayı</a>
                            <a href="sepet.aspx" class="nav-item nav-link">Sepetim</a>

                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Diğer Sayfalar</a>
                                <div class="dropdown-menu">
                                    <a href="#" class="dropdown-item">İstek Sayfası</a>
                                    <a href="users.aspx" class="dropdown-item">Oturum aç & Kayıt Ol</a>
                                    <a href="#" class="dropdown-item">Bize Ulaşın</a>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Giriş Yap</a>
                                <div class="dropdown-menu">
                                    <a href="users.aspx" class="dropdown-item">Giriş Yap</a>
                                    <a href="users.aspx" class="dropdown-item">Üye ol</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Nav Bar End -->

        <!-- Bottom Bar Start -->
        <div class="bottom-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="index.aspx">
                                <img src="img/logo.png" alt="Logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="search">
                    
                        
                         <%-- <asp:TextBox runat="server" ID="txtKelime" placeholder="Search" />
                  
                            <asp:LinkButton ID="Button1" runat="server" OnClick="Button1_Click"> 
                                <i class="fa fa-search"></i>
                     </asp:LinkButton>
                     --%>
            
                            <asp:TextBox ID="txtKelime" runat="server" CssClass="form-control"></asp:TextBox>
                           
                      



                        </div>
                          
                    </div>
                    <div class="col-md-3">
                        <div class="user">
                            <a href="#" class="btn wishlist">
                                <i class="fa fa-heart"></i>
                                <span>(0)</span>
                            </a>
                            <a href="sepet.aspx" class="btn cart">
                                <i class="fa fa-shopping-cart"></i>
                                <span>(0)</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Bar End -->

        <!-- Main Slider Start -->
        <div class="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <nav class="navbar bg-light">
                            <span class="cat-title" data-match-height="items-header"
                                style="height: 40px;">Kategoriler</span>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Bilgisayar&Tablet</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Veri Depolama</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Çevre Birimler</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Bileşener</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Yazılım Ürünleri</a>
                                </li>


                            </ul>
                        </nav>
                    </div>
                    <div class="col-md-9">
                        <div class="header-slider normal-slider">
                            <div class="header-slider-item">
                                <img src="img/slider1.png" alt="slider image" />

                                <div class="header-slider-caption">
                                    <a class="btn" href="#"><i class="fa fa-shopping-cart"></i>Sepete Ekle</a>
                                </div>


                            </div>
                            <div class="header-slider-item">
                                <img src="img/slider2.png" alt="Slider Image" />
                                <div class="header-slider-caption">

                                    <a class="btn" href=""><i class="fa fa-shopping-cart"></i>Sepete Ekle</a>
                                </div>
                            </div>
                            <div class="header-slider-item">
                                <img src="img/slider3.png" alt="Slider Image" />
                                <div class="header-slider-caption">

                                    <a class="btn" href="#"><i class="fa fa-shopping-cart"></i>Sepete Ekle</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Main Slider End -->

        <!-- Brand Start -->
        <div class="brand">
            <div class="container-fluid">
            </div>
        </div>
        <!-- Brand End -->

        <!-- Feature Start-->
        <div class="featured-product product">
            <div class="container-fluid">
                <div class="section-header">
                    <h1>Süper Fiyatlar Süper Ürünler...</h1>
                </div>
                <div class="row align-items-center product-slider product-slider-4">

                    <asp:Repeater ID="Repeater1" runat="server" ClientIDMode="AutoID" OnItemCommand="Repeater1_ItemCommand">

                        <ItemTemplate>

                            <div class="col-lg-3">
                                <div class="product-item">
                                    <div class="product-title">
                                        <h6 runat="server" style="font-family: 'Arial Black'; color: #FFFFFF"><%# Eval("urunadi") %>  <%# Eval("urundetay") %></h6>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>

                                    </div>

                                    <div class="product-image">
                                        <a href="product-detail.html">
                                            <asp:Image ID="Image1" runat="server" Width="285" Height="285" ImageUrl='<%# Eval("resim") %>' />
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                           <asp:LinkButton class="fa fa-search" ID="LinkButton2" CommandArgument='<%# Eval("ID") %>' CommandName="detay"  runat="server"></asp:LinkButton>
                                           
                                        </div>
                                    </div>

                                    <div class="product-price">
                                        <h3><span></span><%# Eval("urunfiyat")  %></h3>
                                        <%--<asp:LinkButton ID="LinkButton1" class="btn" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="sepet" >Sepete Ekle</asp:LinkButton>--%>
                                         <%--<a class="btn" href="sepet.aspx"   ><i class="fa fa-shopping-cart"></i>Sepete Ekle</a>--%>
                                       <asp:LinkButton ID="LinkButton1"  class="btn" runat="server"  CommandName="sepet"  CommandArgument='<%# Eval("ID") %>' Text="Sepete Ekle"></asp:LinkButton>
                                      
                                        </a>
                                         
                                    </div>
                                </div>
                            </div>



                        </ItemTemplate>

                    </asp:Repeater>



                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommerceDBConnectionString %>" SelectCommand="SELECT [urunadi], [urundetay], [urunfiyat], [resim] FROM [urunler]"></asp:SqlDataSource>



                </div>
            </div>
        </div>
        <!-- Feature End-->

        <!-- Category Start-->

        <!-- Category End-->

        <!-- Call to Action Start -->
        <div class="call-to-action">

            <div class="box product">
                <a href="https://www.hepsiburada.com/staticpage/preview/3d899472-e48c-475e-aabd-54301f158dd3">
                    <img
                        src="https://images.hepsiburada.net/assets/storefront/banners/23-02-2021_1614086729066_1.png">
                </a>
            </div>




        </div>
        <!-- Call to Action End -->

        <!-- Featured Product Start -->

        <div class="featured-product product">
            <div class="container-fluid">
                <div class="section-header">
                    <h1>Süper Fiyatlar Süper Ürünler...</h1>
                </div>
                <div class="row align-items-center product-slider product-slider-4">

                    <asp:Repeater ID="Repeater2" runat="server"  ClientIDMode="AutoID" OnItemCommand="Repeater2_ItemCommand"> 


                        <ItemTemplate>



                            <div class="col-lg-3">
                                <div class="product-item">
                                    <div class="product-title">


                                        <h6 runat="server" style="font-family: 'Arial Black'; color: #FFFFFF"><%# Eval("urunadi") %>  <%# Eval("urundetay") %></h6>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>

                                    </div>


                                    <div class="product-image">
                                        <a href="product-detail.html">
                                            <asp:Image ID="Image1" runat="server" Width="285" Height="285" ImageUrl='<%# Eval("resim") %>' />
                                        </a>
                                        <div class="product-action">
                                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-search"></i></a>
                                        </div>
                                    </div>

                                    <div class="product-price">
                                        <h3><span></span><%# Eval("urunfiyat")  %></h3>
                                        <asp:LinkButton ID="LinkButton1" class="btn" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="sepet">Sepete Ekle</asp:LinkButton>

                                    </div>
                                </div>
                            </div>



                        </ItemTemplate>

                    </asp:Repeater>



                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CommerceDBConnectionString %>" SelectCommand="SELECT [urunadi], [urundetay], [urunfiyat], [resim] FROM [urunler]"></asp:SqlDataSource>



                </div>
            </div>
        </div>
        <!-- Featured Product End -->

        <!-- Footer Start -->
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Get in Touch</h2>
                            <div class="contact-info">
                                <p><i class="fa fa-map-marker"></i>123 E Store, Los Angeles, USA</p>
                                <p><i class="fa fa-envelope"></i>email@example.com</p>
                                <p><i class="fa fa-phone"></i>+123-456-7890</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Follow Us</h2>
                            <div class="contact-info">
                                <div class="social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                    <a href=""><i class="fab fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Company Info</h2>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms & Condition</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>Purchase Info</h2>
                            <ul>
                                <li><a href="#">Pyament Policy</a></li>
                                <li><a href="#">Shipping Policy</a></li>
                                <li><a href="#">Return Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row payment align-items-center">
                    <div class="col-md-6">
                        <div class="payment-method">
                            <h2>We Accept:</h2>
                            <img src="img/payment-method.png" alt="Payment Method" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="payment-security">
                            <h2>Secured By:</h2>
                            <img src="img/godaddy.svg" alt="Payment Security" />
                            <img src="img/norton.svg" alt="Payment Security" />
                            <img src="img/ssl.svg" alt="Payment Security" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Footer Bottom Start -->
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 copyright">
                        <p>Copyright &copy; <a href="https://htmlcodex.com">HTML Codex</a>. All Rights Reserved</p>
                    </div>

                    <div class="col-md-6 template-by">
                        <p>Template By <a href="https://htmlcodex.com">HTML Codex</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Bottom End -->

        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </form>
</body>

</html>
