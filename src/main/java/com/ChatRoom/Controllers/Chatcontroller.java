package com.ChatRoom.Controllers;

import org.springframework.messaging.handler.annotation.MessageMapping;

import org.springframework.messaging.handler.annotation.SendTo;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ChatRoom.Models.ChatMessage;

@RestController
public class Chatcontroller {

	
	
	
	@MessageMapping("/message")// send message to /app/chat.sendMessage
	@SendTo("/topic/public")
	public ChatMessage getcontent(@RequestBody ChatMessage message) {
		
		return message;
		
	}
	
	

	
	
	
	
}
