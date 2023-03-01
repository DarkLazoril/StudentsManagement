/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ma.ginf.repository;

import java.util.List;
import ma.ginf.model.Eleve;
import ma.ginf.model.Filiere;
import static ma.ginf.repository.EleveRepository.session;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

/**
 *
 * @author hp
 */
@Repository
public class FiliereRepository implements IREPOSITORY<Filiere>{

    static Session session;
    static Transaction transaction = null;

    public FiliereRepository() {
        session = HibernateUtil.getSessionFactory().openSession();
    }
    @Override
    public Filiere findByCne(String cne) {
        try{
            Filiere filiere = (Filiere) session.get(Filiere.class, cne);
            return filiere;
        }
        catch(HibernateException e)
        {
            e.printStackTrace();
            System.out.println("Error at findByCne(Filiere) " + e.getMessage());
        }
        return null;   
    }

    @Override
    public List<Filiere> findAll() {
        List<Filiere> filieres = null;
    try {
        transaction = session.beginTransaction();
        filieres = session.createQuery("FROM Filiere").list();
        transaction.commit();
    } catch (HibernateException e) {
        if (transaction != null) {
            transaction.rollback();
        }
        e.printStackTrace();
    }
    return filieres;
    }
    
    @Override
    public void save(Filiere filiere) {
    transaction = session.beginTransaction();
    try {
    session.save(filiere);
    transaction.commit();} 
    catch (HibernateException e) {
    transaction.rollback();
    e.printStackTrace();}
    }

    @Override
    public void update(Filiere filiere) {
    transaction = session.beginTransaction();
    try {
    session.update(filiere);
    transaction.commit();} 
    catch (HibernateException e) {
    transaction.rollback();
    e.printStackTrace();}
    }

    @Override
    public void delete(String cne) {
    Filiere filiere = (Filiere) session.get(Filiere.class, cne);
    transaction = session.beginTransaction();
    try {
    for (Eleve eleve : filiere.getEleves()) {
      eleve.setRef_Fil(null);
      session.update(eleve);
    }
    session.delete(filiere);
    transaction.commit();
  } catch (HibernateException e) {
    transaction.rollback();
    e.printStackTrace();
  }
}
    
    @Override
    public List<Filiere> findByFiliere(String code) {
        return null;
    }
    @Override
    public List<Filiere> nonFil() {
        return null;
    }
   
}
