<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Teaching History Report</title>
        <jsp:include page="../includes/static_includes.jsp" />
        <script type="text/javascript" src="views_ajax_requests/swiftreportAJAX.js"></script>
    </head>

    <body class="body-inner">
            
        <div class="btn-toolbar btn-mobile-menus">
            <button class="btn btn-main-menu"></button>
            <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
        </div>
<!-- Navigation starts -->

<!-- Navigation Starts -->
<jsp:include page="../includes/navigation-template.jsp" />
<!-- Navigation ends -->     

<!-- Navigation end -->
        <div class="wrapper">
            <div class="breadcrumb-container" style="width: 100%">
                <ul class="xbreadcrumbs">
                    <li>
                        <a href="dashboard.html">
                            <i class="icon-photon home"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">Reports</a>
                    </li>
                    <li class="current">
                        <a href="javascript:;">Teaching History</a>
                    </li>
                </ul>
            </div>   
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Generate Who Teaching History Report</small></h2>
                <h3><small>This report displays the summary who is teaching what at given semester and grouped by courses/semester since the beginning of time.</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="span12">
                    <div class="container-fluid">


<!-- SWIFT REPORT STARTS -->
<table border="1" class="table table-striped">
    <caption class="text-left"><h3>&nbsp;Faculty Swift Report</h3></caption>
    <tr>
        <th>COURSE/ SUBJECT IDENTIFIER</th>
        <th>ASSN' TEACH HOURS</th>
        <th>LANG OF INST.</th>
        <th>TYPE</th>
        <th>FACTOR</th>
        <th>ATTB'D HRS</th>
        <th>ADDT'L ATTB'D</th>
        <th>CLASS SIZE</th>
        <th>
            <u>E</u><br />
            .03
        </th>
         <th>
            <u>R</u><br />
            .015
        </th>
         <th>
            <u>P</u><br />
            .0092
        </th>
<th> FACTOR </th>
        <th> ATTB'D HRS</th>
        <th> ADDT'L ATTB'D</th>
        <th> COMP HOURS ALLOW </th>
        <th> COMP HOURS ASSN'D</th>
        <th> REF</th>
        <th> TOTAL</th>
    </tr>
    <tr>
        <td>REFER. TO COLL. AGRMT</td>
        <td> 11.01 <br /> B & C</td>
        <td>11.01 <br /> D</td>        
        <td>11.01 <br /> D</td>        
        <td>11.01 <br /> D</td>
        <td>11.01 <br /> D</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> F</td>
        <td>11.01 <br /> D, F, G</td>
        <td> </td>
        <td></td>
    </tr>
    <c:forEach items="${swift }" var="bi" >
    <tr>
        <td></td>
        <td></td>
        <td></td>        
        <td></td>        
        <td></td>        
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
        </c:forEach>

    
</table>

<!--  SWIFT REPORT ENDS -->


                    </div><!-- end container -->
                </div>
    </div>
            </form>
        </div>
    </body>
</html>
