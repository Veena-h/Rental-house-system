<%@page import="com.connection.form_conn"%>
<%@page import="com.model.form_model"%>
<%@page import="com.entity.house_info"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
<section class="h-100 bg-dark">

  <form action="book_form_servlet" method="post">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
            
              <img src="book_img.jpeg"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
              <%
   int id=Integer.parseInt(request.getParameter("id"));

   try{
   form_model f=new form_model(form_conn.getconnection());
   List<house_info> f1=f.book_getId(id);
   
   for(house_info e:f1)
   {

%>
                <h3 class="mb-5 text-uppercase">Visiting Details</h3>

                <!-- <div class="row">
                  
                 
                </div> -->
                
                 
                
                <div class="form-outline mb-4">
                  <input type="number" id="form3Example8" name="id" class="form-control form-control-lg"   readonly="readonly" name="id"  value=<%=e.getId() %>>
                  <label class="form-label" for="form3Example8">Property-Id</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg"  readonly="readonly"   name="agent-name" value=<%=e.getAgent_name() %>/>
                  <label class="form-label" for="form3Example8">Agent-name</label>
                </div>
               
                
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg"  name="name" required="required"/>
                  <label class="form-label" for="form3Example8">Name</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg"  name="address" required="required"/>
                  <label class="form-label" for="form3Example8">Address</label>
                </div>
                
                
                <!--gender start  -->
                 <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                      value="option1" />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="option2"  />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="gender" id="otherGender"
                      value="option3"  />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>
                    <!--gender ends  -->


                 <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="email" required="required"/>
                  <label class="form-label" for="form3Example8">Email</label>
                </div>
                
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example8" class="form-control form-control-lg" name="phone" required="required"/>
                  <label class="form-label" for="form3Example8">Phone</label>
                </div>

	             <div class="form-outline mb-4">
                  <input type="Date" id="form3Example8" class="form-control form-control-lg"  name="date" required="required"/>
                  <label class="form-label" for="form3Example8">Visiting-Date</label>
                </div>
               
                <div class="form-outline mb-4">
                  <input type="time" id="form3Example8" class="form-control form-control-lg"  name="time"  required="required"/>
                  <label class="form-label" for="form3Example8">Time</label>
                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">
                    Reason Of Rent:
                    <select name="reason" class="select form-control" required="required">
					   <option name="reason"  value="Migration">Migration</option>
					   <option name="reason"  value="Job-Purpose">job-Purpose</option>
					   <option name="reason"  value="Marriage">Marriage</option>
					   <option name="reason"  value="Other">Other</option>
					 </select>

                  </div> 
                 <!--  <div class="col-md-6 mb-4">

                    <select class="select">
                      <option value="1">City</option>
                      <option value="2">Option 1</option>
                      <option value="3">Option 2</option>
                      <option value="4">Option 3</option>
                    </select>

                  </div> -->
                </div>

                <!-- <div class="form-outline mb-4">
                  <input type="text" id="form3Example9" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example9">DOB</label>
                </div> -->

               <!--  <div class="form-outline mb-4">
                  <input type="text" id="form3Example90" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example90">Pincode</label>
                </div> -->

               <!--  <div class="form-outline mb-4">
                  <input type="text" id="form3Example99" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example99">Course</label>
                </div> -->

                <!-- <div class="form-outline mb-4">
                  <input type="text" id="form3Example97" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example97">Email ID</label>
                </div> -->

                <div class="d-flex justify-content-end pt-3">
                  <!-- <button type="button" class="btn btn-light btn-lg">Reset all</button> -->
                  <button type="submit" class="btn btn-warning btn-lg ms-2"  id="submit_form_admin">Submit form</button>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%
   }
   }catch(Exception e)
   {
	   e.printStackTrace();
   }
%>
  </form>
</section>

</body>
</html>