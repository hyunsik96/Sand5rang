package com.s5.sand5rang.seonghoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.s5.sand5rang.seonghoon.service.SeonghoonService;

@Controller
public class SeonghoonController {

	@Autowired
	private SeonghoonService seonghoonService;
}
