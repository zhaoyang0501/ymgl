
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

import com.pzy.entity.Child;
import com.pzy.repository.ChildRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class ChildService {
     @Autowired
     private ChildRepository childRepository;

 	public List<Child> findTop3() {
 		return childRepository.findAll(
 				new PageRequest(0, 15, new Sort(Direction.DESC, "createDate")))
 				.getContent();
 	}
     public List<Child> findAll() {
         return (List<Child>) childRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public Page<Child> findAll(final int pageNumber, final int pageSize,final String name){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Child> spec = new Specification<Child>() {
              public Predicate toPredicate(Root<Child> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (name != null) {
                   predicate.getExpressions().add(cb.like(root.get("name").as(String.class), "%"+name+"%"));
              }
              return predicate;
              }
         };
         Page<Child> result = (Page<Child>) childRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<Child> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<Child> spec = new Specification<Child>() {
              public Predicate toPredicate(Root<Child> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<Child> result = (Page<Child>) childRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			childRepository.delete(id);
		}
		public Child find(Long id){
			  return childRepository.findOne(id);
		}
		public void save(Child child){
			childRepository.save(child);
		}
}