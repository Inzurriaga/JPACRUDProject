package com.skilldistillery.pokemon.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pokemon {
	
	@Id
	private int id;
	
	@Column(name="pokedex_number")
	private Integer pokedexNumber;
	
	private String name;
	
	private String description;
	
	@Column(name="height_inches")
	private Double heightInches;
	
	@Column(name="weight_pounds")
	private Double weightPounds;
	
	@Column(name="image_url")
	private String imageUrl;
	
	private String type;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getPokedexNumber() {
		return pokedexNumber;
	}

	public void setPokedexNumber(Integer pokedexNumber) {
		this.pokedexNumber = pokedexNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getHeightInches() {
		return heightInches;
	}

	public void setHeightInches(Double heightInches) {
		this.heightInches = heightInches;
	}

	public Double getWeightPounds() {
		return weightPounds;
	}

	public void setWeightPounds(Double weightPounds) {
		this.weightPounds = weightPounds;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Pokemon [id=" + id + ", pokedexNumber=" + pokedexNumber + ", name=" + name + ", description="
				+ description + ", heightInches=" + heightInches + ", weightPounds=" + weightPounds + ", imageUrl="
				+ imageUrl + ", type=" + type + "]";
	}
	
	
}
