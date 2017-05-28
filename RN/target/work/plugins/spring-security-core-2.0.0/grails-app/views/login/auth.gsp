<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media='screen'>
</head>

<body>
<div >
	
           

		

		<form id='login' action='${postUrl}' method='POST' id='loginForm' class=' cssform' autocomplete='off'>
                                <div class='fheader'><h2 class=""><g:message code="springSecurity.login.header"/></h2></div>
                                <g:if test='${flash.message}'>
                                        <div id='login_message'>${flash.message}</div>
                                </g:if>
                
                                <label for='username'><g:message code="springSecurity.login.username.label"/>:</label><br>
				<input type='text' class='text_' class="form-control" name='j_username' id='username'/><br><br>
		

				<label for='password'><g:message code="springSecurity.login.password.label"/>:</label><br>
				<input type='password' class='text_' class="form-control" name='j_password' id='password'/><br><br>
	

	
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label><br>

                                
				<input type='submit' class="btn btn-success" id="submit" value='${message(code: "springSecurity.login.button")}'/>

		</form>
</div>
<script type='text/javascript'>
(function() {
	document.forms['loginForm'].elements['j_username'].focus();
})();
</script>
</body>
</html>
