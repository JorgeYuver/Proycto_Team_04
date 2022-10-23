/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.Controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 *
 * @author Jhoned
 */
@RestController
public class HolaController {
    
    //@GetMapping("/")
    public String endpoint(){
        return "Hola Grupo G06";
    }
    
}