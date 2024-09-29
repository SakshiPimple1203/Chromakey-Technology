
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Roboto+Slab&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="feedback.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
    <div class="container">
        <header>
            <h1>Feedback</h1>
          
        </header>
        <div class="content">
            <div class="content-form">

                <section>
                    <i class="fa fa-phone fa-2x" aria-hidden="true"></i>
                    <h2>Phone</h2>
                    <p>9404551097</p>
                </section>

                <section>
                    <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                    <h2>E-mail</h2>
                      <p>pimplesakshi68@gmail.com</p>
                </section>
                
            </div>
        </div>

    <%-- <form action="Feedback" method="post">
        <div class="form">
            <div class="right">
              <div class="contact-form">
                  <input type="text" name="full_name" required>
                  <span>Full Name</span>
              </div>
  
              <div class="contact-form">
                  <input type="email" name="email" required>
                  <span>E-mail Id</span>
              </div>
              <div class="contact-form">
                  <textarea name="message" required></textarea>
                  <span>Type your Message....</span>
              </div>
  
              <div class="contact-form">
                  <input type="submit" value="Submit">
              </div>
              </div>
            </div>
          </div>
    </form>--%>
    <form action="https://api.web3forms.com/submit" method="POST">

    <!-- Replace with your Access Key -->
    <input type="hidden" name="access_key" value="ed6a4e03-b19c-4f00-a08b-dfbb0a58aac9">

    <!-- Form Inputs. Each input must have a name="" attribute -->
   <div class="form">
            <div class="right">
              <div class="contact-form">
                  <input type="text" name="full_name" required>
                  <span>Full Name</span>
              </div>
  
              <div class="contact-form">
                  <input type="email" name="email" required>
                  <span>E-mail Id</span>
              </div>
              <div class="contact-form">
                  <textarea name="message" required></textarea>
                  <span>Type your Message....</span>
              </div>
  
              <div class="contact-form">
                  <input type="submit" value="Submit">
              </div>
              </div>
            </div>
          </div>
</form>
<!-- Required for hCaptcha -->
<script src="https://web3forms.com/client/script.js" async defer></script>
        <div class="media">
            <li><i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i></li>
            <li><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></li>
            <li><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i></li>
            <li><i class="fa fa-twitter-square fa-2x" aria-hidden="true"></i></li>
        </div>
        <div class="empty">

        </div>
    </div>   
     
  
  <h2>Search Gmail</h2>
  <form id="searchForm">
    <label for="searchQuery">Enter search query:</label><br>
    <input type="text" id="searchQuery" name="searchQuery" required><br><br>
    <button type="submit">Search</button>
  </form>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gmail Filter Search</title>
</head>

  
     
</body>
</html>