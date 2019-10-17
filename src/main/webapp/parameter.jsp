<%-- 
    Document   : random
    Created on : Sep 23, 2018, 8:44:44 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" integrity="sha256-46qynGAkLSFpVbEBog43gvNhfrOj+BmwXdxFgVK/Kvc=" crossorigin="anonymous" />
    </head>
    <%
        String color="blue";//從 request.getParameter("...") 取得 color 參數
        // 額外：若 user 沒輸入參數，就隨機抓顏色
        String color2 ="black";
        int randomnum = 0;
        String [] colors = new String[]{
            "LightBlue","Thistle","LemonChiffon","BurlyWood","DarkOrange","DeepSkyBlue","ForestGreen"
        };
                String [] fontcolors = new String[]{
            "LightBlue","Thistle","LemonChiffon","BurlyWood","DarkOrange","DeepSkyBlue","ForestGreen","black"
        };
         String [] icons = new String[]{
            "fa-comments","fa-kiwi-bird","fa-poop","fa-crown","fa-hippo","fa-glass-cheers","fa-drupal"
        };        
        String parameter = request.getParameter("color");
        String icon = icons[(int)(Math.random()*1000%icons.length)];
        if(parameter!=null){
            color = parameter;   
        }
        else{
            color = colors[(int)(Math.random()*1000%colors.length)];
            randomnum = (int)(Math.random()*1000%colors.length)+1;
            if (randomnum == colors.length){
                randomnum = 0;
            }
            color2 = fontcolors[randomnum];
        }
    %>
    <!--
    利用 <//%=%//>
    這個寫法，產生 bgcolor 屬性的內容
    -->
    <body bgcolor="<%=color%>">
        <font color ="<%=color2%>" ><h1>Hello World!</h1></font>
        <span class="fa <%=icon%>"></span>
    </body>
</html>
