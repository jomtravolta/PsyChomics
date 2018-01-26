package br.com.ifpe.psyChomics.controller;

import java.util.Calendar;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.ifpe.psyChomics.model.Produto;
import br.com.ifpe.psyChomics.model.ProdutoDao;
import br.com.ifpe.psyChomics.util.Util;


@Controller
public class ProdutoController {

	@RequestMapping("/exibirCadastroProduto")
	public String exibirCadastroProduto() {
		return "psyChomics/produto/cadastrarProduto";
	}
	
	@RequestMapping("cadastroProduto")
	public String cadastroProduto(Produto produto, @RequestParam("file") MultipartFile imagem, Model model) {
		if (Util.fazerUploadImagem(imagem)) {
			produto.setImagem(Calendar.getInstance().getTime() + " - " + imagem.getOriginalFilename());
		}		
		ProdutoDao dao = new ProdutoDao();
		dao.cadastar(produto);
		model.addAttribute("mensagem", "Produto Inclu�do com Sucesso");
		return "psyChomics/produto/cadastrarProduto";
	}
	
	@RequestMapping("/exibirlistarProduto")
	public String exibirlistarProduto() {
		return "psyChomics/produto/listarProduto";
	}

    @RequestMapping("removerProduto")
    public String removerProduto(Produto produto, Model model) {
    	ProdutoDao dao = new ProdutoDao();
    	dao.remover(produto);
    	model.addAttribute("msg", "Prodtuo removido com sucesso!");
    	
    	 return "psyChomics/produto/listarProduto";
    }
}
