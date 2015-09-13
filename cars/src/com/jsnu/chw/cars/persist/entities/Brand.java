package com.jsnu.chw.cars.persist.entities;

import javax.persistence.*;

/**
 * Created by Obvious on 2015/9/9.
 */
@Table(name = "BRAND")
@Entity
public class Brand {

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    private Integer id;
    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
