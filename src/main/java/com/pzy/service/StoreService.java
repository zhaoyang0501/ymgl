
package com.pzy.service;

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

import com.pzy.entity.Store;
import com.pzy.repository.StoreRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class StoreService {
     @Autowired
     private StoreRepository storeRepository;

 	public List<Store> findTop3() {
 		return storeRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
     public List<Store> findAll() {
         return (List<Store>) storeRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Store> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Store> spec = new Specification<Store>() {
              public Predicate toPredicate(Root<Store> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("sbbh").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Store> result = (Page<Store>) storeRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Store> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Store> spec = new Specification<Store>() {
              public Predicate toPredicate(Root<Store> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Store> result = (Page<Store>) storeRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			storeRepository.delete(id);
		}
		public Store find(Long id){
			  return storeRepository.findOne(id);
		}
		public void save(Store store){
			storeRepository.save(store);
		}
}