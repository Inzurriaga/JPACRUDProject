package com.skilldistillery.pokemon.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PokemonContoller {
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/searchPokemon.do")
	public String search() {
		return "search";
	}
	
	@RequestMapping("/createPokemon.do")
	public String create() {
		return "create";
	}
	
	@RequestMapping("/pokedex.do")
	public String pokedex() {
		return "pokedex";
	}
}