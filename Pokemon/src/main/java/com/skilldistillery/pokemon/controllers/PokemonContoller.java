package com.skilldistillery.pokemon.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		Pokemon pokemon = dao.findById(dex);
		if(pokemon == null) {
			return "error";
		} else {
			model.addAttribute("pokemon", pokemon);
			model.addAttribute("types", convertTypeData(pokemon.getType()));
			return "displayInfo";
		}
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
			return "redirect:searchPokemonById.do?dexNumber=" + createdPokemon.getId();
		}
	}
	
	@RequestMapping(path = "/deletePokemonFromDB.do")
	public String deletePokemonToDB(Integer id, Model model) {
		boolean deleted = dao.delete(id);
		if(deleted) {
			return "redirect:/";
		} else {
			return "error";
		}
	}
	
	@RequestMapping(path = "/pokemonUpdateForm.do")
	public String pokemonUpdateForm(Integer id, Model model) {
		model.addAttribute("pokemon", dao.findById(id));
		return "update";
	}
	
	@RequestMapping(path = "/updatePokemonToDB.do", method = RequestMethod.POST)
	public String updatePokemonToDB(Pokemon pokemon, RedirectAttributes redir) {
		boolean updated = dao.update(pokemon);
		if(updated) {
			return "redirect:searchPokemonById.do?dexNumber=" + pokemon.getId();
		} else {
			return "error";
		}
	}
	
	private String[] convertTypeData(String type) {
		return type.split(",");
	}
}
