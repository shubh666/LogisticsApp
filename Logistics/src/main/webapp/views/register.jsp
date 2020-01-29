<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="button.css">


<style>

body {
  animation: colorchange 50s;
  -webkit-animation: colorchange 50s;
  animation-iteration-count: infinite;
  
  
/* /*  /*  background-color: lightgrey; */
 /*  width: 100%;
  height: 200%;
  border: 10px solid green;
  padding: 50px;
  margin: 10px; */ 
  
  
  
  
}

body.solid {border-style: solid;
				border-collapse:collapse;
				
				}

@keyframes colorchange{
  0%{background-color:#45a3e5}
  17%{background-color:#3cc}
  34%{background-color:#66bf39}
  51%{background-color:#ffa602}
  61%{background-color:#eb670f}
  84%{background-color:#f35}
  90%{background-color:#864cbf}
  100%{background-color:#45a3e5}
}

@-webkit-keyframes colorchange{
  0%{background-color:#45a3e5}
  17%{background-color:#3cc}
  34%{background-color:#66bf39}
  51%{background-color:#ffa602}
  61%{background-color:#eb670f}
  84%{background-color:#f35}
  90%{background-color:#864cbf}
  100%{background-color:#45a3e5}
}



/* button  */
@charset "ISO-8859-1";


@import url(https://fonts.googleapis.com/css?family=Roboto:400,100,900);

//colors
$red: #E1332D;
$white: #fff;

//base styles

* {
  box-sizing: inherit;
  transition-property: all;
  transition-duration: .6s;
  transition-timing-function: ease;
}

html,
body {
  box-sizing: border-box;
  height: 100%;
  width: 100%;
}

body {
  background: $red;
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
}

// Main wrap
.buttons {
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: center;
    text-align: center;
    width: 100%;
}

// Button wrap
.container { 
    align-items: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 1em;
    text-align: center; 
    
    @media (min-width: 600px) {
        flex-direction: row;
        justify-content: space-between;
    }
}

h1 {
  color: $white;
  font-size: 1.25em;
  font-weight: 900;
  margin: 0 0 2em;
  
  @media (min-width: 450px) {
    font-size: 1.75em;
  }
  
  @media (min-width: 760px) {
    font-size: 3.25em;
  }
  
  @media (min-width: 900px) {
    font-size: 5.25em;
    margin: 0 0 1em;
  }
}

p {
  color: $white;
  font-size: 12px;
  
  @media(min-width: 600px) {
    left: 50%;
    position: absolute; 
    transform: translate(-50%, 0);
    top: 90%;
  }
  
  @media(max-height: 500px) {
    left: 0;
    position: relative;
    top: 0;
    transform: translate(0, 0);
  }
  
  a {
    background: rgba($white, 0);
    border-bottom: 1px solid;
    color: $white;
    line-height: 1.4;
    padding: .25em;
    text-decoration: none;
    
    &:hover {
      background: rgba($white, 1);
      color: $red;
    }
  }
}
//button styles


//default button
.btn {
  color: #fff;
  cursor: pointer;
  // display: block;
  font-size:16px;
  font-weight: 400;
  line-height: 45px;
  margin: 0 0 2em;
  max-width: 160px; 
  position: relative;
  text-decoration: none;
  text-transform: uppercase;
  width: 100%; 
  
//   @media(min-width: 400px) {
//     display: inline-block;
//     margin-right: 2.5em;
  
//     &:nth-of-type(even) {
//       margin-right: 0;
//     }
//   }
  
  @media(min-width: 600px) {
      
    margin: 0 1em 2em;
  
//     &:nth-of-type(even) {
//       margin-right: 2.5em;
//     }
    
//     &:nth-of-type(5) {
//       margin-right: 0;
//     }
    
  }
  
  &:hover { text-decoration: none; }
  
}


.btn-5 {
  border: 0 solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
  outline: 1px solid;
  outline-color: rgba(255, 255, 255, .5);
  outline-offset: 0px;
  text-shadow: none;
  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
} 

.btn-5:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388; 
}


</style>


<script>  

  
  
function validateemail()  
{  
var x=document.myform.emailId.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
  } 	
var userName=document.myform.userName.value;  
var userPassword=document.myform.userPassword.value;  
  
if (userName==null || userName == ""){  
  alert("userName can't be blank");  
  return false;  
}else if(userPassword.length<4){  
  alert("Password must be at least 4 characters long.");  
  return false;  
  }  
}  

function phonenumber(inputtxt)
{
  var phoneno = /^\d{10}$/;
  if(inputtxt.value.match(phoneno))
  {
      return true;
  }
  else
  {
     alert("Not a valid Phone Number");
     return false;
  }
  }
</script>  
</head>


    

<body class="solid" >

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="register" name="myform" >
				
					<div class="form-group">
						<label for="exampleInputPassword1">UserID</label> 
						<input
							type="number" name="userId" class="form-control" id="exampleInputPassword1"  required="required">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Username</label> 
						<input
							type="text" name="userName" class="form-control" id="exampleInputPassword1" required="required" >
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> 
						<input
							type="password" name="userPassword" class="form-control" id="exampleInputPassword1" required="required">
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" name="emailId" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"  required="required"> <small id="emailHelp"
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>
					
					
					<div class="form-group">
						<label for="exampleInputPassword1">Mobile</label> 
						<input
							type="text" name="phone" class="form-control" id="exampleInputPassword1" required="required">
					</div>
					
					<div>
					<button type="submit" style="margin-left: 5cm;background-color: white" class="btn btn-5" onclick="phonenumber(document.myform.phone)" onclick="validateemail()">Submit</button>
					 <a href="/"><button style="margin-left: 1cm;background-color: white" class="btn btn-5">Back</button></a> 
					</div>
				</form>
				
				  
			</div>
		</div>
	</div>


</body>
</html> -->




























<!-- 
<html>
	<head>
	
	<style>
	
	/* Material Customization */
:root {
    --pure-material-primary-rgb: 255, 191, 0;
    --pure-material-onsurface-rgb: 0, 0, 0;
}

body {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background: url("https://media.gettyimages.com/photos/paintings-on-the-trucks-on-the-road-in-rajasthan-on-march-02-2017-in-picture-id946520298?s=2048x2048");
 background-size: 1200px 550px;
    /*  background-position: center; */
  background-repeat: no-repeat;
  height: 100%;
  weidth: 100%;
 	
 
 }
 img{
 
 
 }

.registration {
    position: relative;
    border-radius: 8px;
    padding: 16px 48px;
    box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
    overflow: hidden;
    background-color: white;
}

h1 {
    margin: 32px 0;
    font-family: "Roboto", "Segoe UI", BlinkMacSystemFont, system-ui, -apple-system;
    font-weight: normal;
    text-align: center;
}

.registration > label {
    display: block;
    margin: 24px 0;
    width: 320px;
}

a {
    color: rgb(var(--pure-material-primary-rgb));
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

button {
    display: block !important;
    margin: 32px auto;
}

.done,
.progress {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: white;
    visibility: hidden;
}

.done {
    transition: visibility 0s 1s;
}

.signed > .done {
    visibility: visible;
}

.done > a {
    display: inline-block;
    text-decoration: none;
}

.progress {
    opacity: 0;
}

.signed > .progress {
    animation: loading 4s;
}

@keyframes loading {
    0% {
        visibility: visible;
    }
    12.5% {
        opacity: 0;
    }
    25% {
        opacity: 1;
    }
    87.5% {
        opacity: 1;
    }
    100% {
        opacity: 0;
    }
}

.left-footer,
.right-footer {
    position: fixed;
    padding: 14px;
    bottom: 14px;
    color: #555;
    background-color: #eee;
    font-family: "Roboto", "Segoe UI", BlinkMacSystemFont, system-ui, -apple-system;
    font-size: 14px;
    line-height: 1.5;
    box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}

.left-footer {
    left: 0;
    border-radius: 0 4px 4px 0;
    text-align: left;
}

.right-footer {
    right: 0;
    border-radius: 4px 0 0 4px;
    text-align: right;
}

.left-footer > a,
.right-footer > a {
    color: black;
}

.left-footer > a:hover,
.right-footer > a:hover {
    text-decoration: underline;
}
	
	
	</style>
	
					<script>
					
					// JavaScript is used for toggling loading state
					var form = document.querySelector('form');
					form.onsubmit = function (event) {
					    event.preventDefault();
					    form.classList.add('signed');
					};
					
					</script>
	
	</head>

		<body class="img">
		
		
		
		<form style="align-content: center;" class="registration" action="register" method="post">
  <h1> Register Yourself!</h1>

			<label class="pure-material-textfield-outlined">
    		 <span></span>
     <input placeholder=" User Id" type="text" required>
     
  </label>
  
  <label class="pure-material-textfield-outlined">
    	 <span></span>
     <input placeholder="User Name " type="text" required>
     
  </label>
  
  <label class="pure-material-textfield-outlined">
   	
   	 <span></span>
    <input placeholder="Password " type="password" required>
   
  </label>
  
  <label class="pure-material-textfield-outlined">
    
     <span></span>
    <input placeholder=" Confirm Password" type="password" required>
   
  </label>
		
  <label class="pure-material-textfield-outlined">
     
      <span></span>
     <input placeholder=" Email" type="email" required>
     
  </label>
  
			<label class="pure-material-textfield-outlined">
     	<span></span>
     <input placeholder="Phone " type="text" required>
      
  </label>

 

 

  <button class="pure-material-button-contained" type="submit">Sign Up</button>

  <div class="done">
    <h1>👌 You're all set!</h1>
    <a class="pure-material-button-text" href="javascript:window.location.reload(true)">Again</a>
  </div>
  <div class="progress">
    <progress class="pure-material-progress-circular" />
  </div>
</form>


		
		
		
		</body>

</html>

 -->
 
 
 
 
 <html>
 <head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">  
 
 <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 
 <style >
 * {
  margin: 0;
  padding: 0;
}

*,
*:after,
*:before {
  box-sizing: border-box;
}

body {
  background: #A0A9CC;
  color: #fff;
  font-size: 1.5em;
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", sans-serif;
  font-weight: 100;
  text-align: center;
}

.container {
  background: #B7BED8;
  color: #6A79A6;
  display: inline-block;
  padding: 0em 2em;
  margin: 6em auto;
  box-shadow: 0 50px 50px rgba(0, 0, 0, .2);
  .navigation {
    text-align: left;
    ol {
      list-style: none;
      background: #B7BED8;
      position: absolute;
      padding: 30px 0;
      width: 600px;
      z-index: 100;
      li {
        display: inline-block;
        margin-right: 27px;
        font-size: 0.7em;
        max-width: 20%;
        text-align: left;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        a {
          color: #fff;
          text-decoration: none;
          position: relative;
          z-index: 2;
          cursor: pointer;
          opacity: 0;
          &.done {
            opacity: 1;
          }
        }
      }
      margin-bottom: 30px;
    }
  }
  .sign-form {
    width: 600px;
    text-align: left;
    margin: 85px 0 0 0;
    #next-page {
      opacity: 0;
      width: 40px;
      height: 40px;
      display: inline-block;
      vertical-align: middle;
      margin-left: 20px;
      background: url("https://jdniki.github.io/signup/images/next-page.svg");
      background-size: contain;
      &:hover {
        background: url("https://jdniki.github.io/signup/images/next-pagehover.svg");
        background-size: contain;
      }
    }
    .questions {
      list-style: none;
      -webkit-transition: height 0.4s;
      transition: height 0.4s;
      width: 88%;
      display: inline-block;
      height: 80px;
      li {
        position: absolute;
        width: 500px;
        span {
          display: block;
          margin-bottom: 10px;
        }
        input {
          width: 100%;
          font-size: .9em;
          color: #f2f2f2;
          margin: 0.3em 0 1em 0;
          border: none;
          background: none;
          border-bottom: 3px solid #fff;
          padding: 0.5em 0.1em;
          transition: all 0.5s ease;
          &:focus {
            outline: none;
            border-bottom: 3px solid #6A79A6;
          }
        }
        &:not(:first-child) {
          opacity: 0;
          margin-top: 150px;
        }
        /*-------------Password ------------------*/
        #viewpswd {
          position: absolute;
          opacity: 0;
          //                    z-index:-100;
        }
        #show-pwd {
          margin: -2.75em 0em;
          width: 40px;
          height: 40px;
          position: absolute;
          right: 0;
          color: rgba(255, 255, 255, 0.4);
          cursor: pointer;
          &.view {
            background: url("https://jdniki.github.io/signup/images/view.svg");
            background-size: contain;
          }
          &.hide {
            background: url("https://jdniki.github.io/signup/images/hide.svg");
            background-size: contain;
          }
        }
        #show-pwd:active,
        #show-pwd:focus {
          background: url("https://jdniki.github.io/signup/images/hide.svg");
          background-size: contain;
        }
        select.country {
          position: absolute;
          width: 4.5em;
          font-size: 0.7em;
          color: #f2f2f2;
          height: 70px;
          background: transparent;
          border: 1px solid #ccc;
          -webkit-appearance: none;
          -moz-appearance: none;
          appearance: none;
          border: none;
        }
        #phone {
          padding-left: 5em;
        }
      }
    }
  }
  .error-message {
    color: rgba(207, 0, 0, 0.56);
    font-size: 14px;
    margin-top: 10px;
    padding-bottom: 30px;
    background: #B7BED8;
  }
}

::-webkit-input-placeholder {
  font-size: 0.9em;
  color: rgba(255, 255, 255, 0.7);
}

:-moz-placeholder {
  /* Firefox 18- */
  font-size: 0.9em;
  color: rgba(255, 255, 255, 0.7);
}

::-moz-placeholder {
  /* Firefox 19+ */
  font-size: 0.9em;
  color: rgba(255, 255, 255, 0.7);
}

:-ms-input-placeholder {
  font-size: 0.9em;
  color: rgba(255, 255, 255, 0.7);
}

@-webkit-keyframes moveUpFromDown {
  from {
    -webkit-transform: translateY(100%);
  }
  to {
    -webkit-transform: translateY(0);
  }
}

@keyframes moveUpFromDown {
  from {
    -webkit-transform: translateY(100%);
    transform: translateY(100%);
  }
  to {
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}
 </style>
 
 <script >
 var counter = 1;
 $(document).ready(function() {

   var erroEle = $('.error-message'),
     focusInput = $('.questions').find('.active');

   $('.navigation a').click(function() {
     nextMaster('navi');

     var thisInput = $('#' + $(this).attr('data-ref'));
     $('.active').removeClass('active');
     thisInput.focus().addClass('active')
     thisInput.closest('li').animate({
       marginTop: '0px',
       opacity: 1
     }, 200);
     thisInput.closest('li').prevAll('li').animate({
         marginTop: '-150px',
         opacity: 0
       }, 200)
       //                     .AddClass('done');

     thisInput.closest('li').nextAll('li').animate({
         marginTop: '150px',
         opacity: 0
       }, 200)
       //                    .RemoveClass('done');
     errorMessage(erroEle, '', 'hidden', 0);

   });

   if (focusInput.val() != '') {
     $('#next-page').css('opacity', 1);
   }

   $(document).keypress(function(event) {
     if (event.which == 13) {
       nextMaster('keypress');
       event.preventDefault();
     }

     $('#next-page').click(function() {
       var focusInput = $('.questions').find('.active');
       nextMaster('nextpage');

     })

   });

   function nextMaster(type) {
     var focusInput = $('.questions').find('.active');
     if (focusInput.val() != '') {
       if ((focusInput.attr('name') == 'name' || focusInput.attr('name') == 'username') && focusInput.val().length < 2) {
         errorMessage(erroEle, "isn't your " + focusInput.attr('name') + " bit small. ", 'visible', 1);
       } else if (focusInput.attr('name') == 'email' && !validateEmail(focusInput.val())) {
         errorMessage(erroEle, "It doesn't look like a " + focusInput.attr('name'), 'visible', 1);
       } else if (focusInput.attr('name') == 'phone' && !validatePhone(focusInput.val())) {
         errorMessage(erroEle, "It doesn't look like a " + focusInput.attr('name'), 'visible', 1);
       } else {

         if (type != 'navi') showLi(focusInput);
         $('#next-page').css('opacity', 0);
         errorMessage(erroEle, '', 'hidden', 0);
       }
     } else if (type == 'keypress') {
       errorMessage(erroEle, 'please enter your ' + focusInput.attr('name'), 'visible', 1);
     }

   }

   $("input[type='text']").keyup(function(event) {
     var focusInput = $(this);
     if (focusInput.val().length > 1) {
       if ((focusInput.attr('name') == 'email' && !validateEmail(focusInput.val())) ||
         (focusInput.attr('name') == 'phone' && !validatePhone(focusInput.val()))) {
         $('#next-page').css('opacity', 0);
       } else {
         $('#next-page').css('opacity', 1);
       }

     } else {
       $('#next-page').css('opacity', 0);
     }
   });

   $("#password").keyup(function(event) {
     var focusInput = $(this);
     $("#viewpswd").val(focusInput.val());
     if (focusInput.val().length > 1) {
       $('#next-page').css('opacity', 1);
     }
   });

   $('#signup').click(function() {
     $('.navigation').fadeOut(400).css({
       'display': 'none'
     });
     $('#sign-form').fadeOut(400).css({
       'display': 'none'
     });
     $(this).fadeOut(400).css({
       'display': 'none'
     });
     $('#wf').animate({
       opacity: 1,
       marginTop: '1em'
     }, 500).css({
       'display': 'block'
     });
   });

   $('#show-pwd').mousedown(function() {
     $(this).toggleClass('view').toggleClass('hide');
     $('#password').css('opacity', 0);
     $('#viewpswd').css('opacity', 1);
   }).mouseup(function() {
     $(this).toggleClass('view').toggleClass('hide');
     $('#password').css('opacity', 1);
     $('#viewpswd').css('opacity', 0);
   });

 });

 function showLi(focusInput) {

   focusInput.closest('li').animate({
     marginTop: '-150px',
     opacity: 0
   }, 200);

   console.log(focusInput.closest('li'));

   if (focusInput.attr('id') == 'viewpswd') {
     $("[data-ref='" + focusInput.attr('id') + "']")
       .addClass('done').html('password');
     //                    .html(Array(focusInput.val().length+1).join("*"));
   } else {
     $("[data-ref='" + focusInput.attr('id') + "']").addClass('done').html(focusInput.val());
   }

   focusInput.removeClass('active');
   counter++;

   var nextli = focusInput.closest('li').next('li');

   nextli.animate({
     marginTop: '0px',
     opacity: 1
   }, 200);

   nextli.find('input').focus().addClass('active');

 }

 function errorMessage(textmeg, appendString, visib, opaci) {
   textmeg.css({
     visibility: visib
   }).animate({
     opacity: opaci
   }).html(appendString)
 }

 function validateEmail(email) {
   var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
   return re.test(email);
 }

 function validatePhone(phone) {
   var re = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/;
   return re.test(phone);
 }
 
 
 </script>
 
 
 </head>
 
 <body>
 
 						   <div class="container">
            <div class="navigation">
                <ol>
                    <li><a href="#"  data-ref="name">Userid</a></li>
                    <li><a href="#"  data-ref="uname">Username</a></li>
                    <li><a href="#"  data-ref="email">Email</a></li>
                    <li><a href="#"   data-ref="viewpswd">Password</a></li>
                    <li><a href="#"  data-ref="phone">Phone</a></li>
                </ol>
            </div>
            <form id="sign-form" action="register" method="post" class="sign-form">
                <ol class="questions">
                    <li>
                        <span><label for="name">Hi, What will be your id?</label></span>
						<input class="active" id="name" name="userId" type="text" placeholder="Enter your id" autofocus/>
                    </li>
                    <li>
				        <span><label for="uname">& what shall we call you?</label></span>
                        <input id="uname"  name="userName" type="text" placeholder="Enter a username" autofocus/>
					</li>
                    <li>
				        <span><label for="email">Enter you email</label></span>
                        <input id="email"name="emailId" type="text" placeholder="Email"  autofocus/>
					</li>
                    <li>
                        <span><label for="password">Choose a password</label></span>
                        <input id="viewpswd" name="userPassword" type="text" placeholder="this your password"/>
                        <input id="password" name="userPassword" type="password" placeholder="make sure you dont forget" autofocus/>
                        <span id="show-pwd" class="view"></span>
					</li>
                    <li>
                        <span><label for="phone">Enter your phone number</label></span>
                            <select name="countryCode" class="country"  >
                                <option data-countryCode="GB" value="91">(+91) INDIA </option>
                                <option data-countryCode="GB" value="44">(+44) UK </option>
                                <option data-countryCode="US" value="1">(+1) USA </option>
                                <optgroup label="Other countries">
                                   <option data-countryCode="DZ" value="213"> (+213)Algeria</option>
                                   <option data-countryCode="AD" value="376"> (+376) Andorra</option>
                                   <option data-countryCode="AO" value="244">(+244) Angola </option>
                                   <option data-countryCode="AI" value="1264"> (+1264) Anguilla</option>
                                   <option data-countryCode="AG" value="1268">(+1268) Antigua &amp; Barbuda </option>
                                   <option data-countryCode="AR" value="54">(+54) Argentina </option>
                                   <option data-countryCode="AM" value="374"> (+374) Armenia</option>
                                   <option data-countryCode="AW" value="297">(+297) Aruba </option>
                                   <option data-countryCode="AU" value="61"> (+61) Australia</option>
                                   <option data-countryCode="AT" value="43">(+43) Austria </option>
                                   <option data-countryCode="AZ" value="994"> (+994) Azerbaijan</option>
                                   <option data-countryCode="BS" value="1242">(+1242)Bahamas </option>
                                </optgroup>
                            </select>
                            <input id="phone" name="phone" type="text" autofocus/>
                    </li>
                    <li><p style="margin-top: 45px;font-size: 32pt;float:right">
                        <a href="#" style="color:white;text-decoration:none" id="signup">sign up</a></p>    </li>
                
                    
                </ol>
                <div id="next-page" alt="Kiwi standing on oval"></div>
                <div class="error-message"></div>
                
            </form>
        <h1 id="wf" style="opacity:0;width: 600px; margin-top:1.1em;display:none; margin-bottom:1em">Thank you</h1>
 							
 				
 
 
 
 
 
 </body>
 
 
 
 
 </html>