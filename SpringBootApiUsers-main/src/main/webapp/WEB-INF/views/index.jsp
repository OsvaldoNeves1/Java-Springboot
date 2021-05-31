<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">


	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<title>Document</title>

	<style>
		body{
			margin: 0;
			padding: 0;
			font-family: 'Poppins', sans-serif;
		}
		h1{
			color: rgb(41, 41, 41);
		}
		.button {
			float: right;
			min-width: 300px;
			min-height: 60px;
			font-family: 'Nunito', sans-serif;
			font-size: 22px;
			text-transform: uppercase;
			letter-spacing: 1.3px;
			font-weight: 700;
			color: #fff;
			background: #46163f;
			background: linear-gradient(90deg, #886ce4 0%, #886ce4 100%);
			border: none;
			border-radius: 1000px;
			box-shadow: 12px 12px 24px #886ce4;
			transition: all 0.3s ease-in-out 0s;
			cursor: pointer;
			outline: none;
			position: relative;
			padding: 10px;
		}

		button::before {
			content: '';
			border-radius: 1000px;
			min-width: calc(300px + 12px);
			min-height: calc(60px + 12px);
			border: 6px solid #00FFCB;
			box-shadow: 0 0 60px rgba(0,255,203,.64);
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			opacity: 0;
			transition: all .3s ease-in-out 0s;
		}

		.button:hover, .button:focus {
			color: #fff;
			transform: translateY(-6px);
		}

		button:hover::before, button:focus::before {
			opacity: 1;
		}

		button::after {
			content: '';
			width: 30px; height: 30px;
			border-radius: 100%;
			border: 6px solid #00FFCB;
			position: absolute;
			z-index: -1;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			animation: ring 1.5s infinite;
		}

		button:hover::after, button:focus::after {
			animation: none;
			display: none;
		}

		@keyframes ring {
		0% {
			width: 30px;
			height: 30px;
			opacity: 1;
		}
		100% {
			width: 300px;
			height: 300px;
			opacity: 0;
		}
	}

		.footer-59391 {
			position: fixed;
			left: 0;
			bottom: 0;
			width: 100%;
			border-top: 1px solid #efefef;
			background-color: #fff;
			font-family: "Poppins", sans-serif;
			padding: 4rem 0;
			align-items: center; 
			text-align: center;

		}
		.footer-59391 .nav-links li {
			display: inline-block; 
		}
		.footer-59391 .nav-links li a {
			font-size: 14px;
			color: #777;
			padding: 10px; 
		}
  		@media (max-width: 1199.98px) {
			.footer-59391 .nav-links.nav-left li:first-child a {
			padding-left: 0; 
		} 
	}
  		.footer-59391 .nav-links.nav-right li:last-child a {
    		padding-right: 0; 
		}
  		@media (max-width: 1199.98px) {
    		.footer-59391 .nav-links.nav-right li:first-child a {
      		padding-left: 0; 
		} 
	}
		.footer-59391 .copyright {
			border-top: 1px solid #efefef;
			padding-top: 50px;
			text-align: center;
			color: #777; 
		}


	</style>
	

</head>
<body>

	<h1 class="text-center"> 👾 Random Users Application 👾</h1>

	<div class="col-md-4 col-md-offset-4">
		<div>
			<form:form action="result" method="post" modelAttribute="id">
			<form:label path="palavra" class="form-label">Busque um usuário pelo ID:</form:label>
			<form:input path="palavra" class="form-control"/><br/>
			
			<form:button class="btn btn-primary button">Enviar</form:button>
		</div>

			
		</form:form>

		<c:forEach items="${users}" var="user">
            <div>
                <h5>${user.getEmail()}</h5>
            </div>
        </c:forEach>

		
	</div>
	<footer class="footer-59391">
      
        <div class="container">

          <div class="row mb-5">

            <div class="col-md-4">
              
            </div>

			
			<div class="col-sm- text-md-right">
				<div class="col text-center" style="max-width: 150px; margin-left: 525px;">
					<img src="https://d27i7n2isjbnbi.cloudfront.net/sites/14698/normal_share_image_1517944041.jpg" alt="" style="width: 150px;">
				</div>
				<ul class="nav-links list-unstyled nav-right">
				  <li><a href="#">Fernanda Slomp</a></li>
				  <li><a href="#">Filipe</a></li>
				  <li><a href="#">Madoli</a></li>
				  <li><a href="#">Osvaldo</a></li>
				</ul>

			</div>

          </div>

          <div class="row mb-5">
		  <div class="col-md-6 "></div>

            
          </div>
          <div class="row">
            <div class="col ">
              <div class="copyright">
                <p><small>21GRPADS01BDJ40121E2_4
					Desenvolvimento de Serviços em Nuvem com Java - Anna Izabel</small></p>
              </div>
            </div>
          </div>
        
      </div>
    </footer>
</body>
</html>