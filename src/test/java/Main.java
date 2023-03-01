
import java.util.List;
import ma.ginf.actions.EleveAction;
import ma.ginf.config.AppConfig;
import ma.ginf.model.Eleve;
import ma.ginf.model.Filiere;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import ma.ginf.services.EleveService;
import ma.ginf.services.FiliereService;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hp
 */
public class Main {
    
    public static void main(String[] args)
    {
        EleveAction ea = new EleveAction();
        ApplicationContext c = new AnnotationConfigApplicationContext(AppConfig.class);
        FiliereService fl = c.getBean(FiliereService.class);
        EleveService el = c.getBean(EleveService.class);
        
        Filiere filiere = new Filiere("700","test");
        //fl.add(filiere);
        Filiere filiere2 = new Filiere("700","TOT");
        fl.update(filiere2);
        //Eleve eleve1 = new Eleve("OO","TEST","TEST",17.5,null);
        //el.add(eleve1);
        //el.add(new Eleve("B445","TEST","TEST",17.5,filiere));
        //el.dropStudent(eleve1);
//        Eleve e = el.listByCne("B10");
//        System.out.println("ELEVE :"+e.getCne()+" "+e.getNom()+" "
//                    +e.getPrenom()+" "+e.getMoyenne()+" "+e.getRefFil());
//        System.out.println("*****");
        //List<Eleve> i = fl.listEnrolledStudents("600");
       // List<Eleve> i = el.nonFil();
       //int a = fl.countEnrolledStudents("700");
        //System.out.println("Le nombre des élèves inscrit est " + a);
        //for(Eleve eleve : i){
        //    System.out.println("ELEVE :"+eleve.getCne()+" "+eleve.getNom()+" "
        //            +eleve.getPrenom()+" "+eleve.getMoyenne()+" "+eleve.getRefFil());
        //}
    }
}
