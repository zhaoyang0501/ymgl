package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Xzqhxq;
public interface XzqhxqRepository extends PagingAndSortingRepository<Xzqhxq, String>,JpaSpecificationExecutor<Xzqhxq>{
}

