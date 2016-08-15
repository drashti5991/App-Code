<!--
File          : submitStep.jsp
Description   : This is the server-side code for the 5-step application.
                Variables CurrentStep and NextStep are passed on from the POST 
                method on client side. A GET method is implemented in the form 
                of response.Redirect() to move on to the next page / farthest page
                in the application.
Created By    : Drashti Trivedi
Created On    : 08/13/2016
-->


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    /* * Variable nCurrentStep is used to Get the parameter passed from 
         POST method which indicates the currentstep the User is at and the 
         nNextStep is keep a recod of the next step.
    */
    String strCurrentStep = request.getParameter("currentstep") ;
    int nCurrentStep = Integer.parseInt(strCurrentStep); // 1
    int nNextStep = nCurrentStep + 1 ;                   // 2 
    
    /* * If the User is at the Welcome page the currentstep is set at 0. 
         At this point, a session variable is created to record the Last 
         visited step in the application. 
       * If the User is at the 5th step,
         on Submit a success page is displayed to indicate end of application.
    */
    
    if(nCurrentStep == 0){
        session.setAttribute("laststep", null);
    }
    
    if(nCurrentStep == 5){
        response.sendRedirect("success.jsp");
        return;
    }
    
    /*  
       * If the User is at any step from 1-4, when the user clicks on submit
         the session variable "laststep is accessed :
       1) If laststep is null,it is set to currentStep and the user is 
          redirected to the nextstep.
       2) Else, if Last step is not null and LastStep < CurrentStep the 
          laststep session variable is set to value of current step
       3) If the nextStep is not the lastStep visited by the user, 
          the user is redirected to the LastStep, else user get redirected 
          to NextStep
    */
    
    String laststep = (String) session.getAttribute("laststep");
    System.out.println("Current step = " + nCurrentStep + "; Next step = " + nNextStep);
    
    if(laststep == null){
        session.setAttribute("laststep", strCurrentStep);
        response.sendRedirect("step" + nNextStep + ".jsp"); 
    } else {
        
        int nLastStep = Integer.parseInt(laststep);      //2
        //System.out.println("Current step = " + nCurrentStep + "; Next step = " + nNextStep + "; Last step =" + nLastStep );
        if(nLastStep < nCurrentStep)
            session.setAttribute("laststep", strCurrentStep);
        
        if((nLastStep + 1) > nNextStep){                 // 3 > 2
               String npage = "step" + (nLastStep +1) + ".jsp" ; 
               response.sendRedirect(npage);
        }else{
            String npage = "step" + nNextStep + ".jsp" ;
            response.sendRedirect(npage);
        }
            
    }
%>
