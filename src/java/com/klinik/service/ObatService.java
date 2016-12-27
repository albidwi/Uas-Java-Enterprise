/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.klinik.service;

import com.klinik.bean.Obat;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Service
@Transactional
public class ObatService {
    @Autowired
    private SessionFactory sessionFactory;
    
    /**
     * Query untuk ambil semua dosen
     * @return 
     */
    public List<Obat> getObats() {
        return sessionFactory.getCurrentSession().createCriteria(Obat.class).list();
    }
    
    public void saveObat(Obat obat) throws Exception {
        sessionFactory.getCurrentSession().saveOrUpdate(obat);
    }
    public Obat getObat(String id) {
        return (Obat) sessionFactory.getCurrentSession().get(Obat.class, id);
    }
    public Obat updateObat(Obat obat) {
        sessionFactory.getCurrentSession().update(obat);
        return obat;
    }
     public Obat deleteObat(Obat obat) {
        sessionFactory.getCurrentSession().delete(obat);
        return obat;
    } 
}
