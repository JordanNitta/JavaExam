package com.jordan.joybundler.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.jordan.joybundler.models.Person;
import com.jordan.joybundler.repositories.PersonRepository;


@Service
public class PersonService {
private final PersonRepository personRepository;
	
	public PersonService(PersonRepository personRepository) {
		this.personRepository= personRepository;
	}
	
	public List<Person> allPerson(){
		return personRepository.findAll();
	}
	
	public Person create(Person person) {
		return personRepository.save(person);
	}
	
	public Person getOne(Long id) {
	    Optional<Person> person = personRepository.findById(id);
	    return person.isPresent() ? person.get() : null;
	}
	
	public void updateBook(Person person) {
		personRepository.save(person);
	}
	
	public void delete(Long id) {
		personRepository.deleteById(id);
	}
}
