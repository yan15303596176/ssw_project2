package com.oracle.spring.web;


import com.oracle.spring.domain.Foodorder;
import com.oracle.spring.domain.Income;
import com.oracle.spring.service.foodorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Collection;
import java.util.Date;

@Controller
@RequestMapping(path = "/settles")
public class FoodorderController {


    @Autowired
    private foodorderService foodorderService;



    @RequestMapping(method = RequestMethod.GET )
    public String show(Model model){
        model.addAttribute("Foodorder",foodorderService.findAll());
        return "settle/list";
    }


    @RequestMapping(path = "/{id}",method = RequestMethod.GET)
    public ModelAndView viewFoodorder(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView();
        mv.addObject("foodorders",foodorderService.findById(id));
        mv.setViewName("settle/income");
        return mv;
    }

    @RequestMapping(path = "/{id}",method = RequestMethod.DELETE)
    public String deleteFoodorder(@PathVariable("id") int id){

        foodorderService.deleteFoodorder(id);
        return "redirect:/settles";
    }

//    @RequestMapping(path = "/add",method = RequestMethod.POST)
//    public String insertIncome(HttpServletRequest request){
//      String income1 =  request.getParameter("income");
//      String tableId = request.getParameter("tableId");
//        Income income = new Income();
//        income.setDate(new Date());
//        income.setIncome(Integer.parseInt(income1));
//        income.setTableId(Integer.parseInt(tableId));
//        foodorderService.insertIncome(income);
//      return "redirect:/settles";
//    }
}
