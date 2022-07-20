package com.s5.sand5rang.sein.vo;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailSendSe {

//	EmailSend.naverMailSend("받는사람 메일");
	
	public static int naverMailSend(String userEmail, String newPwd) {
		
		String host = "smtp.naver.com";
		String user = "sand5rang@naver.com";
		String password = "dhfkd1234!";
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host); 
		props.put("mail.smtp.port", 587); 
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() { 
				return new PasswordAuthentication(user, password);
				}
			});
		
        int autNo = (int)(Math.random() * (99999 - 10000 + 1)) + 10000;
		
		try { 
			
			MimeMessage message = new MimeMessage(session);
			
			message.setFrom(new InternetAddress(user));
			
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
			
			// 메일 제목
			message.setSubject("샌드오랑 비밀번호 찾기");

			// 메일 내용
			message.setText("변경된 비밀번호는 '"+newPwd+"' 입니다. 로그인 후 비밀번호를 변경해주세요.");
			
			// send the message
			Transport.send(message);
			
			System.out.println("Success Message Send");

		
		} catch (MessagingException e) { 
			e.printStackTrace(); 
		}
		
		return autNo;
	
	}
	

	
}
