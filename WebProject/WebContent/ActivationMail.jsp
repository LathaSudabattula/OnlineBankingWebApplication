<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.io.*,java.util.*,javax.mail.*,javax.mail.internet.*,javax.activation.*,javax.servlet.http.*,javax.servlet.*,com.ts.dto.Accounts,com.ts.dto.Customer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:include page="CustomerLoginPage.jsp" />  
<%
    String email = (String)session.getAttribute("email");
	int cId = (Integer)session.getAttribute("cId");
	String pass = (String)session.getAttribute("pass");
	String result;
	//Recipient's email ID needs to be mentioned.
	String to = email;

	// Sender's email ID needs to be mentioned
	String from = "jahnavikvs@gmail.com";
	final String username = "JAHNAVIKVS";
	final String password = "nssj2010";

	// Assuming you are sending email through relay.jangosmtp.net
	String host = "smtp.gmail.com";

	Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", host);
	props.put("mail.smtp.port", "25");

	//Get the Session object.
	Session mailSession = Session.getInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username,
							password);
				}
			});

	try {
		// Create a default MimeMessage object.
		Message message = new MimeMessage(mailSession);

		// Set From: header field of the header.
		message.setFrom(new InternetAddress(from));

		// Set To: header field of the header.
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));

		// Set Subject: header field
		message.setSubject("Samridhi National Bank Savings Account Approval");

		// Now set the actual message
		message.setText("Customer Id: "+ cId + "\nPassword is : " + pass);
		//System.out.println();

		// Send message
		Transport.send(message);

		System.out.println("Sent message successfully....");
		result = "Sent message successfully....";

	} catch (MessagingException e) {
		e.printStackTrace();
		result = "Error: unable to send message....";

	}
%>
<html>
<head>

</head>
<body>
	
	
	</p>
</body>
</html>