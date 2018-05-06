package com.chen.test.dao;

import com.chen.test.beans.TestUser;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository("TestDao")
public class TestDaoImpl implements TestDao {
    @Resource(name = "sessionFactory")
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public String testQueryCardId(String id) {
        Session session = sessionFactory.getCurrentSession();
        TestUser tu = (TestUser) session.get(TestUser.class, id);
        return tu.getZkbh();
    }

    @Override
    public String testQueryByHQL(String id) {
        Session session = sessionFactory.getCurrentSession();
        String HQL = "from TestUser where id=?";
        Query query = session.createQuery(HQL);
        query.setString(0, id);
        TestUser tu = (TestUser) query.uniqueResult();
        return tu.getZkbh();
    }
}