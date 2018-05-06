package com.chen.test.beans;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name="phupload_success")
public class TestUser implements Serializable {
    @Id
    @GeneratedValue
    private String Id;

    @Column(name="zkbh")
    private String zkbh;

    @Column(name = "createdate")
    private String date;

    public String getId() {
        return Id;
    }
    public void setId(String id) {
        Id = id;
    }

    public String getZkbh() {
        return zkbh;
    }

    public void setZkbh(String zkbh) {
        this.zkbh = zkbh;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof TestUser)) return false;
        TestUser testUser = (TestUser) o;
        return Objects.equals(Id, testUser.Id) &&
                Objects.equals(zkbh, testUser.zkbh) &&
                Objects.equals(date, testUser.date);
    }

    @Override
    public int hashCode() {

        return Objects.hash(Id, zkbh, date);
    }
}
