package com.skilldistillery.pokemon.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.pokemon.data.PokemonData;
import com.skilldistillery.pokemon.entities.Pokemon;

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
	
	@RequestMapping(path = "/pokedex.do")
	public String findAllPokemon(Model model) {
		model.addAttribute("pokemons", dao.findAll());
		return "pokedex";
	}
	
	@RequestMapping(path = "/addPokemonToDB.do")
	public String addPokemonToDB(Pokemon pokemon, Model model) {
		Pokemon createdPokemon = dao.create(pokemon);
		if(createdPokemon.getId() == 0) {
			return "error";
		} else {
			Pokemon poke = dao.findById(createdPokemon.getId());
			System.out.println("helli im being found " + poke);
			model.addAttribute("pokemon", poke);
			return "displayInfo";
		}
	}
	
	@RequestMapping(path = "/deletePokemonFromDB.do")
	public String deletePokemonToDB(Integer id, Model model) {
		boolean deleted = dao.delete(id);
		if(deleted) {
			return "deleteConfirm";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(path = "/pokemonUpdateForm.do")
	public String pokemonUpdateForm(Integer id, Model model) {
		model.addAttribute("pokemon", dao.findById(id));
		System.out.println("hello im in the update");
		return "home";
	}
}
