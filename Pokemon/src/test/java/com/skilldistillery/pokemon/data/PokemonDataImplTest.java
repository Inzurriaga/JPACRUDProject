package com.skilldistillery.pokemon.data;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.pokemon.entities.Pokemon;

class PokemonDataImplTest {
	private PokemonData dao;

	@BeforeEach
	void setUp() throws Exception {
		dao = new PokemonDataImpl();
	}

	@AfterEach
	void tearDown() throws Exception {
		dao = null;
	}

	@Test
	@DisplayName("Retrieve Bulbasaur from id 1")
	void test1() {
		Pokemon pokemon = dao.findById(1);
		assertEquals(1, pokemon.getId());
		assertEquals("Bulbasaur", pokemon.getName());
	}
	
	@Test
	@DisplayName("Create A new Pokemon to the DB and retrieve its PK")
	void test2() {
		Pokemon pokemon = new Pokemon();
		pokemon.setPokedexNumber(10);
		pokemon.setName("bob");
		pokemon.setDescription("a guy name bob");
		pokemon.setHeightInches(10.0);
		pokemon.setWeightPounds(10.0);
		pokemon.setType("fire");
		Pokemon createdPoke = dao.create(pokemon);
		assertNotEquals(0, createdPoke.getId());
	}
	
	@Test
	@DisplayName("Update Pokemon from database")
	void test3() {
		Pokemon pokemon = new Pokemon();
		pokemon.setId(10);
		pokemon.setPokedexNumber(10);
		pokemon.setName("bob");
		pokemon.setDescription("a guy name bob");
		pokemon.setHeightInches(10.0);
		pokemon.setWeightPounds(10.0);
		pokemon.setType("fire");
		boolean updated = dao.update(pokemon);
		assertTrue(updated);
	}
	
	@Test
	@DisplayName("Delete Pokemon from database")
	void test4() {
		boolean deleted = dao.delete(10);
		assertTrue(deleted);
	}

}
