package com.s5.sand5rang.anna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.s5.sand5rang.hyunsik.service.HyunsikService;

@Controller
public class AnnaController {

	@Autowired
	private HyunsikService hyunsikService;
}
