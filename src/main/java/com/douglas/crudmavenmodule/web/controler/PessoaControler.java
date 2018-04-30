
package com.douglas.crudmavenmodule.web.controler;

import com.douglas.crudmavenmodule.domain.service.PessoaService;
import com.douglas.crudmavenmodule.domain.model.Pessoa;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name = "Pessoa")
@SessionScoped
public class PessoaControler {
    
    PessoaService pessoaService = new PessoaService();
    Pessoa pessoa = new Pessoa();
    List<Pessoa> pessoas = new ArrayList<Pessoa>();
    
    public void inicializarTela(){
        
        pessoas = pessoaService.listarTodos();
    }
    
    
    public void salvarPessoa(){
        pessoaService.salvar(pessoa);
    }
    
    public void listarPessoas(){
        pessoas = pessoaService.listarTodos();
    }

    public void excluirPessoa(Pessoa pessoa){
        pessoaService.deletar(pessoa);
    }
    
    /*
        Getters and Setters
    */
    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }

    public List<Pessoa> getPessoas() {
        return pessoas;
    }

    public void setPessoas(List<Pessoa> pessoas) {
        this.pessoas = pessoas;
    }
    
}
