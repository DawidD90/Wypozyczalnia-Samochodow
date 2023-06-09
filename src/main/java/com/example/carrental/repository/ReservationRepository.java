package com.example.carrental.repository;

import com.example.carrental.model.RentModel;
import com.example.carrental.model.ReservationModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationRepository extends JpaRepository<ReservationModel, Long> {

    Page<ReservationModel> findAllBy(Pageable pageable);

}

