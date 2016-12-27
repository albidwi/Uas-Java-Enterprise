/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.klinik.service;

import com.klinik.bean.Dokter;
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
public class DokterService {
       @Autowired
    private SessionFactory sessionFactory;
    
    /**
     * Query untuk ambil semua dosen
     * @return 
     */
    public List<Dokter> getDokters() {
        return sessionFactory.getCurrentSession().createCriteria(Dokter.class).list();
    }
    
    public void saveDokter(Dokter dokter) throws Exception {
        sessionFactory.getCurrentSession().saveOrUpdate(dokter);
    }
    public Dokter getDokter(String id) {
        return (Dokter) sessionFactory.getCurrentSession().get(Dokter.class, id);
    }
    public Dokter updateDokter(Dokter dokter) {
        sessionFactory.getCurrentSession().update(dokter);
        return dokter;
    }
     public Dokter deleteDokter(Dokter dokter) {
        sessionFactory.getCurrentSession().delete(dokter);
        return dokter;
    }
}
