<%@include file="header.jsp"%>

<ul id="progressbar">
 <li>Pre-Survey (1)</li>
 <li class="active">Pre-Survey (2)</li>
 <li>Pre-Survey (3)</li>
 <c:forEach begin="1" end="3" varStatus="loop">
  <li>Phase ${loop.index}</li>
 </c:forEach>
 <li>Post-Survey</li>
</ul>

<h3>Instructions</h3>
<div class="jumbotron lead">
 <p>Smart home requirements collection...</p>

 <ul>
  <li><b>Do not</b> use the browser's <b>refresh</b>, <b>back</b>,
   or <b>forward</b> buttons.</li>
  <li>Use the <b>Submit Responses</b> button at the end of the page
   to proceed to the next page.
  </li>
  <li>After submitting responses in a page, you <b>cannot
    modify</b> your responses in that page.
  </li>
  <li>Answering all questions is mandatory, unless explicitly
   marked as optional.</li>
  <li>If something goes wrong (does not happen often), please start
   again from the beginning. If the problem persists, please contact <b>pmuruka
    AT ncsu.edu</b> with details of the problem.
  </li>
  <li>This HIT may contain <b>adult content</b>. Worker discretion
   is advised.
  </li>
  <li>You must be <b>18 or older</b> to participate in the study.
  </li>
 </ul>
</div>

<form:form method="POST" modelAttribute="personalityResponseForm">
 <h3>Pre-Survey (2)</h3>
 <div class="jumbotron lead">
  <ol>
   <c:forEach var="personalityResponse"
    items="${personalityResponseForm.personalityResponses}"
    varStatus="loop">
    <form:input type="hidden"
     path="personalityResponses[${loop.index}].userId" name="userId"
     id="userId" />
    <form:input type="hidden"
     path="personalityResponses[${loop.index}].personalityQuestionId"
     name="personalityQuestionId" id="personalityQuestionId" />

    <li>
     <h3>${personalityQuestions[loop.index].description}</h3>
     <div class="form-group radio">
      <c:forEach begin="1" end="5" varStatus="likertloop">
       <label> <form:radiobutton
         path="personalityResponses[${loop.index}].description"
         value="${likertloop.index}" />${likertloop.index}
       </label>
      </c:forEach>
     </div>
    </li>

    <div class="has-error">
     <form:errors path="personalityResponses[${loop.index}].description"
      class="help-inline" />
    </div>
   </c:forEach>
  </ol>

  <div class="text-center">
   <button type="submit" class="btn btn-primary btn-lg">Submit
    Responses &raquo;</button>
   <p>
    <br> <b>Note:</b> After submitting the responses, you cannot
    edit them again.
   </p>
  </div>
 </div>
</form:form>

</div>
<!-- /container -->

<%@include file="footer.jsp"%>