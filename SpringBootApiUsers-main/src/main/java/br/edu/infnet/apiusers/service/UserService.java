package br.edu.infnet.apiusers.service;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;

import br.edu.infnet.apiusers.model.User;
//import br.edu.infnet.apiusers.model.Users;

@FeignClient(url = "http://jsonplaceholder.typicode.com/", name = "UserService")
public interface UserService {
	@GetMapping("users")
    List<User> pegarUsuarios();



	
	
}
