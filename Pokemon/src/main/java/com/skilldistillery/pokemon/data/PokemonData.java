package com.skilldistillery.pokemon.data;

import java.util.List;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonData {
	public Pokemon findById(int id);
	public List<Pokemon> findByName(String name);
	public List<Pokemon> findAll();
	public boolean delete(int id);
	public boolean update(Pokemon pokemon);
	public Pokemon create(Pokemon pokemon);
}
