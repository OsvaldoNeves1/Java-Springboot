package br.edu.infnet.apiusers.service;

//import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.apiusers.model.User;

@FeignClient(url = "http://jsonplaceholder.typicode.com/", name = "UserService2")
public interface UserService2 {
	@GetMapping("users/{id}")
    User userSearch(@PathVariable("id") int intId);
}
