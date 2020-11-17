/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stoom.desafio.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author guilherme
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Endereco implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotNull
    private String streetName;
    
    @NotNull
    private int number;
    
    private String complement;
    
    @NotNull
    private String neighbourhood;
    
    @NotNull
    private String city;
    
    @NotNull
    private String state;
    
    @NotNull
    private String country;
    
    @NotNull
    private String zipcode;
    
    
    
}
