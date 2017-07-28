package com.oracle.spring.mapper;

import com.oracle.spring.domain.Foodorder;
import com.oracle.spring.domain.Income;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface foodorderMapper {

    List<Foodorder> findById(int tableId);

    List<Foodorder> findAll();

    Foodorder findByIds(int id);

    void deleteFoodorder(int tableId);

//    void insertIncome(Income income);
}
