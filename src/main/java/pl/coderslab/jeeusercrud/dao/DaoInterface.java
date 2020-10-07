package pl.coderslab.jeeusercrud.dao;

public interface DaoInterface {

    void save(Model object);

    List<Model> loadAll();

    Model loadById(long id);

    void delete(Model object);
}
