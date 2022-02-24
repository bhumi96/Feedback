﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FeedbackCS.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
          <script src="Scripts/jquery-1.10.2.min.js"></script>
         <script src="Scripts/bootstrap.min.js"></script>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
        <link href="Content/setting.css" rel="stylesheet" />
         <script src="Scripts/jquery-3.4.1.min.js"></script>
         <script src="Scripts/jssor.slider.min.js"></script>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
        <script src="Scripts/bootstrap.bundle.min.js"></script>

    <%--- bootstrap CDN -----%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <link href="Content/footer1.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.0/css/all.css"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap"/>
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/mdb.min.css"/>
   
    
    <link href="Content/footer1.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.0/css/all.css"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap"/>
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.0/css/mdb.min.css"/>
    <link rel="stylesheet" type="text/css" /> 

    <style>
        body{
           
            overflow-x:hidden;
        }
        /*.navbar-static-top{
            background-color:#46B2B2;
        }
        .nav{
            background-color:#46B2B2;
        }*/
        .mdb-color{
            background-color:#46B2B2;
        }
        
        .sidenav a{
            color:black;
            padding:13px;
            /*font-weight:bold;*/
            font-size:19px;
            display:inline-block;
            color:white;
            margin-top:40px;
            font-family:'Times New Roman', Times, serif;
            margin-right:15px;

        }
        
        .sidenav a:active{
            background-color:#ffffff;
            color:black;
         }
       .sidenav a:hover{
           background-color:#ddd;
           color:black;
       }
       .nline {
           font-family:'Times New Roman', Times, serif;
           color:black;
           margin-top:20px;
           margin-left:80px;
       }
     .nline a {
           font-family:'Times New Roman', Times, serif;
           color:black;
           font-size:18px;
           color:black;
           padding:13px;
       }
     .nline a:active{
            background-color:#ffffff;
            color:black;
         }
       .nline a:hover{
           background-color:#ddd;
           color:black;
       }
    </style>
     
 
