package com.oracle.spring.service.impl;

import com.oracle.spring.domain.Foodorder;
import com.oracle.spring.mapper.foodorderMapper;
import com.oracle.spring.service.foodorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoodorderServiceImpl implements foodorderService {

    @Autowired
   private foodorderMapper foodorderMapper;


    @Override
    public List<Foodorder> findById(int tableId) {
        System.out.println(tableId);
        return foodorderMapper.findById(tableId);
    }

    @Override
    public List<Foodorder> findAll() {
        return foodorderMapper.findAll();
    }

    @Override
    public Foodorder findByIds(int id) {
        return foodorderMapper.findByIds(id);
    }

    @Override
    public void deleteFoodorder(int tableId) {
        foodorderMapper.deleteFoodorder(tableId);
    }
}
