package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Store;
public interface StoreRepository extends PagingAndSortingRepository<Store, Long>,JpaSpecificationExecutor<Store>{
}

