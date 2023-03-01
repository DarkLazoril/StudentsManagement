/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ma.ginf.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ma.ginf.model.Eleve;
import ma.ginf.model.Filiere;
import java.util.List;

import ma.ginf.repository.EleveRepository;
import ma.ginf.repository.FiliereRepository;

/**
 *
 * @author hp
 */

@Service
public class EleveService implements ISERVICE<Eleve> {

    @Autowired
    private EleveRepository eleveRepository;
    @Autowired
    private FiliereRepository filiereRepository;

    public EleveRepository getEleveRepository() {
        return eleveRepository;
    }

    public void setEleveRepository(EleveRepository eleveRepository) {
        this.eleveRepository = eleveRepository;
    }

    public FiliereRepository getFiliereRepository() {
        return filiereRepository;
    }

    public void setFiliereRepository(FiliereRepository filiereRepository) {
        this.filiereRepository = filiereRepository;
    }

    @Override
    public void add(Eleve eleve) {
        eleveRepository.save(eleve);
    }
    @Override
    public void update(Eleve eleve) {
        eleveRepository.update(eleve);
    }
    @Override
    public void delete(String cne) {
        eleveRepository.delete(cne);
    }    
    @Override
    public List<Eleve> listAll() {
        return eleveRepository.findAll();
    }
    @Override
    public Eleve listByCne(String cne) {
        return eleveRepository.findByCne(cne);
    }
    
    @Override
    public List<Eleve> listFromFiliere(String cne) {
        return eleveRepository.findByFiliere(cne);
    }
    
    @Override
    public List<Eleve> nonFil() {
        return eleveRepository.nonFil();
    }

    @Override
    public int countEnrolledStudents(String string) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}