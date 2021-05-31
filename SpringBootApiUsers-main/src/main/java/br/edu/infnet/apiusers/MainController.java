package br.edu.infnet.apiusers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.infnet.apiusers.model.PalavraChave;
import br.edu.infnet.apiusers.model.User;
import br.edu.infnet.apiusers.service.UserService;
import br.edu.infnet.apiusers.service.UserService2;


@EnableFeignClients
@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserService2 userService2;

	@RequestMapping("/")
    public String home(Model model) {
        System.out.println("Going home...");
		List<User> user = userService.pegarUsuarios();
		//System.out.println(user.get(0).getEmail());
		model.addAttribute("users" , user);
		PalavraChave id = new PalavraChave();
		model.addAttribute("id" , id);
        return "index";
    }

	@PostMapping("/result")
    public String submitForm(@ModelAttribute("id") PalavraChave id, Model model) {
		int intId = Integer.parseInt(id.getPalavra());//fazer conversao
        User u = userService2.userSearch(intId);
        model.addAttribute("user", u);
        return "result";
    }
	
}
