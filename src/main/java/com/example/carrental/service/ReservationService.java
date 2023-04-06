package com.example.carrental.service;

import com.example.carrental.model.RentModel;
import com.example.carrental.repository.RentRepository;
import com.example.carrental.repository.ReservationRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
@Slf4j
public class ReservationService {

    private final ReservationRepository reservationRepository;


//    public List<RentModel> getAllRent(){
//        return rentRepository.findAll();
//    }
//
//    public void saveEditRent(RentModel editRent) { rentRepository.save(editRent);
//    }
//
//    public void deleteRent(Long id) {
//        rentRepository.deleteById(id);
//    }
//
//    public void addRent(RentModel rentModel) {rentRepository.save(rentModel);
//    }
}



