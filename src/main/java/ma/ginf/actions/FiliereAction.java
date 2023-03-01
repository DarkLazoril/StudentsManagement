package ma.ginf.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import ma.ginf.model.Filiere;
import ma.ginf.repository.FiliereRepository;
import ma.ginf.services.FiliereService;
import ma.ginf.services.ISERVICE;

import java.util.List;
import ma.ginf.model.Eleve;
import ma.ginf.services.EleveService;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

public class FiliereAction extends ActionSupport {
    private FiliereRepository filiereRepo = new FiliereRepository();
    private ISERVICE eleveService = new EleveService();
    private ISERVICE<Filiere> filiereService;
    private List<Filiere> filieres;
    private Filiere filiere;
    private String code;
    private int count;
    
    @Action(value="listerFilieres",results={@Result(name=SUCCESS,location="/filieres.jsp")})
    public String Lister() throws Exception
    {
       
        setFilieres(filiereService.listAll());
        return SUCCESS;
    }
    
    @Action(value="ajouterFiliere",results={@Result(name=SUCCESS,location="/filieres.jsp",type = "redirectAction", params = { "namespace", "/", "actionName", "listerFilieres" })})
    public String Ajouter() throws Exception
    {
        filiereService.add(filiere);
        return SUCCESS;
    }
    
    @Action(value="updateFiliere",results={@Result(name=SUCCESS,location="/filieres.jsp",type = "redirectAction", params = { "namespace", "/", "actionName", "listerFilieres" })})
    public String Update() throws Exception
    {
        filiereService.update(filiere);
        return SUCCESS;
    }
    
    @Action(value="deleteFiliere",results={@Result(name=SUCCESS,location="/filieres.jsp",type = "redirectAction", params = { "namespace", "/", "actionName", "listerFilieres" })})
    public String Delete() throws Exception
    {
        filiereService.delete(code);
        return SUCCESS;
    }
    
    
    
    public String newFiliere()
    {
        return SUCCESS;
    }
    public String index()
    {
        return SUCCESS;
    }


    // ======================================================//
    public ISERVICE<Filiere> getFiliereService() {
        return filiereService;
    }

    public void setFiliereService(ISERVICE<Filiere> filiereService) {
        this.filiereService = filiereService;
    }

    public List<Filiere> getFilieres() {
        return filieres;
    }

    public void setFilieres(List<Filiere> filieres) {
        this.filieres = filieres;
    }

    public Filiere getFiliere() {
        return filiere;
    }

    public void setFiliere(Filiere filiere) {
        this.filiere = filiere;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
    // ========================= // 

    public FiliereRepository getFiliereRepo() {
        return filiereRepo;
    }

    public void setFiliereRepo(FiliereRepository filiereRepo) {
        this.filiereRepo = filiereRepo;
    }

    public ISERVICE getEleveService() {
        return eleveService;
    }

    public void setEleveService(ISERVICE eleveService) {
        this.eleveService = eleveService;
    }
    
}
