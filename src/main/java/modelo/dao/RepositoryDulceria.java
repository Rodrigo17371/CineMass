
package modelo.dao;

import java.util.List;

public interface RepositoryDulceria<T> {
    List<T> FindAll();
    T FindById(long id);   
}
