package com.oracle.spring.service;

import com.oracle.spring.domain.Foodorder;
import com.oracle.spring.domain.Income;
import org.springframework.stereotype.Service;

import java.util.List;


public interface foodorderService {

    List<Foodorder> findById(int tableId);

    List<Foodorder> findAll();

    Foodorder findByIds(int id);

    void deleteFoodorder(int tableId);

//    void insertIncome(Income income);
}
