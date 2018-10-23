import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Manager {
	 public static void test(String host,String port, final String username,final String password,String uname,String sub,String body) throws AddressException, MessagingException
	 {
		  Properties properties=new Properties();
		  properties.put("mail.smtp.host", host);
		  properties.put("mail.smtp.port", port);
		  properties.put("mail.smtp.auth", "true");
		  properties.put("mail.smtp.starttls.enable", "true");
		  Authenticator auth=new Authenticator()
				  {
			  	public PasswordAuthentication getPasswordAuthentication()
			  	{
			  		return new PasswordAuthentication(username,password); 
			  	}
				  };
				  Session session=Session.getInstance(properties,auth);
				  Message msg=new MimeMessage(session);
				  msg.setFrom(new InternetAddress(username));
				  InternetAddress[] ia={new InternetAddress(uname)};
				  msg.setRecipients(Message.RecipientType.TO, ia);
				  msg.setSubject(sub);
				  msg.setText(body);
				  
				  Transport.send(msg);
				 
	 }

}
