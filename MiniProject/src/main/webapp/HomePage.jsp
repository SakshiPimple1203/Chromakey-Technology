<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomePage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" type="text/css" href="Home.css">
</head>
<body>
    
    <style>
        
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 7px;
            text-align: center;
        }
        .A {
            max-width: 800px;
            margin: 20px auto;
            padding: 0 20px;
        }
        h2 ,h1{
            text-align: center;
            color: white;
        }
        p {
            text-align: justify;
        }
        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 20px auto;
        }
        p{
            font-size: larger;
            font-family: 'Times New Roman', Times, serif;
        }
        h2{
            font-size: xx-large;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-style: italic;
            color: black;
        }
        .aligned-text{
            text-align: center;
        }
        .centered-links {
      text-align: center;
    }
    .centered-links a {
      margin: 0 10px; 
      font-size: large;
    }
    .column{
        float: left;
        width: 33.33%;
        padding: 5px;
    }
    .row::after{
        content: "";
        clear: both;
        display: table;
    }
    .container{
        padding: 20px;
        display: flex;
        flex-direction: row;
        justify-content: center;
    }
    .box{
        margin: 0 10px;
        box-shadow: 0 0 20px 2px rgba(0,0,0..1);
    }
    .box :hover{
            transition: 1s;
            transform: scale(1.3);
            z-index: 2;
        }
        

       
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Chromakey Technology</h1>
    </header>
    <label>
        <input type = "checkbox">
        <div class="toggle">
            <span class="top_line common"></span>
            <span class="middle_line common"></span>
            <span class="bottom_line common"></span>
        </div>

        <div class="slide">
            <h1>MENUE</h1>
            <ul>
                <li><a href="AboutPage.html"><i class="far fa-blog"></i>About</a></li>
                 <li><a href="memberregestration.jsp"><i class="far fa-blog"></i>Register</a></li>
                 <li><a href="LoginPage.jsp"><i class="far fa-blog"></i>Login</a></li>
                <li><a href="TutorialsPage.jsp"><i class="far fa-blog"></i>Tutorials</a></li>
                <li><a href="GalleryPage.html"><i class="far fa-blog"></i>Gallery</a></li>
                <li><a href="Resources.html"><i class="far fa-blog"></i>Resources</a></li>
                <li><a href="FAQ.html"><i class="far fa-blog"></i>FAQ</a></li>
                <li><a href="Blogpage.html"><i class="far fa-blog"></i>Blog</a></li>
                <li><a href="feedback.jsp"><i class="far fa-blog"></i>Feedback</a></li>
            </ul>
        </div>
    </label>
      
    <div class="A">
        <h2>Introduction to Chromakey</h2>
        <p>Chromakey technology, also known as green screen or blue screen, is a technique used in filmmaking, video production, and photography to replace a specific color in the background with a different image or video.</p>
        
        <h2>How Chromakey Works</h2>
        <p>Chromakey works by filming or photographing subjects against a uniformly colored background, typically green or blue. During post-production, software is used to remove the background color and replace it with a different image or video.</p>
        
        <h2>Benefits and Applications</h2>
        <p>Chromakey offers numerous benefits, including:</p>
        <p>Creating immersive virtual environments,Enhancing storytelling in films and videos,Improving visual effects and compositing,Increasing production efficiency and flexibilityIts applications span across various industries, including film, television, advertising, gaming, education, and more.</p>
        <h2>Examples of Chromakey Usage</h2><br>
        <p>Below are some eye-catching visuals showcasing examples of chromakey usage:</p>
    <div class="container"> 
        <div class="box"> 
            <img src="OIP.jpeg" width="500"> 
        </div>
        <div class="box">
            <img src="OIP (1).jpeg" width="500">
        </div>
        <div class="box">
            <img src="OIP (2).jpeg" width="500">
        </div>
    </div> 
</body>
</html>
