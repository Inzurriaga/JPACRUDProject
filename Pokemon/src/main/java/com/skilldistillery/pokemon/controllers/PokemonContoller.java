package com.skilldistillery.pokemon.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.pokemon.data.PokemonData;

@Controller
public class PokemonContoller {
	@Autowired
	private PokemonData dao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/searchPokemon.do")
	public String searchPageForm() {
		return "search";
	}
	
	@RequestMapping("/createPokemon.do")
	public String createPageForm() {
		return "create";
	}
	
	@RequestMapping("/pokedex.do")
	public String pokedex() {
		return "pokedex";
	}
	
	@RequestMapping(path = "/searchPokemonById.do")
	public String searchById(@RequestParam("dexNumber") Integer dex, Model model) {
		model.addAttribute("pokemon", dao.findById(dex));
		return "displayInfo";
	}
	
	@RequestMapping(path = "/searchPokemonByName.do")
	public String searchByName(@RequestParam("pokeName") String name, Model model) {
		model.addAttribute("pokemons", dao.findByName(name));
		return "pokedex";
	}
}
