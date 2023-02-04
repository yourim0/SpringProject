package com.tp.mail;

import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MailTest {
	
@Autowired
JavaMailSenderImpl mailSender;

@Test
public void mailSendTest() throws Exception{
	
	String subject = "test 메일";
	String content = "메일 테스트 내용";
	String from = "kyourim@gmail.com";
	String to = "kyl9721@gmail.com";
	
    
    try {
        MimeMessage mail = mailSender.createMimeMessage();
        MimeMessageHelper mailHelper = new MimeMessageHelper(mail, "UTF-8");
        
        mailHelper.setFrom(from);
        mailHelper.setTo(to);
        mailHelper.setSubject(subject);
        mailHelper.setText(content, true);
        
        mailSender.send(mail);
        
    } catch(Exception e) {
        e.printStackTrace();
    }
    
}
}

