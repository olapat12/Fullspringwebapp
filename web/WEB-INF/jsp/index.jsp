<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="j" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Savemebank</title>
        <style>
            @media screen and (min-device-width: 1201px){
            #head{
                height: 100px;
               
                width: 100%;
                position: fixed;
                background-color: darkmagenta;
            }
            #save{
                color: white;
                position: absolute;
                margin-left: 70px;
                margin-top: 30px;
                font-family: arial;
            }
            nav{
                float: right;
                margin-top: 45px;
            }
            a{
                padding-left: 40px;
                padding-right: 70px;
                font-size: 25px;
                color: white;
                font-weight: bold;
                text-decoration: none;
             }
             a:hover{
                 color: #e99ee9;
                 font-size: 33px;
             }
             #the{
                 font-weight: bold;
                 font-family: arial;
                 padding-left: 50px;
                 font-size: 45px;
                 color: darkmagenta;
             }
           #way{
                 font-weight: bold;
                 font-family: arial;
                 padding-left: 50px;
                 font-size: 45px;
                 color: darkmagenta;
             }  
             #p{
                 font-size: 22px;
                 margin-left: 50px;
                 font-weight: bold;
             }
             #smart{
                 font-size: 35px;
                 color: darkmagenta;
                 text-align: center;
                 font-weight: bold;
                 font-family: sans-serif;
                 margin-top: 380px;
             }
             #smar{
                 font-size: 35px;
                 color: darkmagenta;
                 text-align: center;
                 font-weight: bold;
                 font-family: sans-serif;
                 
             }
             #you{
                 font-size: 20px;
                 text-align: center;
                 font-family: arial;
             }
             #plan{
                 font-size: 30px;
                 text-align: center;
                 font-family: arial;
                 color: darkmagenta;
             }
             #six{
                 width: 250px;
                 height: 250px;
                 border: solid darkmagenta;
                 margin-left: 150px;
             }
             #twelve{
                 width: 250px;
                 height: 250px;
                 border: solid darkmagenta;
                 margin-left: 460px;
                 margin-top: -257px;
             }
             #eight{
                 width: 250px;
                 height: 250px;
                 border: solid darkmagenta;
                 margin-left: 770px;
                 margin-top: -257px; 
             }
             #twenty{
                 width: 250px;
                 height: 250px;
                 border: solid darkmagenta;
                 margin-left: 1080px;
                 margin-top: -257px;   
             }
             #five{
                 width: 250px;
                 height: 250px;
                 border: solid darkmagenta;
                 margin-left: 1390px;
                 margin-top: -257px;  
             }
             #cent{
                 font-size: 20px;
                 text-align: center;
                 font-family: arial;
                 margin-left: 10px;
                 margin-right: 10px;
                 margin-top: 30%;
                 font-weight: bold;
             }
             #circle{
                 width: 300px;
                 height: 300px;
                 border: solid darkmagenta;
                 margin-left: 360px; 
                 border-radius: 50%;
             }
             #cir{
                 width: 300px;
                 height: 300px;
                 border: solid darkmagenta;
                 margin-left: 725px; 
                 border-radius: 50%;
                 margin-top: -305px;   
             }
             #circ{
                  width: 300px;
                 height: 300px;
                 border: solid darkmagenta;
                 margin-left: 1090px; 
                 border-radius: 50%;
                 margin-top: -305px; 
             }
             #daily{
                 font-size: 25px;
                 text-align: center;
                 font-weight: bold;
                 color: darkmagenta;
             }
             #stud{
                 width: 43%;
                 height: 500px;
                 
                 margin-left: 1000px;
                 margin-top: -350px;
                 
             } 
             #Weekly{
                 font-size: 25px;
                 text-align: center;
                 font-weight: bold;
                 color: darkmagenta;
             }
             #monthly{
                font-size: 25px;
                 text-align: center;
                 font-weight: bold;
                 color: darkmagenta; 
             }
             #phones{
                 width: 30%;
                 margin-top: 20px;
                 height: 700px;
                 margin-left: 67%;
             }
             #house{
                 width: 100%;
             }
             #dang{
                 font-size: 50px;
                 color: darkmagenta;
                 font-weight: bold;
                 position: absolute;
                 margin-top: 270px;
                 margin-left: 100px;
                 font-family: arial;
             }
             #want{
                 position: absolute;
                 font-family: arial;
                 font-size: 55px;
                 color: #ffffff;
                 margin-top: -470px;
                 margin-left: 700px;
                 font-weight: bolder;
             }
             #risk{
                margin-left: 200px; 
             }
             #goal{
                 font-size: 50px;
                 font-weight: bold;
                 color: darkmagenta;
                 margin-left: 600px;
                 margin-top: -300px;
             }
             #prot{
                 margin-left: 600px;
                 font-size: 24px;
                 font-weight: bold;
                 font-family: arial;
             }
             #la{
                 float: right;
             }
             #just{
                 margin-top: 120px;
                 font-size: 50px;
                 font-family: arial;
                 color: darkmagenta;
                 margin-left: 100px;
                 font-weight: bold;
             }
             #dan{
                 margin-left: 100px;
                 font-size: 24px;
                 font-weight: bold;
             }
             #ma{
                 margin-top: 200px;
                 width: 100%;
                 height: 900px;
             }
             #draw{
                 margin-top: -420px;
                 text-align: center;
                 font-family: arial;
                 font-size: 55px;
                 font-weight: bold;
                 color: white;
             }
             #trs{
                 font-size: 27px;
                 font-family: arial;
                 font-weight: bolder;
                 text-align: center;
                 color: black;
                 margin-top: -20px;
             }
             #vat{
                 margin-top: 400px;
                 height: 500px;
                 width: 700px;
             }
             #do{
                 margin-left: 800px;
                 font-size: 50px;
                 font-family: arial;
                 font-weight: bold;
                 margin-top: -400px;
                 color: darkmagenta;
             }
             #dog{
                 font-size: 24px;
                 font-weight: bold;
                 font-family: arial;
                 margin-left: 800px;
             }
             #fire{
                 width: 800px;
                 height: 550px;
                 margin-left: 50px;
             }
             #ako{
                 margin-top: -450px;
                 margin-left: 1000px;
                 font-family: arial;
                 font-size: 40px;
                 font-weight: bold;
                 color: darkmagenta;
             }
             #ben{
                 font-size: 22px;
                 font-family: arial;
                 font-weight: bold;
                 margin-left: 900px;
                 margin-top: 100px;
             }
          }
        </style>
    </head>
    <body>
        <div id="head">
            <h1 id="save">SaveMe</h1> 
            <nav>
                <a href="list">listt</a>
                <a href="okay">FAQ</a>
                <a href="signin">Sign In</a>
                <a href="create">Create an account</a>
                <a href="myform">Add</a>
            </nav>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br>
        <h1 id="the">The Most Reliable and Secure</h1>
        <h1 id="way">Way To Save Your Money.</h1>
        <p id="p">SaveMe makes your TODO list becomes reality</p>
        <p id='p'>If you can spend #2,000 on data weekly, there's nothing stopping you from saving #2,000 weekly.</p>
        <img src='<j:url value="/saveme/car_1.png"/>' id='stud'><br><br><br><br><br><br>
        <img src='<j:url value="/saveme/home.jpg"/>' id='fire'>
        <p id='ako'>Anything is Possible with SaveMe</p>
        <p id='ben'>You can own your dream house and be free from Landlord if you save with SaveMe.<br><br>
        SaveMe has a lot of savings plans that will benefits you positively.
        </p>
        <br><br><br>
        <p id="smart">Save Smartly & Invest Responsibly</p>
        <p id="you">SaveMe offers different savings plans and duration from as low as #100 - #50,000.</p>
        <p id="you">You can also gain an interest of 6% - 20% on your savings.</p><br><br><br><br><br>
        <p id="smar">Choose A Plan</p>
        <p id="plan">Daily &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            Weekly &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            Monthly
        </p>
        <div id="circle">
            <p id="daily">#100</p>
            <p id="daily">#200</p>
            <p id="daily">#300</p>
            <p id="daily">#500</p>
            <p id="daily">#1000</p>
        </div>
        <div id="cir">
            <p id="Weekly">#1,000</p>
            <p id="Weekly">#2,000</p>
            <p id="Weekly">#3,000</p>
            <p id="Weekly">#5,000</p>
            <p id="Weekly">#1,,0000</p>
        </div>
        <div id="circ">
            <p id="monthly">#5,000</p>
            <p id="monthly">#8,000</p>
            <p id="monthly">#10,000</p>
            <p id="monthly">#15,000</p>
            <p id="monthly">#20,000</p>
        </div>
        <p id="dang">You can buy your <br><br>dream phone with SaveMe</p>
        <img src='<j:url value="/saveme/ppp.jpg"/>' id="phones">

        <br><br><br><br><br>
        <p id="smar">Choose A Duration</p>
        <p id="plan">6 Months &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 12 Months
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 18 Months
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 24 Months
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5 Years
        </p>
        <div id="six">
            <p id="cent">Save for 6 months and get 5% interest on your savings</p>
        </div>
        <div id="twelve"><p id="cent">Save for 12 months and get 7% interest on your savings</p></div>
        <div id="eight"><p id="cent">Save for 18 months and get 10% interest on your savings</p></div>
        <div id="twenty"><p id="cent">Save for 24 months and get 12% interest on your savings</p></div>
        <div id="five"><p id="cent">Save for 5years and get 16% interest on your savings</p></div>
        <br><br><br><br>
        <img src='<j:url value="/saveme/house.jpg"/>' id="house">
        <p id="want">You can buy or build your dream house<br><br> with SaveMe for as low as #500 </p>
        <br><br><br><br><br><br><br>
        <img src='<j:url value="/saveme/lock.jpg"/>' id='risk'/>
        <p id='goal'>Your Security Is Our Primary Goal </p>
        <p id='prot'>SaveMe uses very reliable and efficient new model of security architecture to protect 
            <br><br>your data from unauthorized user and protection from fraud</p><br><br><br><br><br><br><br><br><br><br>
        <img src='<j:url value="/saveme/rent.jpg"/>' id='la'/>
        <p id='just'>House Rent Just Got Easier</p>
        <p id='dan'>You don't need to worry about your house rent when you save with SaveMe
            <br><br>SaveMe helps you plan towards your house rent
        </p>
        <img src='<j:url value="/saveme/bus.jpg"/>' id='ma'/>
        <p id='draw'>Draw a Business Plan</p>
        <p id='trs'>You can start your own business if you choose SaveMe
            <br><br>SaveMe has good and wise business plans for you, just trust in us and let's do the rest for you.
        </p>
        <img src='<j:url value="/saveme/homeappliances.jpg"/>' id="vat">
        <p id="do">Do you need home Appliances?</p>
        <p id='dog'>Don't worry too much, SaveMe is here to make your life better<br><br>
        You can start saving towards it and SaveMe will help you achieve it in less time.
        </p>
        
    </body>
</html>
