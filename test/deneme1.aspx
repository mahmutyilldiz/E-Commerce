<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="deneme1.aspx.cs" Inherits="test.deneme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

         <table align="center" style="height: 214px; width: 3px" >

                            
                                

                                    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
                                        <ItemTemplate>
                                            <td><%# Eval("urunadi") %>
                                                
                                               
                                                     <%# Eval("urundetay") %>
                                               
                                                     <%# Eval("fiyat") %>

                                            </td>
                                         
                                                     
                                               
                                      

                                        </ItemTemplate>
                        <AlternatingItemTemplate>  
                         <tr>
                            
                                                     <%# Eval("urunadi") %>
                                            
                                                     <%# Eval("urundetay") %>
                               
                                                     <%# Eval("fiyat") %>
                                              
                             
                              </tr>
 
                        </AlternatingItemTemplate>

                 
                              <FooterTemplate>

            
                                 </tbody>
              
       
        </table>
                                
                                  </table>
          
            </FooterTemplate>
             </asp:Repeater>
                                </table>
             
                                 <h3 id="sonuc" runat="server"  style="font-family: 'Arial Black'; font-size: large; font-weight: bold; color: #FFFFFF"></h3>
                                 <h4 id="sonuc2" runat="server"  style="font-family: 'Arial Black'; font-size: large; font-weight: bold; color: #FFFFFF"></h4>
                                <h5 id="sonuc3" runat="server" style="font-family: 'Arial Black'; font-size: large; font-weight: bold; color: #FFFFFF"></h5>

        
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CommerceDBConnectionString %>" SelectCommand="SELECT [urunadi], [urundetay], [urunfiyat] FROM [urunler]"></asp:SqlDataSource>
    </form>
</body>
</html>
