/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoom.desafio.repository;

import com.stoom.desafio.model.Endereco;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author guilherme
 */
@Repository
public interface EnderecoRepository extends JpaRepository<Endereco, Long>{

    
}
