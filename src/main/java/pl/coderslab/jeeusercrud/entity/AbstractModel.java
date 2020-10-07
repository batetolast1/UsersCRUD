package pl.coderslab.jeeusercrud.entity;

public class AbstractModel implements Model {

    private Long id;

    public AbstractModel(Long id) {
        this.id = id;
    }

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(long id) {
        this.id = id;
    }
}
