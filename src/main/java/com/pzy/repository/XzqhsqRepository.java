package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Xzqhsq;
public interface XzqhsqRepository extends PagingAndSortingRepository<Xzqhsq, String>,JpaSpecificationExecutor<Xzqhsq>{
}

