
package com.pzy.service;

import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.Record;
import com.pzy.entity.User;
import com.pzy.repository.RecordRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class RecordService {
	
	@Autowired
	private RecordRepository recordRepository;
	
	public void save(Record record){
		this.recordRepository.save(record);
	}
	
	public List<Record> findAll(final Date start,final Date end,final Long storeid,final String daytype){
         Specification<Record> spec = new Specification<Record>() {
              @Override
              public Predicate toPredicate(Root<Record> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
	              Predicate predicate = cb.conjunction();
	              predicate.getExpressions().add(cb.greaterThanOrEqualTo(root.get("recordDate").as(Date.class), start));
	              predicate.getExpressions().add(cb.lessThanOrEqualTo(root.get("recordDate").as(Date.class), end));
	              predicate.getExpressions().add(cb.equal(root.get("daytype").as(String.class), daytype));
	              predicate.getExpressions().add(cb.equal(root.get("store").get("id").as(Long.class), storeid));
	              return predicate;
              }
         };
         return recordRepository.findAll(spec);
	}
}