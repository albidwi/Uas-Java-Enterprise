/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.klinik.controller;

import com.klinik.bean.Dokter;
import com.klinik.bean.Obat;
import com.klinik.bean.Pasien;
import com.klinik.bean.Resep;
import com.klinik.service.DokterService;
import com.klinik.service.ObatService;
import com.klinik.service.PasienService;
import com.klinik.service.ResepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
    
    @Autowired
    private DokterService dokterService;
    @Autowired
    private ObatService obatService;
     @Autowired
    private PasienService pasienService;
      @Autowired
    private ResepService resepService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("dokters", dokterService.getDokters());
        return "index";
    }

    /**
     *  jika berhasil save, maka redirect ke halaman utama
     *  parameter dosen berisi field yang ada pada class Dosen, yaitu iddosen dan namadosen yang dikirim dari jsp
     * 
     * @param dosen
     * @return
     * @throws Exception 
     */
    @RequestMapping(value = "/simpan-dokter", method = RequestMethod.POST)
    public String simpanDokter(Dokter dokter) throws Exception {
        dokterService.saveDokter(dokter);
        return "redirect:/";
    }
    
     @RequestMapping(value = "edit-dokter/{id}",method = RequestMethod.GET)
    public String edit(Model model,@PathVariable("id") String id){
        Dokter dokter = dokterService.getDokter(id);
        model.addAttribute("dokter", dokter);
        return "edit-dokter";
    }
    
     @RequestMapping(value = "edit-dokter",method = RequestMethod.POST)
    public String editing(@ModelAttribute("dokter") Dokter dokter){
        dokterService.updateDokter(dokter);
        return "redirect:/";
    }
    @RequestMapping(value = "delete-dokter/{id}",method = RequestMethod.GET)
    public String deleting(@PathVariable("id") String id){
       Dokter dokter = dokterService.getDokter(id);
        dokterService.deleteDokter(dokter);
        return "redirect:/";
    }
    
    @RequestMapping(value = "/pasien", method = RequestMethod.GET)
    public String pasien(ModelMap modelMap) {
        modelMap.put("pasiens", pasienService.getPasiens());
        return "pasien";
    }
      @RequestMapping(value = "/simpan-pasien", method = RequestMethod.POST)
    public String simpanPasien(Pasien pasien) throws Exception {
        pasienService.savePasien(pasien);
        return "redirect:/pasien";
    }
    @RequestMapping(value = "edit-pasien/{id}",method = RequestMethod.GET)
    public String editpasien(Model model,@PathVariable("id") String id){
        Pasien pasien =  pasienService.getPasien(id);
        model.addAttribute("pasien", pasien);
        return "editpasien";
    }
    
     @RequestMapping(value = "edit-pasien",method = RequestMethod.POST)
    public String editingpasien(@ModelAttribute("pasien") Pasien pasien){
        pasienService.updatePasien(pasien);
        return "redirect:/pasien";
    }
    @RequestMapping(value = "delete-pasien/{id}",method = RequestMethod.GET)
    public String deletingpasien(@PathVariable("id") String id){
       Pasien pasien =  pasienService.getPasien(id);
        pasienService.deletePasien(pasien);
        return "redirect:/pasien";
    }
      @RequestMapping(value = "/obat", method = RequestMethod.GET)
    public String obat(ModelMap modelMap) {
        modelMap.put("obats", obatService.getObats());
        return "obat";
    }
      @RequestMapping(value = "/simpan-obat", method = RequestMethod.POST)
    public String simpanObat(Obat obat) throws Exception {
        obatService.saveObat(obat);
        return "redirect:/obat";
    }
    @RequestMapping(value = "edit-obat/{id}",method = RequestMethod.GET)
    public String editobat(Model model,@PathVariable("id") String id){
        Obat obat =  obatService.getObat(id);
        model.addAttribute("obat", obat);
        return "editobat";
    }
    
     @RequestMapping(value = "edit-obat",method = RequestMethod.POST)
    public String editingobat(@ModelAttribute("obat") Obat obat){
        obatService.updateObat(obat);
        return "redirect:/obat";
    }
    @RequestMapping(value = "delete-obat/{id}",method = RequestMethod.GET)
    public String deletingobat(@PathVariable("id") String id){
      Obat obat =  obatService.getObat(id);
        obatService.deleteObat(obat);
        return "redirect:/obat";
    }
      @RequestMapping(value = "/resep", method = RequestMethod.GET)
    public String resep(ModelMap modelMap) {
        modelMap.put("reseps", resepService.getReseps());
        return "resep";
    }
      @RequestMapping(value = "/simpan-resep", method = RequestMethod.POST)
    public String simpanResep(Resep resep) throws Exception {
        resepService.saveResep(resep);
        return "redirect:/resep";
    }
    @RequestMapping(value = "edit-resep/{id}",method = RequestMethod.GET)
    public String editresep(Model model,@PathVariable("id") Integer id){
        Resep resep =  resepService.getResep(id);
        model.addAttribute("resep", resep);
        return "editresep";
    }
    
     @RequestMapping(value = "edit-resep",method = RequestMethod.POST)
    public String editingresep(@ModelAttribute("resep") Resep resep){
        resepService.updateResep(resep);
        return "redirect:/resep";
    }
    @RequestMapping(value = "delete-resep/{id}",method = RequestMethod.GET)
    public String deletingresep(@PathVariable("id") Integer id){
      Resep resep =  resepService.getResep(id);
        resepService.deleteResep(resep);
        return "redirect:/obat";
    }
  
}

