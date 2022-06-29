package com.s5.sand5rang.sangmi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.s5.sand5rang.sangmi.service.SangmiService;

@Controller
public class SangmiController {

	@Autowired
	private SangmiService SangmiService;
}
