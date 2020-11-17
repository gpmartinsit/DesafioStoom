/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoom.desafio.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.stoom.desafio.model.Endereco;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.stoom.desafio.repository.EnderecoRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author guilherme
 */
@Controller
@RequestMapping("/")
public class DesafioController {

    @Autowired
    private EnderecoRepository EnderecoRepository;

    @RequestMapping("/")
    public String index(Model model) {

        List<Endereco> listEndereco = EnderecoRepository.findAll();

        model.addAttribute("listEndereco", listEndereco);
        return "index";
    }

    @RequestMapping("cadastrar")
    public synchronized String cad(Endereco cadastro, RedirectAttributes redirectAttributes) {

        if ("".equals(cadastro.getStreetName())
                || "".equals(cadastro.getCountry())
                || "".equals(cadastro.getNeighbourhood())
                || "".equals(cadastro.getCity())
                || "".equals(cadastro.getState())
                || "".equals(cadastro.getZipcode())
                || cadastro.getNumber() == 0) {

            redirectAttributes.addFlashAttribute("mensagem", "Preencha todos os campos obrigatórios");
            redirectAttributes.addFlashAttribute("mensagemTipo", "danger");

            return "redirect:/";

        }

        EnderecoRepository.save(cadastro);

        redirectAttributes.addFlashAttribute("mensagem", "Cadastrado com Sucesso");
        redirectAttributes.addFlashAttribute("mensagemTipo", "success");

        return "redirect:/";
    }

    @RequestMapping("editar")
    public synchronized String edt(Endereco editar, RedirectAttributes redirectAttributes) {

        EnderecoRepository.save(editar);
        redirectAttributes.addFlashAttribute("mensagem", "Editado com Sucesso");
        redirectAttributes.addFlashAttribute("mensagemTipo", "warning");
        return "redirect:/";
    }

    @RequestMapping("excluir")
    public synchronized String exc(String id, RedirectAttributes redirectAttributes) {

        EnderecoRepository.deleteById(Long.parseLong(id));

        redirectAttributes.addFlashAttribute("mensagem", "Excluído com Sucesso");
        redirectAttributes.addFlashAttribute("mensagemTipo", "warning");

        return "redirect:/";
    }

    @ResponseBody
    @RequestMapping("consulta")
    public String consulta(String id) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
         List<Endereco> lista = new ArrayList<>();
         
         Optional<Endereco> enderecoOptional = EnderecoRepository.findById(Long.parseLong(id));
         Endereco endereco = enderecoOptional.get();
         lista.add(endereco);
        
        return mapper.writeValueAsString(endereco);
    }

}
