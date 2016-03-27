package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Child;
public interface ChildRepository extends PagingAndSortingRepository<Child, Long>,JpaSpecificationExecutor<Child>{
}

