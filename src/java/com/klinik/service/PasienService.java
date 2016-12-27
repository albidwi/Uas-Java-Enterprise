/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.klinik.service;

import com.klinik.bean.Pasien;
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
public class PasienService {
       @Autowired
    private SessionFactory sessionFactory;
    
    /**
     * Query untuk ambil semua dosen
     * @return 
     */
    public List<Pasien> getPasiens() {
        return sessionFactory.getCurrentSession().createCriteria(Pasien.class).list();
    }
    
    public void savePasien(Pasien pasien) throws Exception {
        sessionFactory.getCurrentSession().saveOrUpdate(pasien);
    }
    public Pasien getPasien(String id) {
        return (Pasien) sessionFactory.getCurrentSession().get(Pasien.class, id);
    }
    public Pasien updatePasien(Pasien pasien) {
        sessionFactory.getCurrentSession().update(pasien);
        return pasien;
    }
     public Pasien deletePasien(Pasien pasien) {
        sessionFactory.getCurrentSession().delete(pasien);
        return pasien;
    }  
}
