package com.share.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Date;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 * 发送电子邮件
 * 
 * @author 蒙长江
 */

public class MessageSender {

	private static String transport_protocol = "smtp";
	private static String from = "thisisjustfortests@163.com";
	private static String to = "mengcj@escience.gov.cn";
	private static String host = "smtp.163.com";
	private static String user = "thisisjustfortests";
	private static String passwd = "fortest";
	private static String sender = "共享杯-系统";

	public static String getSender() {
		return sender;
	}

	public static void setSender(String sender) {
		MessageSender.sender = sender;
	}

	public static String getTransport_protocol() {
		return transport_protocol;
	}

	public static void setTransport_protocol(String transportProtocol) {
		transport_protocol = transportProtocol;
	}

	public static String getFrom() {
		return from;
	}

	public static void setFrom(String from) {
		MessageSender.from = from;
	}

	public static String getTo() {
		return to;
	}

	public static void setTo(String to) {
		MessageSender.to = to;
	}

	public static String getHost() {
		return host;
	}

	public static void setHost(String host) {
		MessageSender.host = host;
	}

	public static String getUser() {
		return user;
	}

	public static void setUser(String user) {
		MessageSender.user = user;
	}

	public static String getPasswd() {
		return passwd;
	}

	public static void setPasswd(String passwd) {
		MessageSender.passwd = passwd;
	}

	public static void main(String[] args) {
		sendFromHTMLFile("测试邮件", "message.html");
	}
	
	public static boolean sendFromHTMLFile(String title, String filepath) {
		try {
			File htmlFile = new File(filepath);
			BufferedReader reader = new BufferedReader(new FileReader(htmlFile));
			StringBuilder html = new StringBuilder();
			String line = null;
			while ((line = reader.readLine()) != null) {
				html.append(line);
				
			}
			reader.close();
			
			Session session = createSession();
			MimeMessage message = createMessage(session, null, null, null, html.toString());

			Transport transport = session.getTransport();
			System.out.print("连接服务器....");
			transport.connect(host, user, passwd);
			System.out.println("【OK】");
			transport.sendMessage(message, message.getRecipients(RecipientType.TO));
			transport.close();
			System.out.println("邮件发送成功！");
			return true;
		} catch (Exception e) {
			System.out.println("邮件发送失败：" + e.getMessage());
			return false;
		}
	}	

	public static boolean send(String title, String msg, String style) {
		try {
			Session session = createSession();
			MimeMessage message = createMessage(session, title, msg, style, null);

			Transport transport = session.getTransport();
			System.out.print("连接服务器....");
			transport.connect(host, user, passwd);
			System.out.println("【OK】");
			transport.sendMessage(message, message
					.getRecipients(RecipientType.TO));
			transport.close();
			System.out.println("邮件发送成功！");
			return true;
		} catch (Exception e) {
			System.out.println("邮件发送失败：" + e.getMessage());
			return false;
		}
	}

	public static Session createSession() {
		System.out.print("创建session....");
		try {
			Properties props = new Properties();

			props.setProperty("mail.transport.protocol", transport_protocol);
			props.setProperty("mail.smtp.auth", "true");

			Session session = Session.getInstance(props);
			session.setDebug(true);

			return session;
		} finally {
			System.out.println("【OK】");
		}
	}

	public static MimeMessage createMessage(Session session, String title,
			String msg, String style, String html) throws Exception {
		System.out.print("创建message....");
		try {
			MimeMessage message = new MimeMessage(session);

			message.setFrom(new InternetAddress(from));
			message.setRecipients(RecipientType.TO, InternetAddress.parse(to));
			message.setSentDate(new Date());

			message.setSubject("[System Message]" + title);

			MimeMultipart body = new MimeMultipart("related");

			MimeBodyPart htmlBodyPart = new MimeBodyPart();
			StringBuilder content = new StringBuilder();
			if(!StringUtil.isNullOrBlank(html)){
				content.append(html);
			}else{
				/**title**/
				content.append("<div align=\"center\"><h3 color=green>").append(title).append("</h3></div><hr>");
				/**content**/
				content.append("<div style=\"");
				content.append(style).append("\">");
				content.append("<p>").append(msg).append("</p>");
				content.append("</div>");
				/**info**/
				content.append("<div>");
				content.append(StringUtil.repeat("-", 50)).append("<br/>");
				content.append("<b>发件人：</b> ").append(sender).append("<br/>");
				content.append("<b>发送时间：</b>" + StringUtil.formatDate(new Date()))
						.append("<br/>");
				content.append("<div>");				
			}

			htmlBodyPart.setContent(content.toString(),
					"text/html;charset=gb2312");
			body.addBodyPart(htmlBodyPart);

			message.setContent(body);

			message.saveChanges();

			return message;
		} finally {
			System.out.println("【ok】");
		}
	}
	
	public String getException(Exception e ){
		StackTraceElement[] stes = e.getStackTrace();
		String msg = "";
		for (int i = 0; i < stes.length; i++) {
			msg += "&nbsp;&nbsp;&nbsp;&nbsp;【" + stes[i].getFileName() + "】" + stes[i].getClassName() + " : " + stes[i].getMethodName() + "(" + stes[i].getLineNumber() + ")<br/>";
		}
		return msg;
	}
}
