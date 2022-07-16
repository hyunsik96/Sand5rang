package com.s5.sand5rang.anna.controller;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

	
	public class EmailSend {	
		
		public static void naverMailSend(String userEmail) {
			
			EmailSend.naverMailSend("isshoperi@gmail.com");
			
			
			
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
			
			// 메일에 넣을 난수 발생 
	        int mailAutNo = (int)(Math.random() * (99999 - 10000 + 1)) + 10000;
			
			try { 
				
				MimeMessage message = new MimeMessage(session);
				
				message.setFrom(new InternetAddress(user));
				
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
				
				// 메일 제목
				message.setSubject("샌드오랑 가맹문의 인증번호 입니다.");
				
				// 메일 내용
				message.setText("인증번호는 " + mailAutNo + "입니다. 홈페이지에서 인증을 진행해주세요.");
				
				// send the message
				Transport.send(message);
				
				System.out.println("Success Message Send");

			
			} catch (MessagingException e) { 
				e.printStackTrace(); 
			}
			
		
		}
		

	
}
