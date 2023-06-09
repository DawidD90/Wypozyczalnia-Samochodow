<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/header.jspf" %>


<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- Cars-->
    <section class="resume-section" id="cars">
        <div class="resume-section-content">
            <h2 class="mb-5">Cars</h2>
<c:forEach items="${carsModel}" var="title">
            <div class="d-flex flex-column flex-md-row justify-content-between mb-3">

                <div class="flex-grow-3">
                    <h3 class="mb-0">Make: ${title.make}</h3>
                    <p class="subheading mb-1 s">Model: ${title.model}</p>
                    <div class="subheading mb-1">Body Type: ${title.bodyType}</div>
                    <div class="subheading mb-1">Production Year: ${title.productionYear}</div>
                    <div class="subheading mb-1">Color: ${title.color}</div>
                    <div class="subheading mb-1">Mileage: ${title.mileage} km</div>
                    <div class="subheading mb-1">Status: ${title.carStatus}</div>
                    <div class="subheading mb-1">Branch: ${title.branchModel.address}</div>
                    <div class="subheading mb-1">Price: ${title.price} zł/per day</div>
                </div>
                <security:authorize access="hasAnyRole('ROLE_Admin')">
                <!-- Delete Button -->
                <form method="post" action='<c:url value="/cars/${title.id}"/>'>
                    <input type="submit" value="Delete" class="btn btn-danger">
                </form>
                </security:authorize>
            </div>

</c:forEach>
        </div>
    </section>

<security:authorize access="hasAnyRole('ROLE_Admin')">
    <div class="card-header py-3">


        <a href='<c:url value="/cars/addCar"/>' class="btn btn-info btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-info-circle"></i>
                    </span>
            <span class="text">Add new car</span>
        </a>


    </div>
</security:authorize>



</div>
