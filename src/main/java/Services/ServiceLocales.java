
package Services;

import java.util.List;
import modelo.dao.LocalesDAO;
import modelo.dto.Locales;


public class ServiceLocales {
    
    
    private LocalesDAO localesDao;
        
    public ServiceLocales() {
        this.localesDao = new LocalesDAO();
    }
    
    public List<Locales> FindAll(){
        return localesDao.getList();
    }
    
}
