<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QuiSomme.aspx.cs" Inherits="AC.QuiSomme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">

        *{
    margin: 0;
    padding: 0;
    font-family: "Open Sans",sans-serif;
    box-sizing: border-box;
}

body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f1f1f1;
}

.about-section{
    background: url(images/pic.jpg) no-repeat left;
    background-size: 55%;
    background-color: #fdfdfd;
    overflow: hidden;
    padding: 100px 0;
}

.inner-container{
    width: 55%;
    float: right;
    background-color: #fdfdfd;
    padding: 150px;
}

        .inner-container h1 {
            margin-bottom: 30px;
            font-size: 30px;
            font-weight: 900;
        }

.text{
    font-size: 20px;
    color: #545454;
    line-height: 30px;
    text-align: justify;
    margin-bottom: 40px;
}

.skills{
    display: flex;
    justify-content: space-between;
    font-weight: 700;
    font-size: 13px;
}

@media screen and (max-width:1200px){
    .inner-container{
        padding: 80px;
    }
}

@media screen and (max-width:1000px){
    .about-section{
        background-size: 100%;
        padding: 100px 40px;
    }
    .inner-container{
        width: 100%;
    }
}

@media screen and (max-width:600px){
    .about-section{
        padding: 0;
    }
    .inner-container{
        padding: 60px;
    }
}
.container{
    display:flex;
    flex-wrap:wrap;
    justify-content:space-between;

}
.container .box{
    position :relative;
    width:350px;
    padding:40px;
    background:#fff;
    box-shadow: 0 5px 15px rgba(0,0,0,.1);
    border-radius:4px;
    margin: 10px;
    box-sizing: border-box;
    overflow:hidden;
    text-align:center;
    

}
        .container .box:before{
            content: '';
            width:50%;
            height:100%;
            position:absolute;
            top:0;
            left:0;
            background:rgba(255,255,255,.2);
            z-index:2;
            pointer-events:none;
        }
        .container .box .icon {
            position: relative;
            width: 80px;
            height: 80px;
            color: #fff;
            background: #000;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto;
            border-radius: 50%;
            font-size: 40px;
            font-weight: 700;
            transition: 1s;
        }
   
         .container .box:nth-child(1) .icon{
             box-shadow:0 0 0 0 #e91e63;
             background: #e91e63;
         }
           .container .box:nth-child(1):hover .icon{
                box-shadow:0 0 0 400px  #e91e63;
                
           }
           .container .box:nth-child(2) .icon{
             box-shadow:0 0 0 0 #23e629;
             background: #23e629;
         }
           .container .box:nth-child(2):hover .icon{
                box-shadow:0 0 0 400px  #23e629;
                
           }
           .container .box:nth-child(3) .icon{
             box-shadow:0 0 0 0 #2196f3;
             background: #2196f3;
         }
        .container .box:nth-child(3):hover .icon {
            box-shadow: 0 0 0 400px #2196f3;
        }
        .container .box .content {
            position: relative;
            z-index: 1;
            transition: 0.5s;
        }
        .container .box:hover .content{
            color:#fff;

        }
        .container .box .content h3 {
            font-size: 20px;
            margin: 10px 0;
            padding: 0;
        }
            .container .box .content p
                {
            margin:0;
            padding:0;

                }
            .container a{
                display:inline-block;
                padding: 10px 20px;
                background:#fff;
                border-radius:4px;
                text-decoration:none;
                color:#000;
                font-weight:500;
                margin-top:20px;
                box-shadow:0 2px 5px rgba(0,0,0,.2);
            }

               
        



        </style>
    <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    
</head>
<body>
  
    <div class="about-section">
        <div class="inner-container">
            <h1>Qui Somme Nous ?</h1>
            <p class="text">
     PECAC Application c’est une application web de suivi de production qui va étre installée au sein de
     l’entrprise PECAC afin d’ameliorer la gestion des flux et stocks inclus dans la chaine de
     travail.
     Elle est interconnectée avec KelioBodet et Sage X3V11 et qui est destinée aux superviseurs des secteurs et l'administrateur du l’application.
              
            </p>
            <div class="skills">
                <span>Web Design</span>
                <span>Photoshop & Illustrator</span>
                <span>Coding</span>
            </div>
        </div>
    </div>
    <div class="container">
    <div class="box">
        <div class="icon">01</div>
    <div class="content">
        <h3> Nos Services</h3>
        <p>PECAC Application c’est une application web de suivi de production qui va étre installée au sein de l’entrprise PECAC afin d’ameliorer la gestion des flux et stocks inclus dans la chaine de travail.
            Elle est interconnectée avec KelioBodet et Sage X3V11 et qui est destinée aux superviseurs des secteurs et l'administrateur du l’application.</p>
        <a href="http://www.groupepec.com/">Visiter PECAC Site Web </a>
    </div>
    </div>
     <div class="box">
        <div class="icon">02</div>
    <div class="content">
        <h3> Nos Services</h3>
        <p>PECAC Application c’est une application web de suivi de production qui va étre installée au sein de l’entrprise PECAC afin d’ameliorer la gestion des flux et stocks inclus dans la chaine de travail.
            Elle est interconnectée avec KelioBodet et Sage X3V11 et qui est destinée aux superviseurs des secteurs et l'administrateur du l’application.</p>
        <a href="http://www.groupepec.com/">Visiter PECAC Site Web </a>
    </div>
    </div>
     <div class="box">
        <div class="icon">03</div>
    <div class="content">
        <h3> Nos Services</h3>
        <p>PECAC Application c’est une application web de suivi de production qui va étre installée au sein de l’entrprise PECAC afin d’ameliorer la gestion des flux et stocks inclus dans la chaine de travail.
            Elle est interconnectée avec KelioBodet et Sage X3V11 et qui est destinée aux superviseurs des secteurs et l'administrateur du l’application.</p>
        <a href="http://www.groupepec.com/">Visiter PECAC Site Web </a>
    </div>
    </div>
        </div>
    <a href="homepage.aspx"><< Retourner a la page d'accueil</a><br />
    <hr />
     
</body>
</html>
</asp:Content>
