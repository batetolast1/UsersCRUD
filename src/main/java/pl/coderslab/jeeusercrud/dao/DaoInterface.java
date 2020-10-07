package pl.coderslab.jeeusercrud.dao;

import pl.coderslab.jeeusercrud.entity.Model;

import java.util.List;

public interface DaoInterface {

    void save(Model object);

    List<Model> loadAll();

    Model loadById(long id);

    void delete(Model object);
}
