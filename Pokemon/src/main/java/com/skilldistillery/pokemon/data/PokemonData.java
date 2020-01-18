package com.skilldistillery.pokemon.data;

import java.util.List;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonData {
	public Pokemon find(int id);
	public List<Pokemon> findAll();
	public boolean delete(int id);
	public boolean update(Pokemon pokemon);
	public Pokemon create(Pokemon pokemon);
}
