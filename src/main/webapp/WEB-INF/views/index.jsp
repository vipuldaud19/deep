<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Real Estate</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

  <style>
	:root {
	     --primary-color: #2c3e50;
	     --secondary-color: #e74c3c;
	     --accent-color: #3498db;
	     --light-color: #ecf0f1;
	     --dark-color: #2c3e50;
	   }
	   
	   * {
	     margin: 0;
	     padding: 0;
	     box-sizing: border-box;
	     font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	   }
	   
	   body {
	     background-color: #f9f9f9;
	     color: #333;
	     line-height: 1.6;
	   }
	   
	   /* Header Section */
	   .header-container {
	     position: relative;
	     width: 100%;
	     height: auto;
	     min-height: 300px;
	     max-height: 500px;
	     overflow: hidden;
	   }

	   .header-container img {
	     width: 100%;
	     height: 100%;
	     object-fit: cover;
	     transition: opacity 0.3s ease-in-out;
	   }

	   /* Quick Links */
	   .quick-links-container {
	     position: relative;
	     width: 100%;
	   }

	   .quick-links {
	     display: flex;
	     flex-wrap: wrap;
	     justify-content: center;
	     gap: 10px;
	     padding: 10px;
	     margin: 0 auto;
	     border-radius: 10px;
	     background-color: rgba(0, 0, 0, 0.6);
	     box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	     max-width: 90%;
	     position: absolute;
	     bottom: 20px;
	     left: 50%;
	     transform: translateX(-50%);
	   }

	   .quick-links a {
	     color: aliceblue;
	     padding: 6px 12px;
	     text-decoration: none;
	     border-radius: 5px;
	     transition: background 0.3s;
	     font-size: 14px;
	     white-space: nowrap;
	   }

	   .quick-links a:hover {
	     background-color: rgba(0, 0, 0, 0.8);
	   }

	   /* Navbar */
	   .navbar {
	     background-color: var(--primary-color) !important;
	     padding: 10px 0;
	   }
	   
	   .navbar-brand {
	     display: flex;
	     align-items: center;
	     margin-left: 10px;
	   }
	   
	   .navbar-brand span {
	     font-size: 1.2rem;
	     font-weight: 700;
	     color: white;
	     letter-spacing: 0.5px;
	     margin-left: 8px;
	   }
	   
	   .navbar-nav {
	     margin-right: 0;
	   }
	   
	   .nav-link {
	     color: white !important;
	     font-family: Verdana, sans-serif;
	     font-size: 0.9rem;
	     padding: 8px 12px;
	     transition: color 0.3s;
	   }
	   
	   .nav-link:hover {
	     color: var(--secondary-color) !important;
	   }
	   
	   .dropdown-menu {
	     border: none;
	     box-shadow: 0 5px 15px rgba(0,0,0,0.1);
	   }
	   
	   .dropdown-item {
	     padding: 8px 15px;
	   }
	   
	   /* Search Form */
	   .hero-search {
	     position: absolute;
	     top: 65%;
	     left: 50%;
	     transform: translate(-50%, -50%);
	     width: 90%;
	     max-width: 600px;
	     background-color: rgba(255, 255, 255, 0.9);
	     padding: 15px;
	     border-radius: 10px;
	     box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	     z-index: 10;
	   }
	   
	   .search-form {
	     display: flex;
	     flex-direction: column;
	     gap: 10px;
	   }
	   
	   .dropdown-toggle {
	     width: 100%;
	     text-align: left;
	   }
	   
	   @media (min-width: 768px) {
	     .search-form {
	       flex-direction: row;
	       align-items: center;
	     }
	     
	     .navbar-brand {
	       margin-left: 40px;
	     }
	     
	     .navbar-brand span {
	       font-size: 1.4rem;
	     }
	     
	     .navbar-nav {
	       margin-right: 40px;
	     }
	     
	     .quick-links {
	       bottom: 80px;
	       padding: 12px;
	       gap: 15px;
	       max-width: 70%;
	     }
	     
	     .quick-links a {
	       padding: 8px 16px;
	       font-size: 16px;
	     }
	     
	     .header-container {
	       height: 500px;
	     }
	   }
	   
	   /* Property Cards */
	   .scroll-container::-webkit-scrollbar {
	     display: none;
	   }
	   
	   .scroll-container {
	     -ms-overflow-style: none;
	     scrollbar-width: none;
	   }
	   
	   .container {
	     padding: 0 1rem;
	   }
	   
	   .card {
	     box-shadow: 0 4px 8px rgba(0,0,0,0.1);
	     transition: transform 0.3s ease;
	     margin-bottom: 20px;
	   }
	   
	   .card:hover {
	     transform: translateY(-5px);
	   }
	   
	   .btn-light:hover {
	     background-color: #f8f9fa !important;
	   }
	   
	   /* Property Scroll Section */
	   .property-cards-container {
	     position: relative;
	     margin: 30px auto;
	     max-width: 1400px;
	     padding: 0 15px;
	   }
	   
	   .property-cards-scroll {
	     display: flex;
	     overflow-x: auto;
	     scroll-behavior: smooth;
	     gap: 15px;
	     padding: 15px 0;
	     -ms-overflow-style: none;
	     scrollbar-width: none;
	   }
	   
	   .property-cards-scroll::-webkit-scrollbar {
	     display: none;
	   }
	   
	   .property-card {
	     flex: 0 0 280px;
	     transition: transform 0.3s;
	   }
	   
	   .property-card:hover {
	     transform: scale(1.03);
	   }
	   
	   .scroll-btn {
	     position: absolute;
	     top: 50%;
	     transform: translateY(-50%);
	     width: 35px;
	     height: 35px;
	     border-radius: 50%;
	     background: white;
	     border: none;
	     box-shadow: 0 2px 5px rgba(0,0,0,0.2);
	     z-index: 1;
	     display: flex;
	     align-items: center;
	     justify-content: center;
	     cursor: pointer;
	   }
	   
	   .scroll-btn.left {
	     left: 5px;
	   }
	   
	   .scroll-btn.right {
	     right: 5px;
	   }
	   
	   .scroll-btn:hover {
	     background: #f8f9fa;
	   }
	   
	   .scroll-btn i {
	     font-size: 1rem;
	     color: #333;
	   }
	   
	   /* Developer Cards */
	   .developer-card {
	     width: 100%;
	     margin: 20px 0;
	   }
	   
	   /* Research Cards */
	   .research-card {
	     width: 100%;
	     margin: 20px 0;
	   }
	   
	   /* Footer */
	   .footer {
	     background-color: black;
	     color: white;
	     padding: 40px 0;
	   }
	   
	   .social-icon {
	     width: 30px;
	     height: 30px;
	     margin: 0 10px;
	   }
	   
	   /* Responsive adjustments */
	   @media (min-width: 576px) {
	     .developer-card {
	       width: 45%;
	       margin: 20px 10px;
	     }
	     
	     .research-card {
	       width: 45%;
	       margin: 20px 10px;
	     }
	   }
	   
	   @media (min-width: 768px) {
	     .property-card {
	       flex: 0 0 350px;
	     }
	     
	     .developer-card {
	       width: 30%;
	     }
	     
	     .research-card {
	       width: 45%;
	     }
	   }
	   
	   @media (min-width: 992px) {
	     .developer-card {
	       width: 23%;
	     }
	     
	     .research-card {
	       width: 28%;
	     }
	   }
	   
	   /* Property listing cards */
	   .property-listing-card {
	     min-width: 100%;
	   }
	   
	   @media (min-width: 768px) {
	     .property-listing-card {
	       min-width: 700px;
	     }
	   }
	   
	   /* Hide scroll buttons on mobile */
	   @media (max-width: 767px) {
	     .scroll-btn {
	       display: none !important;
	     }
	   }
  </style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark">
	    <div class="container-fluid">
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/project">
	        <img src="<c:url value='/resources/images/estate1.jpg' />"  alt="Logo" width="60" class="d-inline-block align-top">
	        <span>ESTATEFINDERS</span>
	      </a>
	      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	      <div class="collapse navbar-collapse" id="navbarNavDropdown">
	        <ul class="navbar-nav ms-auto">
	          <li class="nav-item">
	            <a class="nav-link active" href="${pageContext.request.contextPath}/project" style="margin-right:30px;">Home</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${pageContext.request.contextPath}/about" style="margin-right:30px;">About Us</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="${pageContext.request.contextPath}/login" style="margin-right:30px;">Login/Register</a>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" style="margin-right:30px;">Menu</a>
	            <ul class="dropdown-menu dropdown-menu-dark">
	              <li><h6 class="dropdown-header">Services</h6></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/buy">Buy</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/rent">Rent</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/commercial">Commercial</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/pg">PG/Hostel</a></li>
	              <li><hr class="dropdown-divider"></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/contact">Contact</a></li>
	              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/adminlogin">Admin Login</a></li>
	            </ul>
	          </li>
	        </ul>
	      </div>
	    </div>
	  </nav>

	  <!-- Header Image -->
	  <div class="header-container">
	    <img src="<c:url value='/resources/images/estate3.jpg'/>" alt="Real Estate Banner" id="headerImage" class="img-fluid">
	    
	    <!-- Quick Links -->
	    <div class="quick-links-container">
	      <div class="quick-links">
	        <a href="${pageContext.request.contextPath}/buy" 
	           class="btn btn-outline-primary btn-sm" 
	           style="background-color: var(--primary-color) !important;border-color:transparent;">
	           Buy
	        </a>
	        <a href="${pageContext.request.contextPath}/rent" 
	           class="btn btn-outline-primary btn-sm" 
	           style="background-color: var(--primary-color) !important;border-color:transparent;">
	           Rent
	        </a>
	        <a href="${pageContext.request.contextPath}/pg" 
	           class="btn btn-outline-primary btn-sm" 
	           style="background-color: var(--primary-color) !important;border-color:transparent;">
	           PG / Hostels
	        </a>
	        <a href="${pageContext.request.contextPath}/commercial" 
	           class="btn btn-outline-primary btn-sm" 
	           style="background-color: var(--primary-color) !important;border-color:transparent;">
	           Commercial
	        </a>
	        <a href="${pageContext.request.contextPath}/property/sell-property" 
	           class="btn btn-outline-primary btn-sm" 
	           style="background-color: var(--primary-color) !important;border-color:transparent;">
	           Sell
	        </a>
	      </div>
	    </div>

	    <!-- Search bar -->
	    <div class="hero-search">
	      <form class="search-form" role="search" id="propertySearchForm">
	        <div class="dropdown mb-2 mb-md-0">
	          <a class="btn btn-secondary dropdown-toggle w-100" href="#" role="button" id="locationDropdown" data-bs-toggle="dropdown" aria-expanded="false">
	            Nashik
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="locationDropdown">
	            <li><a class="dropdown-item location-option" href="${pageContext.request.contextPath}/properties/nashik" data-location="Nashik">Nashik</a></li>
	            <li><a class="dropdown-item location-option" href="${pageContext.request.contextPath}/properties/mumbai" data-location="Mumbai">Mumbai</a></li>
	            <li><a class="dropdown-item location-option" href="${pageContext.request.contextPath}/properties/pune" data-location="Pune">Pune</a></li>
	            <li><a class="dropdown-item location-option" href="${pageContext.request.contextPath}/properties/sambhajinagar" data-location="Ch.Sambhajinagar">Ch.Sambhajinagar</a></li>
	            <li><a class="dropdown-item location-option" href="${pageContext.request.contextPath}/properties/jalgaon" data-location="Jalgaon">Jalgaon</a></li>
	          </ul>
	        </div>
	        <input class="form-control form-control-lg" type="search" 
	               placeholder="Enter location, property type..." aria-label="Search" id="propertySearchInput" list="locationSuggestions">
	        <datalist id="locationSuggestions">
	          <option value="Nashik">
	          <option value="Mumbai">
	          <option value="Pune">
	          <option value="Ch.Sambhajinagar">
	        </datalist>
	        <button class="btn btn-primary btn-lg w-100 w-md-auto" type="submit">Search</button>
	      </form>
	    </div>
	  </div>

  <!-- Results Container -->
  <div id="searchResults" class="container mt-4" style="display: none;">
    <div class="d-flex justify-content-between align-items-center mb-4">
      <h3>Properties in <span id="locationName"></span></h3>
      <div id="resultCount" class="badge bg-primary"></div>
    </div>
    <div class="row" id="propertyResults">
      <!-- Results will be populated here -->
    </div>
  </div>

  <!-- Property Listings -->
  <div class="container mt-5 position-relative">
    <button class="btn btn-light position-absolute start-0 top-50 translate-middle-y z-1 d-none d-md-block" 
            style="border-radius: 50%; width: 40px; height: 40px; box-shadow: 0 2px 5px rgba(0,0,0,0.2);"
            onclick="scrollCards(-1)">
      <i class="fas fa-chevron-left"></i>
    </button>
    
    <button class="btn btn-light position-absolute end-0 top-50 translate-middle-y z-1 d-none d-md-block" 
            style="border-radius: 50%; width: 40px; height: 40px; box-shadow: 0 2px 5px rgba(0,0,0,0.2);"
            onclick="scrollCards(1)">
      <i class="fas fa-chevron-right"></i>
    </button>
    
    <div class="d-flex flex-row overflow-auto gap-4 px-3 pb-3 scroll-container" 
         style="scroll-snap-type: x mandatory; scroll-behavior: smooth;">
      
      <!-- Card 1 -->
      <div class="card border-0 property-listing-card" style="scroll-snap-align: start;" data-location="Govind nagar">
        <div class="row g-0">
          <div class="col-md-6">
            <img src="<c:url value='/resources/images/roon.avif' />" class="img-fluid w-100" alt="Loongta Florenza in Nashik" style="height: 330px; object-fit: cover;">
          </div>
          <div class="col-md-6 d-flex flex-column">
            <div class="card-body">
              <h5 class="card-title mb-1">Lalait Roongta Group</h5>
              <br>
              <h5 class="card-title mb-2">Loongta Florenza</h5>
              <p class="text-muted mb-3">Govind Nagar, Nashik</p>
              <div class="property-details">
                <p class="card-text mb-1"><i class="fas fa-bed me-2"></i> 4 Bedrooms</p>
                <p class="card-text mb-1"><i class="fas fa-ruler-combined me-2"></i> 3,200 sq ft</p><br>
                <div class="mt-2 mt-sm-0">
                  <a href="${pageContext.request.contextPath}/roongta"class="btn btn-primary">View Details</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card 2 -->
      <div class="card border-0 property-listing-card" style="scroll-snap-align: start;">
        <div class="row g-0">
          <div class="col-md-6">
            <img src="<c:url value='/resources/images/samr.avif'/>" class="img-fluid w-100" alt="Property 2" style="height: 330px; object-fit: cover;">
          </div>
          <div class="col-md-6 d-flex flex-column">
            <div class="card-body">
              <h5 class="card-title mb-1">Samraat Group</h5>   <br>
              <h5 class="card-title mb-2">Samraat Apna Ghar</h5>
              <p class="text-muted mb-3">Gangapur, Nashik</p>
              <div class="property-details">
                <p class="card-text mb-1"><i class="fas fa-bed me-2"></i> 2 Bedrooms</p>
                <p class="card-text mb-1"><i class="fas fa-ruler-combined me-2"></i> 1,450 sq ft</p><br>
                <div class="mt-2 mt-sm-0">
                  <a href="${pageContext.request.contextPath}/properties/samraat" class="btn btn-primary">View Details</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Card 3 -->
      <div class="card border-0 property-listing-card" style="scroll-snap-align: start;">
        <div class="row g-0">
          <div class="col-md-6">
            <img src="<c:url value='/resources/images/maha.avif'/>" class="img-fluid w-100" alt="Property 3" style="height: 330px; object-fit: cover;">
          </div>
          <div class="col-md-6 d-flex flex-column">
            <div class="card-body">
              <h5 class="card-title mb-1">Mahalaxmi Surana & Fortune Group</h5>   <br>
              <h5 class="card-title mb-2">Palm Townn</h5>
              <p class="text-muted mb-3">Parijat Nagar, Nashik</p>
              <div class="property-details">
                <p class="card-text mb-1"><i class="fas fa-bed me-2"></i> 5 Bedrooms</p>
                <p class="card-text mb-1"><i class="fas fa-ruler-combined me-2"></i> 6,800 sq ft</p><br>
                <div class="mt-2 mt-sm-0">
                  <a href="${pageContext.request.contextPath}/palm" class="btn btn-primary">View Details</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     
      <!-- Card 4 -->
      <div class="card border-0 property-listing-card" style="scroll-snap-align: start;">
        <div class="row g-0">
          <div class="col-md-6">
            <img src="<c:url value='/resources/images/arpan.avif'/>" class="img-fluid w-100" alt="Property 4" style="height: 330px; object-fit: cover;">
          </div>
          <div class="col-md-6 d-flex flex-column">
            <div class="card-body">
              <h5 class="card-title mb-1">Arpana Group</h5>   <br>
              <h5 class="card-title mb-2">Minika Riverdale</h5>
              <p class="text-muted mb-3">Gangapur, Nashik</p>
              <div class="property-details">
                <p class="card-text mb-1"><i class="fas fa-bed me-2"></i> 3 Bedrooms</p>
                <p class="card-text mb-1"><i class="fas fa-ruler-combined me-2"></i> 1,800 sq ft</p>
                <p class="card-text mt-2"><small class="text-muted">$1,100,000 | Listed 5 days ago</small></p><br>
                <div class="mt-2 mt-sm-0">
                  <a href="${pageContext.request.contextPath}/minika" class="btn btn-primary">View Details</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Featured Projects -->
  <div class="property-cards-container">
    <h2 class="text-center mb-4">Top Highlighted Projects</h2>
    
    <button class="scroll-btn left" onclick="scrollProperties(-1)">
      <i class="fas fa-chevron-left"></i>
    </button>
    
    <button class="scroll-btn right" onclick="scrollProperties(1)">
      <i class="fas fa-chevron-right"></i>
    </button>
    
    <div class="property-cards-scroll" id="propertyCards">
      <div class="property-card card text-bg-dark">
        <img src="<c:url value='/resources/images/palm.jpeg'/>" class="card-img" alt="Palm town" style="height: 200px; object-fit: cover;">
        <div class="card-img-overlay d-flex flex-column justify-content-end" style="background: linear-gradient(to top, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0) 100%);">
          <div class="p-3">
            <h5 class="card-title mb-1">Palm Town</h5>
            <p class="card-text mb-1" style="font-family:verdana;font-size:14px;">by Mahalaxmi surana & fortune group</p>
            <p class="card-text mb-0"><small>2,3 BHK<br>Parijat Nagar, Nashik</small></p>
          </div>
        </div>
      </div>
      
      <div class="property-card card text-bg-dark">
        <img src="<c:url value='/resources/images/rooo.jpeg'/>" class="card-img" alt="Viraj Residencies" style="height: 200px; object-fit: cover;">
        <div class="card-img-overlay d-flex flex-column justify-content-end" style="background: linear-gradient(to top, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0) 100%);">
          <div class="p-3">
            <h5 class="card-title mb-1">Renuka Developers</h5>
            <p class="card-text mb-1" style="font-family:verdana;font-size:14px;">Panchavati, Nashik</p>
          </div>
        </div>
      </div>
      
      <div class="property-card card text-bg-dark">
        <img src="<c:url value='/resources/images/com.jpeg'/>" class="card-img" alt="Shriji Crown" style="height: 200px; object-fit: cover;">
        <div class="card-img-overlay d-flex flex-column justify-content-end" style="background: linear-gradient(to top, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0) 100%);">
          <div class="p-3">
            <h5 class="card-title mb-1">Parksyde Bussiness Avenue</h5>
            <p class="card-text mb-1" style="font-family:verdana;font-size:14px;">Panchavati Annex, Nashik</p>
          </div>
        </div>
      </div>
      
      <div class="property-card card text-bg-dark">
        <img src="<c:url value='/resources/images/land.jpeg'/>" class="card-img" alt="Avenue Milestone" style="height: 200px; object-fit: cover;">
        <div class="card-img-overlay d-flex flex-column justify-content-end" style="background: linear-gradient(to top, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0) 100%);">
          <div class="p-3">
            <h5 class="card-title mb-1">Bhoomi Lands & Plots</h5>
            <p class="card-text mb-1" style="font-family:verdana;font-size:14px;">Ambe Dindori</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Featured Developers -->
  <div class="text-center container">
    <h2 class="my-5">Featured Developers</h2>
    <div class="d-flex flex-wrap justify-content-center">
      <div class="developer-card card">
        <img src="<c:url value='/resources/images/roon.avif'/>" class="card-img-top" alt="kris group" style="height:200px; object-fit: cover;">
        <div class="card-body">
          <h5 class="card-title">Lalit Roongta Group</h5>
          <p class="card-text">Built on family values, Lalit Roongta Group combines trust with cutting-edge technology to create Vaastu-compliant, functional spaces. A leader in Nashik's real estate with luxurious amenities and customer satisfaction at its core.</p>
          <a href="${pageContext.request.contextPath}/lalit" class="btn btn-primary">View Projects</a>
        </div>
      </div>
      
      <div class="developer-card card" style="margin-left:20px;">
        <img src="<c:url value='/resources/images/shriji.jpg'/>" class="card-img-top" alt="kris group" style="height:200px; object-fit: cover;">
        <div class="card-body">
          <h5 class="card-title">Shriji Group</h5>
          <p class="card-text">Since 2007, Shreeji Group has delivered quality homes to 1000+ families. We focus on premium locations, aesthetic designs, timely delivery, and environmental responsibility while offering value for money.</p>
          <a href="${pageContext.request.contextPath}/shreeji" class="btn btn-primary">View Projects</a>
        </div>
      </div>
      
      <div class="developer-card card" style="margin-left:20px;">
        <img src="<c:url value='/resources/images/krish.avif'/>" class="card-img-top" alt="kris group" style="height:200px; object-fit: cover;">
        <div class="card-body">
          <h5 class="card-title">Krish Builders and Land Developer</h5>
          <p class="card-text">Established in 1990, Krrish Group specializes in economy to mid-luxury homes across Nashik. With 10 completed and 4 ongoing projects, we prioritize quality, customer satisfaction, and ethical values.</p>
          <a href="${pageContext.request.contextPath}/krishna" class="btn btn-primary">View Projects</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Research and Insights -->
  <div class="text-center container">
    <h2 class="my-5">Research and Insights</h2>
    <div class="d-flex flex-wrap justify-content-center">
      <div class="research-card card">
        <div class="card-body">
          <a href="${pageContext.request.contextPath}/city"><img src="<c:url value='/resources/images/city1.jpeg'/>" alt="city" style="width:150px; margin: 0 auto; display: block;"></a>
          <br>
          <a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="${pageContext.request.contextPath}/research/city-insights" style="color:black; font-family: verdana; font-size:18px;">
            City Insights
          </a><br>
          <p class="card-text">Get Know about top cities before you invest</p>
        </div>
      </div>
      
      <div class="research-card card">
        <div class="card-body">
          <a href="${pageContext.request.contextPath}/housing"><img src="<c:url value='/resources/images/resse.png'/>" alt="city" style="width:100px; margin: 0 auto; display: block;"></a>
          <br>
          <a class="link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover" href="${pageContext.request.contextPath}/research/housing" style="color:black; font-family: verdana; font-size:18px;">
            Housing Research
          </a><br>
          <p class="card-text">Get Know about top cities before you invest</p>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="bg-dark text-white py-4 mt-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4 mb-4 mb-md-0">
          <h5>EstateFinders</h5>
          <p>Find your dream home with our premium real estate services across India.</p>
          <div class="social-icons">
            <a href="#" class="text-white me-2"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="text-white me-2"><i class="fab fa-twitter"></i></a>
            <a href="#" class="text-white me-2"><i class="fab fa-instagram"></i></a>
            <a href="#" class="text-white me-2"><i class="fab fa-linkedin-in"></i></a>
          </div>
        </div>
        <div class="col-md-2 mb-4 mb-md-0">
          <h5>Quick Links</h5>
          <ul class="list-unstyled">
            <li><a href="${pageContext.request.contextPath}/project" class="text-white">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/properties" class="text-white">Properties</a></li>
            <li><a href="${pageContext.request.contextPath}/contact" class="text-white">Contact</a></li>
            <li><a href="${pageContext.request.contextPath}/about" class="text-white">About Us</a></li>
          </ul>
        </div>
        <div class="col-md-2 mb-4 mb-md-0">
          <h5>Services</h5>
          <ul class="list-unstyled">
            <li><a href="${pageContext.request.contextPath}/buy" class="text-white">Buy</a></li>
            <li><a href="${pageContext.request.contextPath}/rent" class="text-white">Rent</a></li>
            <li><a href="${pageContext.request.contextPath}/commercial" class="text-white">Commercial</a></li>
            <li><a href="${pageContext.request.contextPath}/pg" class="text-white">PG/Hostel</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h5>Contact Info</h5>
          <ul class="list-unstyled">
            <li><i class="fas fa-map-marker-alt me-2"></i> 123 Estate Street, Mumbai, India</li>
            <li><i class="fas fa-phone me-2"></i> +91 1234567890</li>
            <li><i class="fas fa-envelope me-2"></i> info@estatefinders.com</li>
          </ul>
        </div>
      </div>
      <hr>
      <div class="text-center">
        <p class="mb-0">&copy; 2023 EstateFinders. All rights reserved.</p>
      </div>
    </div>
  </footer>
  <script>
    // Property Cards Scroll
    function scrollCards(direction) {
      const container = document.querySelector('.scroll-container');
      if (container) {
        const scrollAmount = container.clientWidth * 0.8; 
        container.scrollBy({
          left: direction * scrollAmount,
          behavior: 'smooth'
        });
      }
    }

    // Featured Projects Scroll
    function scrollProperties(direction) {
      const container = document.getElementById('propertyCards');
      if (container) {
        const scrollAmount = 300; 
        container.scrollBy({
          left: direction * scrollAmount,
          behavior: 'smooth'
        });
      }
    }

    // Hide scroll buttons when at start/end
    document.addEventListener('DOMContentLoaded', function() {
      const container = document.getElementById('propertyCards');
      const leftBtn = document.querySelector('.scroll-btn.left');
      const rightBtn = document.querySelector('.scroll-btn.right');
      
      if (container && leftBtn && rightBtn) {
        function checkScroll() {
          if (container.scrollLeft <= 10) {
            leftBtn.style.display = 'none';
          } else {
            leftBtn.style.display = 'flex';
          }
          
          if (container.scrollLeft >= container.scrollWidth - container.clientWidth - 10) {
            rightBtn.style.display = 'none';
          } else {
            rightBtn.style.display = 'flex';
          }
        }
        
        checkScroll(); // Initial check
        container.addEventListener('scroll', checkScroll);
        window.addEventListener('resize', checkScroll);
      }
    });

    // ✅ Header Image Slideshow (JSP URLs)
    const headerImages = [
      "${pageContext.request.contextPath}/resources/images/real3.jpg",
      "${pageContext.request.contextPath}/resources/images/real5.png",
      "${pageContext.request.contextPath}/resources/images/real6.png",
      "${pageContext.request.contextPath}/resources/images/real4.png",
      "${pageContext.request.contextPath}/resources/images/estate3.jpg"
    ];

    let currentImageIndex = 0;
    const headerImageElement = document.getElementById('headerImage');

    if (headerImageElement && headerImages.length > 0) {
      // Preload images
      const preloadImages = [];
      headerImages.forEach(src => {
        const img = new Image();
        img.src = src;
        preloadImages.push(img);
      });

      function changeHeaderImage() {
        currentImageIndex = (currentImageIndex + 1) % headerImages.length;
        headerImageElement.style.opacity = 0;
        
        setTimeout(() => {
          headerImageElement.src = headerImages[currentImageIndex];
          headerImageElement.style.opacity = 1;
        }, 500);
      }

      setInterval(changeHeaderImage, 5000); // every 5 sec
    }

    // ✅ Location handling
    document.addEventListener('DOMContentLoaded', function() {
      const urlParams = new URLSearchParams(window.location.search);
      let currentLocation = urlParams.get('location') || 'Nashik';

      const locationDropdown = document.querySelector('#locationDropdown');
      if (locationDropdown) {
        locationDropdown.textContent = currentLocation;
      }

      const searchInput = document.querySelector('#propertySearchInput');
      if (searchInput) {
        searchInput.placeholder = `Search in ${currentLocation}...`;
      }

      document.querySelectorAll('.location-option').forEach(item => {
        item.addEventListener('click', function() {
          const selectedLocation = this.getAttribute('data-location');
          if (locationDropdown) {
            locationDropdown.textContent = selectedLocation;
          }
          if (searchInput) {
            searchInput.placeholder = `Search in ${selectedLocation}...`;
          }
        });
      });

      const searchForm = document.getElementById('propertySearchForm');
      if (searchForm) {
        searchForm.addEventListener('submit', function(e) {
          e.preventDefault();
          const locationInput = document.getElementById('propertySearchInput');
          if (locationInput) {
            const location = locationInput.value.trim();
            if (location) {
              // ✅ Correct JSP redirect
              window.location.href = "${pageContext.request.contextPath}/properties/" 
                + location.toLowerCase() 
                + "?search=" + encodeURIComponent(location);
            }
          }
        });
      }
    });
  </script>

</body>
</html>