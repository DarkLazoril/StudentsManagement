/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ma.ginf.repository;

import java.util.List;
import ma.ginf.model.Filiere;

/**
 *
 * @author hp
 * @param <T>
 */

public interface IREPOSITORY<T> {
    
    public T findByCne(String cne);
    public List<T> findByFiliere(String cne);
    public List<T> findAll();
    public List<T> nonFil();
    public void save(T c);   
    public void update(T c);
    public void delete(String cne);

}