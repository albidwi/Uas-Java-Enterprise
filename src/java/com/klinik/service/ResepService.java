/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.klinik.service;

import com.klinik.bean.Resep;
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
public class ResepService {
        @Autowired
    private SessionFactory sessionFactory;
    
    /**
     * Query untuk ambil semua dosen
     * @return 
     */
    public List<Resep> getReseps() {
        return sessionFactory.getCurrentSession().createCriteria(Resep.class).list();
    }
    
    public void saveResep(Resep resep) throws Exception {
        sessionFactory.getCurrentSession().saveOrUpdate(resep);
    }
    public Resep getResep(Integer id) {
        return (Resep) sessionFactory.getCurrentSession().get(Resep.class, id);
    }
    public Resep updateResep(Resep resep) {
        sessionFactory.getCurrentSession().update(resep);
        return resep;
    }
     public Resep deleteResep(Resep resep) {
        sessionFactory.getCurrentSession().delete(resep);
        return resep;
    }
       public Resep getResep1(String id) {
       return (Resep) sessionFactory.getCurrentSession().createCriteria(Resep.class, id).list();
    }
}
