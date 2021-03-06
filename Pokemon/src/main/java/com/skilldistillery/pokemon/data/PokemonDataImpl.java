package com.skilldistillery.pokemon.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokemon.entities.Pokemon;

@Service
@Transactional
public class PokemonDataImpl implements PokemonData {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Pokemon findById(int id) {
		return em.find(Pokemon.class, id);
	}
	
	@Override
	public List<Pokemon> findByName(String name) {
		String query = "SELECT poke FROM Pokemon poke WHERE poke.name LIKE :name";
		return em.createQuery(query, Pokemon.class).setParameter("name", "%"+name+"%").getResultList();
	}

	@Override
	public List<Pokemon> findAll() {
		String query = "SELECT poke FROM Pokemon poke";
		return em.createQuery(query, Pokemon.class).getResultList();
	}

	@Override
	public boolean delete(int id) {
		Pokemon pokemon = em.find(Pokemon.class, id);
		em.remove(pokemon);
		if(em.contains(pokemon)) {
			return false;
		}  else {
			return true;
		}
	}

	@Override
	public boolean update(Pokemon pokemon) {
		Pokemon managePokemon = em.find(Pokemon.class, pokemon.getId());
		managePokemon.setPokedexNumber(pokemon.getPokedexNumber());
		managePokemon.setName(pokemon.getName());
		managePokemon.setDescription(pokemon.getDescription());
		managePokemon.setHeightInches(pokemon.getHeightInches());
		managePokemon.setWeightPounds(pokemon.getWeightPounds());
		managePokemon.setImageUrl(pokemon.getImageUrl());
		managePokemon.setType(pokemon.getType());
		return true;
	}

	@Override
	public Pokemon create(Pokemon pokemon) {
		em.persist(pokemon);
		return pokemon;
	}

}
