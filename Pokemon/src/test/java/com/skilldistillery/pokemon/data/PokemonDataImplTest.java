package com.skilldistillery.pokemon.data;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

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
	void test() {
		fail("Not yet implemented");
	}

}