</head>
<body style="padding:0px; margin:0px;background-color:#fff;font-family:arial,helvetica,sans-serif,verdana,'Open Sans'">
    <form id="form1" runat="server">
        <div>
        <nav class="nav navbar navbar-default" style="background-color:#46B2B2">
              <div class="container-fluid">
                      <ul class="nav navbar-nav navbar-right">
                          <li style="font-size:20px;font-family:Garamond;margin-top:40px;margin-left:1100px"><a class="glyphicon glyphicon-phone-alt" style="color:white;">ContactUs</a></li>
                      </ul>
                </div>
          </nav>
    </div>
        
    
     
   <div>
        <div class="row">
            <div class="col-md-2">
                <img src="Image/index613.jpg" style="height:115px;width:110px;margin-left:80px;margin-top:20px" />
            </div>
            <div class="col-md-7">
                <p style="font-family:'Times New Roman', Times, serif;font-size:22px;font-weight:bold;color:darkred;margin-top:30px">पंडित रविशंकर शुक्ल विश्वविद्यालय , रायपुर छत्तीसगढ़ <br /> Pt. Ravishankar Shukla University, Raipur Chattisgarh India</p>
            </div>
            <div class="col-md-3">
                <img src="Image/NAAC_A.gif"  style="width:110px;height:115px;margin-left:70px;margin-top:20px"/>
            </div>
        </div>
    </div><br />

    <div class="row" style="height:1px;background-color:black">
    </div>

    <div class="row">
            <div class="nline">
              <a href="Home.aspx" class="btn btn-default" style="color:white;background-color:#46B2B2;"><span class="glyphicon glyphicon-home">Home</span></a>
              <a href="AdminLogin.aspx"><span>Admin</span></a>
              <a href="FacultyLogin.aspx"><span>Faculty</span></a>
              <a href="StudentLogin.aspx"><span>Student</span></a>
              <a href="#"><span class="glyphicon glyphicon-off" id="icon">Logout</span></a>
            </div>
    </div>

    <br />
      <script type="text/javascript">
        window.jssor_1_slider_init = function() {

            var jssor_1_SlideoTransitions = [
              [{b:-1,d:1,rX:90},{b:0,d:4000,rX:0,e:{rX:6}}],
              [{b:-1,d:1,rX:90},{b:0,d:1000,o:1,rX:0,e:{rX:6}}],
              [{b:-1,d:1,rX:90},{b:500,d:1000,o:1,rX:0,e:{rX:6}}],
              [{b:-1,d:1,rX:90},{b:1000,d:1000,o:1,rX:0,e:{rX:6}}],
              [{b:-1,d:1,rX:90},{b:1500,d:1000,o:1,rX:0,e:{o:1,rX:6},p:{o:{dl:0.2},rX:{dl:0.2}}}],
              [{b:1500,d:1000,ls:0.2,e:{ls:6}}],
              [{b:-1,d:1,x:100,rY:180,sX:0.5,sY:0.5,p:{x:{c:0}}},{b:3000,d:1000,x:0,o:1,rY:0,sX:1,sY:1,e:{x:1,o:7,rY:1,sX:1,sY:1},p:{x:{dl:0,o:68},o:{dl:0.1,o:4,rd:2},rY:{dl:0.1,o:4,rd:2},sX:{dl:0.1,o:68},sY:{dl:0.1,o:68}}}],
              [{b:3000,d:2000,o:1,r:-360},{b:5000,d:20,o:0,e:{o:33}},{b:7500,d:20,o:1,e:{o:33}},{b:7520,d:2480,r:-720}],
              [{b:5000,d:20,o:1,e:{o:33}},{b:5020,d:2480,r:360},{b:7500,d:20,o:0,e:{o:33}}],
              [{b:3400,d:2000,o:1,r:-360},{b:5400,d:20,o:0,e:{o:33}},{b:7600,d:20,o:1,e:{o:33}},{b:7620,d:2180,r:-720}],
              [{b:5400,d:20,o:1,e:{o:33}},{b:5420,d:2180,r:360},{b:7600,d:20,o:0,e:{o:33}}],
              [{b:3800,d:2000,o:1,r:-360},{b:5800,d:20,o:0,e:{o:33}},{b:7700,d:20,o:1,e:{o:33}},{b:7720,d:1880,r:-720}],
              [{b:5800,d:20,o:1,e:{o:33}},{b:5820,d:1880,r:360},{b:7700,d:20,o:0,e:{o:33}}],
              [{b:2500,d:2000,o:0.6}],
              [{b:-1,d:1,r:-10,rX:20,tZ:50}],
              [{b:-1,d:1,rY:30}],
              [{b:-1,d:1,x:-200,y:10,rY:180,tZ:200,p:{x:{d:1,dO:9},tZ:{d:2,dO:9}}},{b:0,d:2000,x:0,y:0,o:1,rX:20,rY:10,e:{x:6,y:6,o:6,rX:6,rY:6},p:{x:{dl:0.1,o:1},y:{dl:0.1,o:1},o:{dl:0.1,o:1},rX:{dl:0.1,o:1,d:1,dO:2},rY:{dl:0.1,o:1,d:3,dO:2}}}],
              [{b:-1,d:1,ls:0.6},{b:0,d:2000,ls:0.05,e:{ls:6}}],
              [{b:1700,d:1500,pt:{d:"M32,135.4C31.7,135.4 31.3,135.4 31,135.3C29.8,115 28.6,94.7 27.3,73.6C19.6,77 12.6,80.1 5,83.5C4.7,81.9 4.4,80.7 4.4,79.5C3.2,58.2 2.2,36.9 1,15.7C0.8,12.7 1.7,11.3 4.4,10.1C11.7,7 18.9,3.7 27,0C23.9,21 20.8,41 17.7,62.1C25.1,58.8 31.8,56.1 38.1,52.8C42.7,50.3 46.5,50.8 51.1,53.8C44.8,80.9 38.4,108.1 32,135.4Z"},e:{pt:27}}],
              [{b:-1,d:1,rX:45,rY:-270},{b:1700,d:1500,y:50,o:1,rX:0,rY:0,e:{y:27,o:27,rX:27,rY:27}}],
              [{b:1600,d:1500,pt:{d:"M24.8,170.3C28.4,155.7 32,141.3 35.8,125.6C30,128.5 25.3,130.9 20.6,133.3C18.6,134.3 16.9,135.6 14.3,133.5C11.9,131.4 12.6,129.5 13.4,127.4C19.6,110.5 25.9,93.7 32.1,76.8C32.7,75.2 33.2,73.5 34.1,70.9C24.6,74.7 16,78.3 7.3,81.6C5.8,82.2 2.9,82.4 2.2,81.5C0.9,79.9-0.3,77.1 0.1,75.2C5,54.8 10.4,34.6 15.4,14.2C16.1,11.3 17.5,9.8 20.3,8.7C27.8,6 35.2,2.9 42.5,0C48.4,6.5 48.5,6.6 44.6,13.7C37.8,26.1 30.8,38.4 24,50.8C24.4,51.2 24.7,51.6 25.1,52C32.9,50.8 40.8,50.1 48.5,48.3C54.7,46.8 55.3,52 58.2,54.7C60.9,57.3 59.2,59.4 57.9,61.8C49.1,78 40.4,94.3 31.6,110.7C31.2,111.5 30.8,112.4 29.8,114.4C38.1,110.5 45.2,107.2 52.2,103.9C58.1,110.4 58.1,110.4 54.1,117.6C44.4,135.1 34.7,152.5 24.8,170.3Z"},e:{pt:27}}],
              [{b:-1,d:1,rX:45,rY:-270},{b:1600,d:1500,y:17,o:1,rX:0,rY:0,e:{y:27,o:27,rX:27,rY:27}}],
              [{b:1500,d:1500,pt:{d:"M0,166.8C8.6,148.4 17.1,130.3 25.9,111.5C18.8,113.1 12.6,114.7 6.3,116C4.9,116.3 2.3,115.8 1.8,114.9C1.1,113.6 1.2,111.1 2.1,109.8C13,92 24.2,74.5 35.3,56.9C36.2,55.4 37.1,53.8 38.6,51.3C28.4,54.2 19.3,56.7 10.3,59.3C7.9,60 5.9,60.8 3.8,58C1.6,55.1 3.8,53.6 4.9,51.9C15.8,34.7 26.8,17.5 38,0C44.7,2.4 51.2,4.7 58.5,7.4C49.4,16.9 40.5,26.2 30.9,36.3C43.6,38 55.5,39.7 68.2,41.4C54,60.4 40.2,78.8 25.7,98.2C33.6,98.1 40.5,97.9 47.3,98C48.7,98 51.1,98.7 51.3,99.6C51.9,101.8 52.5,105 51.4,106.4C34.8,126.6 18,146.5 1.2,166.5C1,166.5 0.8,166.5 0,166.8Z"},e:{pt:27}}],
              [{b:-1,d:1,rX:45,rY:-270},{b:1500,d:1500,y:12,o:1,rX:0,rY:0,e:{y:27,o:27,rX:27,rY:27}}]
            ];

            var jssor_1_options = {
              $AutoPlay: 1,
              $SlideDuration: 800,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions,
                $Controls: [{r:5000},{r:5000,e:10000},{r:5400},{r:5400,e:9800},{r:5800},{r:5800,e:9600}]
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $SpacingX: 15
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 3000;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
    </script>
    <style>
        /*jssor slider loading skin spin css*/
        .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        /*jssor slider bullet skin 057 css*/
        .jssorb057 .i {position:absolute;cursor:pointer;}
        .jssorb057 .i .b {fill:none;stroke:#fff;stroke-width:2000;stroke-miterlimit:10;stroke-opacity:0.4;}
        .jssorb057 .i:hover .b {stroke-opacity:.7;}
        .jssorb057 .iav .b {stroke-opacity: 1;}
        .jssorb057 .i.idn {opacity:.3;}

        /*jssor slider arrow skin 051 css*/
        .jssora051 {display:block;position:absolute;cursor:pointer;}
        .jssora051 .a {fill:none;stroke:#fff;stroke-width:360;stroke-miterlimit:10;}
        .jssora051:hover {opacity:.8;}
        .jssora051.jssora051dn {opacity:.5;}
        .jssora051.jssora051ds {opacity:.3;pointer-events:none;}
    </style>
    <svg viewBox="0 0 0 0" width="0" height="0" style="display:block;position:relative;left:0px;top:0px;">
        <defs>
            <filter id="jssor_1_flt_1" x="-50%" y="-50%" width="200%" height="200%">
                <feGaussianBlur stdDeviation="10" result="r1"></feGaussianBlur>
                <feColorMatrix in="r1" type="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="r2"></feColorMatrix>
            </filter>
        </defs>
    </svg>
    <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1920px;height:600px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="Image/spin.svg"/>
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1920px;height:600px;overflow:hidden;">
            <div>
                <img data-u="image" src="Image/depositphotos_21279481-stock-photo-feedback-concept.jpg" />
                <div data-ts="flat" data-p="1260" style="left:0px;top:0px;width:1920px;height:600px;position:absolute;">
                    <div data-to="50% 0px" data-ts="preserve-3d" data-t="0" style="left:-20px;top:0px;width:1920px;height:600px;position:absolute;">
                        <%--<img data-to="50% 50%" data-t="1" style="left:595px;top:132px;width:290px;height:336px;position:absolute;opacity:0;max-width:290px;" src="img/girl-1.jpg" />--%>
                        <%--<img data-to="50% 50%" data-t="2" style="left:935px;top:132px;width:290px;height:336px;position:absolute;opacity:0;max-width:290px;" src="img/girl-2.jpg" />--%>
                        <%--<img data-to="50% 50%" data-t="3" style="left:1275px;top:132px;width:290px;height:336px;position:absolute;opacity:0;max-width:290px;" src="img/girl-3.jpg" />--%>
                        <div data-to="50% -200px" data-t="5" data-arr="4" style="left:620px;top:300px;width:1300px;height:230px;position:absolute;opacity:0;color:#954f98;font-size:184px;font-weight:900;line-height:1.2;text-shadow:2px 2px #38003a;"><span style="color:#ffde00;"></span></div>
                    </div>
                    <div data-to="50% 50%" data-arr="6" style="left:270px;top:530px;width:1600px;height:14px;position:absolute;opacity:0;color:#000000;font-size:13px;font-weight:700;line-height:1.2;letter-spacing:0.5em;text-align:center;">A GOOD TEACHER IS LIKE A CANDEL-IT CONSUMES ITSELF TO LIGHT THE WAY FOR OTHER'S</div>
                </div>
                <svg viewBox="0 0 300 300" width="300" height="300" style="left:330px;top:210px;display:block;position:absolute;overflow:visible;">
                    <g>
                        <path stroke-dasharray="10,10" fill="none" stroke="#000000" stroke-width="0.3" shape-rendering="crispEdges" d="M200,100L200,200L100,200L100,100Z" x="100" y="100" style="position:absolute;overflow:visible;"></path>
                        <path stroke-dasharray="10,10" fill="none" stroke="#000000" shape-rendering="crispEdges" d="M129,100C129,60.78778 160.78778,29 200,29C239.21222,29 271,60.78778 271,100C271,139.21222 239.21222,171 200,171C160.78778,171 129,139.21222 129,100Z" x="129" y="29" style="position:absolute;overflow:visible;"></path>
                        <path stroke-dasharray="10,10" fill="none" stroke="#000000" shape-rendering="crispEdges" d="M29,200C29,160.78778 60.78778,129 100,129C139.21222,129 171,160.78778 171,200C171,239.21222 139.21222,271 100,271C60.78778,271 29,239.21222 29,200Z" x="29" y="129" style="position:absolute;overflow:visible;"></path>
                    </g>
                </svg>
                <svg viewBox="0 0 300 300" data-ts="preserve-3d" width="300" height="300" style="left:330px;top:210px;display:block;position:absolute;overflow:visible;">
                    <g filter="url(#jssor_1_flt_1)">
                        <path data-to="200px 100px" fill="#ffde00" d="M125,150C125,136.19288 136.19288,125 150,125C163.80712,125 175,136.19288 175,150C175,163.80712 163.80712,175 150,175C136.19288,175 125,163.80712 125,150Z" x="125" y="125" data-t="7" data-c="0" style="position:absolute;opacity:0;overflow:visible;"></path>
                        <path data-to="100px 200px" fill="#ffde00" d="M125,150C125,136.19288 136.19288,125 150,125C163.80712,125 175,136.19288 175,150C175,163.80712 163.80712,175 150,175C136.19288,175 125,163.80712 125,150Z" x="125" y="125" data-t="8" data-c="1" style="position:absolute;opacity:0;overflow:visible;"></path>
                        <path data-to="200px 100px" fill="#ffde00" d="M130,150C130,138.9543 138.9543,130 150,130C161.0457,130 170,138.9543 170,150C170,161.0457 161.0457,170 150,170C138.9543,170 130,161.0457 130,150Z" x="130" y="130" data-t="9" data-c="2" style="position:absolute;opacity:0;overflow:visible;"></path>
                        <path data-to="100px 200px" fill="#ffde00" d="M130,150C130,138.9543 138.9543,130 150,130C161.0457,130 170,138.9543 170,150C170,161.0457 161.0457,170 150,170C138.9543,170 130,161.0457 130,150Z" x="130" y="130" data-t="10" data-c="3" style="position:absolute;opacity:0;overflow:visible;"></path>
                        <path data-to="200px 100px" fill="#ffde00" d="M135,150C135,141.71573 141.71573,135 150,135C158.28427,135 165,141.71573 165,150C165,158.28427 158.28427,165 150,165C141.71573,165 135,158.28427 135,150Z" x="135" y="135" data-t="11" data-c="4" style="position:absolute;opacity:0;overflow:visible;"></path>
                        <path data-to="100px 200px" fill="#ffde00" d="M135,150C135,141.71573 141.71573,135 150,135C158.28427,135 165,141.71573 165,150C165,158.28427 158.28427,165 150,165C141.71573,165 135,158.28427 135,150Z" x="135" y="135" data-t="12" data-c="5" style="position:absolute;opacity:0;overflow:visible;"></path>
                        <path fill="#16dfeb" d="M100,150C100,122.38576 122.38576,100 150,100C177.61424,100 200,122.38576 200,150C200,177.61424 177.61424,200 150,200C122.38576,200 100,177.61424 100,150Z" x="100" y="100" data-t="13" style="position:absolute;opacity:0.45;overflow:visible;"></path>
                    </g>
                </svg>
            </div>
            <div>
                <img data-u="image" src="Image/1464266393coverpage.jpg" />
                <div data-ts="flat" data-p="5040" style="left:0px;top:0px;width:1920px;height:600px;position:absolute;mix-blend-mode:color-dodge;">
                    <div data-to="50% 50%" data-ts="preserve-3d" data-t="14" style="left:109px;top:138px;width:750px;height:50px;position:absolute;">
                        <div data-to="50% 50%" data-ts="preserve-3d" data-t="15" style="left:0px;top:0px;width:750px;height:50px;position:absolute;">
                            <div data-to="100% 100% 100px" data-t="17" data-arr="16" style="left:-1174px;top:0px;width:1920px;height:60px;position:absolute;opacity:0;color:rgba(74,217,205,0.3);font-size:48px;line-height:1.2;letter-spacing:0.6em;text-align:right;"></div>
                        </div>
                    </div>
                    <div data-ts="preserve-3d" style="left:1410px;top:230px;width:300px;height:200px;position:absolute;mix-blend-mode:color-dodge;">
                        <svg viewBox="0 0 51 136" data-to="50% 50% -200px" width="51" height="136" data-t="19" style="left:46px;top:-50px;display:block;position:absolute;opacity:0;mix-blend-mode:color-dodge;overflow:visible;">
                            <path fill="rgba(217,214,74,0.3)" stroke="none" stroke-width="1" d="M51,135.75L41,135.75L41,125.75L51,125.75Z" data-t="18"></path>
                        </svg>
                        <svg viewBox="0 0 60 171" data-to="50% 50% -200px" width="60" height="171" data-t="21" style="left:105px;top:-83px;display:block;position:absolute;opacity:0;mix-blend-mode:color-dodge;overflow:visible;">
                            <path fill="rgba(217,214,74,0.3)" stroke="none" stroke-width="1" d="M0,170.75L0,160.75L10,160.75L10,170.75Z" data-t="20"></path>
                        </svg>
                        <svg viewBox="0 0 69 167" data-to="50% 50% -200px" width="69" height="167" data-t="23" style="left:186px;top:-89px;display:block;position:absolute;opacity:0;mix-blend-mode:color-dodge;overflow:visible;">
                            <path fill="rgba(217,214,74,0.3)" stroke="none" stroke-width="1" d="M0,166.75L0,156.75L10,156.75L10,166.75Z" data-t="22"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb057" style="position:absolute;bottom:18px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
                <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <circle class="b" cx="8000" cy="8000" r="5000"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora051" style="width:65px;height:65px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora051" style="width:65px;height:65px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
            </svg>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();
    </script>
    <!-- #endregion Jssor Slider End -->
    <br />
   <%--about feedback--%>

    <div>
        <p style="font-size:15px;font-family:'Times New Roman';margin-left:10px;margin-right:10px;text-align:justify">
            Feedback System for college students have been developed which aims to rate the college faculty’s performance. This type of Feedback Portal reduces the strong work of physically examining the feedback pages of each and every student.A  feedback  system  is  required  to  be  kept   in place.
	        Feedback  mechanism  system  ensure  a  detailed  analysis  of  the  performance of  the teacher’s  with respect  to  various  parameters. The  feedback  system  provide  capabilities  for  selecting  a  particular  course  for  feedback  and  then  the  reports  are  being  generated  by  the  admin . 
            The system also reduces the burden of efforts and burden of keeping and maintaining the records on a manual base, it requires a lot of space and safety to keep up such records. Also the students feedback can be tempered for wrong reasons in case of paper based feedbacks where in the FS(Feedback System) will always ensure safety of feedback  privacy.

        </p>
    </div>

    <br />
    <br />

    <%--Login Container--%>

     <div class="container mt-2">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="card card-block" style="height:250px">
                        <h4 class="card-title text-right" >
                            <i class="material-icons">settings</i>
                        </h4>
                        <img src="Image/girl.png"/>
                        <h5 class="card-title mt-3 mb-3"></h5>
                        <p class="card-text" style="font-size:22px;color:cadetblue;font-weight:bold;font-family:Garamond">
                          <a href="AdminLogin.aspx">Admin Login
                          </a>
                        </p>
                    </div>
                </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp

                <div class="col-md-3 col-sm-6">
                    <div class="card card-block" style="height:250px">
                        <h4 class="card-title text-right">
                           
                            <i class="material-icons">settings</i>
                        </h4>
                        <img src="Image/th%20(10).jpg"/>
                        <h5 class="card-title mt-3 mb-3"></h5>
                        <p class="card-text" style="font-size:22px;color:cadetblue;font-weight:bold;font-family:Garamond">
                        <a href="FacultyLogin.aspx"> Faculty Login
                         </a>
                        </p>
                    </div>
                </div>;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp

                <div class="col-md-3 col-sm-6">
                    <div class="card card-block" style="height:250px">
                        <h4 class="card-title text-right">
                            
                            <i class="material-icons">settings</i>
                        </h4>
                        <img src="Image/index90.jpg"/>
                        <h5 class="card-title mt-3 mb-3"></h5>
                        <p class="card-text" style="font-size:22px;color:cadetblue;font-weight:bold;font-family:Garamond">
                            <a href="StudentLogin.aspx">Student Login
                           </a>
                        </p>
                    </div>
                </div>

               <%-- <div class="col-md-3 col-sm-6">
                    <div class="card card-block" style="height:250px">
                        <h4 class="card-title text-right" >
                            <i class="material-icons">settings</i>
                        </h4>
                        <img src="Image/indexnbjm.jpg"/>
                        <h5 class="card-title mt-3 mb-3"></h5>
                        <p class="card-text" style="font-size:22px;font-weight:bold;color:cadetblue;font-family:Garamond">About Us
                        </p>
                    </div>
                </div>--%>
            </div>

        </div>
 <script>

     window.console = window.console || function (t) { };

</script>

 <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script><br /><br />

<%--<---footer--->--%>
<div class="row">

    <footer class="page-footer font-small pt-4"  style="bottom:0;margin-bottom:0;padding-bottom:0;padding-top:300px; width:100% ;background-color:#46B2B2">
  <!-- Footer Links -->
  <div class="container text-center text-md-left">

    <!-- Footer links -->
    <div class="row text-center text-md-left mt-3 pb-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Home</h6>
        <p>
            <a href="#">About Pt.R.S.U.</a>
        </p>
        <p>
            <a href="PhotoGallary.aspx">Photo Gallery</a>
        </p>
      </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none"/>

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
        <p>
          <a href="#!">MDBootstrap</a>
        </p>
        <p>
          <a href="#!">MDWordPress</a>
        </p>
        <p>
          <a href="#!">BrandFlow</a>
        </p>
        <p>
          <a href="#!">Bootstrap Angular</a>
        </p>
      </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none"/>

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Useful links</h6>
        <p>
          <a href="#!">Your Account</a>
        </p>
        <p>
          <a href="#!">Become an Affiliate</a>
        </p>
        <p>
          <a href="#!">Shipping Rates</a>
        </p>
        <p>
          <a href="#!">Help</a>
        </p>
      </div>

      <!-- Grid column -->
      <hr class="w-100 clearfix d-md-none"/>

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
        <p>
          <i class="fas fa-home mr-3"></i> Raipur(C.G)India-492010</p>
        <p>
          <i class="fas fa-envelope mr-3"></i> Pt. Ravishankar Shukla University Amanaka G.E.Road</p>
        <p>
          <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
        <p>
          <i class="fas fa-print mr-3"></i> Fax No. 0771-2262818(Registrar)</p>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Footer links -->

    <hr/>

    <!-- Grid row -->
    <div class="row d-flex align-items-center">

      <!-- Grid column -->
      <div class="col-md-7 col-lg-8">

        <!--Copyright-->
        <p class="text-center text-md-left">© Pt Ravishankar Shukla University ,Amanaka,GE Road ,Raipur 492010.All rights reserved.
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-5 col-lg-4 ml-lg-0">

        <!-- Social buttons -->
        <div class="text-center text-md-right">
          <ul class="list-unstyled list-inline">
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-google-plus-g"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

</footer>
 </div>
    </form>
    

</body>
</html>

