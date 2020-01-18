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
	public Pokemon find(int id) {
		return em.find(Pokemon.class, id);
	}

	@Override
	public List<Pokemon> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Pokemon pokemon) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Pokemon create(Pokemon pokemon) {
		// TODO Auto-generated method stub
		return null;
	}

}
