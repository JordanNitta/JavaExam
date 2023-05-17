package com.jordan.joybundler.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.jordan.joybundler.models.Person;


public interface PersonRepository extends CrudRepository<Person, Long>{
	List<Person>findAll();
}
