package ma.ginf.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import ma.ginf.model.Eleve;
import ma.ginf.model.Filiere;
import ma.ginf.repository.FiliereRepository;
import ma.ginf.services.ISERVICE;
import java.util.List;
import ma.ginf.repository.EleveRepository;
import ma.ginf.services.EleveService;
import ma.ginf.services.FiliereService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class EleveAction extends ActionSupport {
    private ISERVICE eleveService = new EleveService();
    private ISERVICE filiereService = new FiliereService();
    private EleveRepository eleveRepo = new EleveRepository();
    private FiliereRepository filiereRepo = new FiliereRepository();
    private List<Filiere> filieres  ;
    private List<Eleve> eleves;
    private Eleve eleve;
    private String code;
    private String codeelvfil;
    public Integer nbnonafct;

    //===============================================================//
    
    @Action(value="listerEleves",results={ @Result(name=SUCCESS,location="/eleves.jsp")})
    public String Lister() throws Exception
    {   setFilieres(filiereRepo.findAll());
            List<Eleve> els=eleveService.nonFil();
            nbnonafct=els.size();
        setEleves(eleveService.listAll());
        return SUCCESS;
    }
    
    @Action(value="ajouterEleve",results={ @Result(name=SUCCESS,location="/eleves.jsp",type = "redirectAction", params = { "namespace", "/", "actionName", "listerEleves" })})
    public String Ajouter() throws Exception
    {
        Filiere filiere =(Filiere) filiereRepo.findByCne(codeelvfil);
        eleve.setRefFil(filiere);
        eleveService.add(eleve);
        return SUCCESS;
    }
    
    @Action(value="updateEleve",results={ @Result(name=SUCCESS,location="/eleves.jsp",type = "redirectAction", params = { "namespace", "/", "actionName", "listerEleves" })}) 
    public String Update() throws Exception
    {
        Filiere filiere =(Filiere) filiereRepo.findByCne(codeelvfil);
        eleve.setRefFil(filiere);
        eleveService.update(eleve);
        return SUCCESS;
    }
    
    @Action(value="deleteEleve",results={ @Result(name=SUCCESS,location="/eleves.jsp",type = "redirectAction", params = { "namespace", "/", "actionName", "listerEleves" })})
    public String Delete() throws Exception
    {
        eleveService.delete(code);
        return SUCCESS;
    }
    public String index()
    {
        return SUCCESS;
    }
    
    @Action(value="listerElevesDeFiliere",results={ @Result(name=SUCCESS,location="/elevesFromFil.jsp")}) 
    public String listFromFil()
    {
        eleves = eleveService.listFromFiliere(code);
        if(eleves!=null)
            return SUCCESS;
        return ERROR ;
    }
    
    @Action(value="nonaffect",results={ @Result(name=SUCCESS,location="/eleves.jsp")})
    public String ListNonAff() throws Exception
    {   setFilieres(filiereRepo.findAll());
            List<Eleve> els=eleveService.nonFil();
            nbnonafct=els.size();
        setEleves(eleveService.nonFil());
        return SUCCESS;
    }
    
    //===================================================//
    
    public ISERVICE getEleveService() {
        return eleveService;
    }

    public void setEleveService(ISERVICE eleveService) {
        this.eleveService = eleveService;
    }

    public List<Eleve> getEleves() {
        return eleves;
    }

    public void setEleves(List<Eleve> eleves) {
        this.eleves = eleves;
    }

    public Eleve getEleve() {
        return eleve;
    }
    private  int i=0;

    public void setEleve(Eleve eleve) {
        this.eleve = eleve;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public FiliereRepository getFiliereRepo() {
        return filiereRepo;
    }

    public void setFiliereRepo(FiliereRepository filiereRepo) {
        this.filiereRepo = filiereRepo;
    }

    public List<Filiere> getFilieres() {
        return filieres;
    }

    public void setFilieres(List<Filiere> filieres) {
        this.filieres = filieres;
    }

    public EleveRepository getEleveRepo() {
        return eleveRepo;
    }

    public void setEleveRepo(EleveRepository eleveRepo) {
        this.eleveRepo = eleveRepo;
    }

    public String getCodeelvfil() {
        return codeelvfil;
    }

    public void setCodeelvfil(String codeelvfil) {
        this.codeelvfil = codeelvfil;
    }
}