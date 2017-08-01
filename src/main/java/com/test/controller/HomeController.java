package com.test.controller;

/**
 * Created by michelhayman on 7/21/17.
 */

import com.test.models.ItemsEntity;
import com.test.models.UsersEntity;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.hibernate.*;

import java.util.ArrayList;


@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld(String firstName) {

        return new
                ModelAndView("index", "hello", firstName);

    }

    @RequestMapping("/registration")
    // the String method returns the jsp page that we want to show
    public String registration() {

        return "registration";
    }

    @RequestMapping("/items")
    // the String method returns the jsp page that we want to show
    public String item() {

        return "items";
    }

    @RequestMapping("/registerUser")
    public String formSuccess(Model model,
                              @RequestParam("firstName") String firstName,
                              @RequestParam("lastName") String lastName,
                              @RequestParam("email") String email,
                              @RequestParam("phoneNumber") String phoneNumber,
                              @RequestParam("password") String password,
                              @RequestParam("gender") String gender,
                              @RequestParam("mailingList") String mailingList,
                              @RequestParam("preferences") String preferences) {
        Configuration cfg = new Configuration( ).configure("hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory( );
        Session session = sessionFact.openSession( );
        Transaction tx = session.beginTransaction( );
        UsersEntity newUser = new UsersEntity( );
        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setEmail(email);
        newUser.setPhoneNumber(phoneNumber);
        newUser.setPassword(password);
        newUser.setGender(gender);
        newUser.setMailingList(mailingList);
        newUser.setPreferences(preferences);
        session.save(newUser);
        tx.commit( );
        session.close( );
        model.addAttribute("newStuff", newUser);
        return "summary";
    }

    @RequestMapping("/ListItems")
    public ModelAndView listItems() {
        ArrayList<ItemsEntity>itemList = getAllitems( );


        return new
                ModelAndView("items", "cList", itemList);

    }
    // this method was extracted to be used again
    // this is a regular method not a controller method

    private ArrayList<ItemsEntity> getAllitems() {
        // allow app to specify properties and mapping documents
        // to use when creating the SessionFactory

        Configuration cfg = new Configuration( ).configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory( );

        Session selectitems = sessionFact.openSession( );

        selectitems.beginTransaction( );

        // criteria is used to create the query
        Criteria c = selectitems.createCriteria(ItemsEntity.class);

        // results are returned
        return (ArrayList<ItemsEntity>) c.list( );
    }

    @RequestMapping("/AdminPage")
    public ModelAndView AddItems() {
        ArrayList<ItemsEntity> itemList = getAllitems( );


        return new
                ModelAndView("ItemAdminPage", "cList", itemList);

    }

    @RequestMapping("/addNewItem")
    public String addnewItem(@RequestParam("name") String name,
                             @RequestParam("description") String description,
                             @RequestParam("quantity") String quantity,
                             @RequestParam("price") String price, Model model) {

        Configuration cfg = new Configuration( ).configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory( ); // design pattern

        Session session = sessionFact.openSession( );

        Transaction tx = session.beginTransaction( );

        ItemsEntity newItem = new ItemsEntity( );

        newItem.setName(name);
        newItem.setDescription(description);
        newItem.setQuantity(quantity);
        newItem.setPrice(price);

        session.save(newItem);
        tx.commit( );
        session.close( );

        ArrayList<ItemsEntity> itemList = getAllitems( );
        model.addAttribute("cList", itemList);

        return "items";
    }

    @RequestMapping("/additem")
    // the String method returns the jsp page that we want to show
    public String additem() {

        return "additem";
    }

    @RequestMapping("/delete")
    public ModelAndView deleteItem(@RequestParam("id") int id) {

        //temp object will store info for the object we want to delete
        ItemsEntity temp = new ItemsEntity( );

        temp.setItemid(id);

        Configuration cfg = new Configuration( ).configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory( ); // design pattern

        Session items = sessionFact.openSession( );

        items.beginTransaction( );

        items.delete(temp); // delete object from the list

        items.getTransaction( ).commit( ); // commit is what will be deleting the row from the database table

        ArrayList<ItemsEntity> itemList = getAllitems( );

        return new ModelAndView("ItemAdminPage", "cList", itemList);
    }

    @RequestMapping("/update")
    // the String method returns the jsp page that we want to show
    public String update() {

        return "update";
    }
    private int itemid;
    @RequestMapping("/storeitemid")
    public String getitemid(int itemid){

        this.itemid = itemid;
        return "update";
    }
    @RequestMapping("/editItem")
    public String editItem(@RequestParam("name") String name,
                           @RequestParam("description") String description,
                           @RequestParam("quantity") String quantity,
                           @RequestParam("price") String price, Model model) {

        Configuration cfg = new Configuration( ).configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory( ); // design pattern

        Session session = sessionFact.openSession( );

        session.beginTransaction( );

        ItemsEntity editItem = (ItemsEntity) session.get(ItemsEntity.class, itemid);

        editItem.setName(name);
        editItem.setDescription(description);
        editItem.setQuantity(quantity);
        editItem.setPrice(price);

        session.update(editItem);
        session.getTransaction().commit();
        session.close( );

        ArrayList<ItemsEntity> itemList = getAllitems( );

        model.addAttribute("cList", itemList);

        return "items";


    }
}