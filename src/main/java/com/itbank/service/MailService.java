package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;
import java.util.Scanner;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

@Service
public class MailService {

	// servletContext().getRealPath("경로") 형식을 대신하여 파일 자원을 불러올 수 있다
		@Value("classpath:account.txt")
		private Resource account;

		public int sendMail(String memo) throws IOException {
			// 받을 사람의 주소
			String targetAddress = "vlvkdksgo@naver.com"; // rkdwns21

			// 메일 서버에 접속할 계정 정보를 파일에서 불러오기
			File f = account.getFile();
			Scanner sc = new Scanner(f);
			
			String data = null;
			while(sc.hasNextLine()) {
				data = sc.nextLine();
			}
			sc.close();
			
			final String serverId = data.split("/")[0];
			final String serverPw = data.split("/")[1];
			
			// 메일 서버에 내용을 보내는 코드
			String host = "smtp.naver.com";	// Simple Mail Transfer Protocol
			int port = 465;
			
			Properties props = System.getProperties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", port);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.trust", host);
			
			Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
				String un = serverId;
				String pw = serverPw;
				
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(un, pw);
				}
			});
			mailSession.setDebug(true); 	// 메일 세션이 진행되는 내용을 디버그 형태로 콘솔에 출력하게끔 설정
			
			// Message 구성
			Message mimeMessage = new MimeMessage(mailSession);
			
			try {
				mimeMessage.setFrom(new InternetAddress("vlvkdksgo@naver.com")); //wonkey1222
				
				mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(targetAddress));
				
				mimeMessage.setSubject("스프링 메일 전송 테스트입니다");
				
				mimeMessage.setText(memo);
				
//				mimeMessage.setContent(obj, type);
				
				Transport.send(mimeMessage);
				
				return 1;
				
			} catch (AddressException e) {
				System.out.println("잘못된 주소");
				e.printStackTrace();
				return -1;
			} catch (MessagingException e) {
				System.out.println("메시지 전송에 문제 발생");
				e.printStackTrace();
				return -2;
			}
		}

		public int sendMail(HashMap<String, String> param) 
				throws IOException, AddressException, MessagingException {
			
			File f = account.getFile();
			Scanner sc = new Scanner(f);
			String data = null;
			while(sc.hasNextLine()) {
				data = sc.nextLine();
			}
			sc.close();
			
			String host = "smtp.naver.com";
			int port = 465;
			final String username = data.split("/")[0];
			final String password = data.split("/")[1];
			
			Properties props = System.getProperties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", port);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.trust", host);
			
			Session mailSession = Session.getDefaultInstance(props, new Authenticator() {
				String un = username;
				String pw = password;
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(un, pw);
				}
			});
			mailSession.setDebug(true);
			
//			wonkey1222@naver.com
			InternetAddress from = new InternetAddress("vlvkdksgo@naver.com");
			InternetAddress to = new InternetAddress(param.get("email"));
			
			Message mimeMessage = new MimeMessage(mailSession);
			mimeMessage.setFrom(from);
			mimeMessage.setRecipient(Message.RecipientType.TO, to);
			mimeMessage.setSubject(param.get("title"));
			mimeMessage.setText(param.get("content"));
			// 내용에 랜덤한 인증코드 6자리 혹은 8자리를 만들어서 전달 가능
			Transport.send(mimeMessage);
			
			return 1;
		}
	
	
}
