package br.com.ifpe.psyChomics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.psyChomics.model.Usuario;
import br.com.ifpe.psyChomics.model.UsuarioDao;

@Controller
public class UsuarioController {

	@RequestMapping("/exibirCadastro")
	public String exibirCadastrarUsuario() {
		return "psyChomics/cadastrarUsuario";
	}

	@RequestMapping("cadastro")
	public String cadastrarUsuario(Usuario usuario) {
		UsuarioDao dao = new UsuarioDao();
		dao.cadastar(usuario);
		return "psyChomics/sucesso";
	}
	
	@RequestMapping("/exibirlistarUsuario")
	public String exibirlistarUsuario(Usuario usuario) {
		return "psyChomics/listarUsuario";
	}

}
