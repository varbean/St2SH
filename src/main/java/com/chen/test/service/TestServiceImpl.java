package com.chen.test.service;

import com.chen.test.dao.TestDao;
import com.chen.test.dao.TestDaoImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service("TestService")
public class TestServiceImpl implements TestService {

    @Resource(name = "TestDao")
    private TestDao tdi;

    @Transactional
    @Override
    public String cx_cwdh(String id) {
//        return tdi.testQueryByHQL();
        return tdi.testQueryCardId(id);
    }
}
