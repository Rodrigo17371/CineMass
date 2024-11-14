
package Services;

import java.util.List;
import modelo.dao.DulceriaDAO;
import modelo.dto.itemDulceria;

public class ServiceDulceria{
    
    private DulceriaDAO dulceriaDao;

    public ServiceDulceria() {
        this.dulceriaDao = new DulceriaDAO();
    }
    
    
    
    public List<itemDulceria> FindAll(){
        return dulceriaDao.FindAll();
    }
}
