
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
import com.pzy.entity.News;
import com.pzy.entity.Xzqhsq;
import com.pzy.entity.Xzqhxq;
import com.pzy.repository.NewsRepository;
import com.pzy.repository.XzqhsqRepository;
import com.pzy.repository.XzqhxqRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class XzqhService {
	
	@Autowired
    private XzqhxqRepository xzqhxqRepository;
	
	@Autowired
    private XzqhsqRepository xzqhsqRepository;
	/***
	 * 查所有的市区列表
	 * @param sf
	 * @return
	 */
	public List<Xzqhsq> listAllXzqhsq(final String sf){
           Specification<Xzqhsq> spec = new Specification<Xzqhsq>() {
              public Predicate toPredicate(Root<Xzqhsq> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (sf != null) {
                   predicate.getExpressions().add(cb.equal(root.get("sssfdm").as(String.class),sf));
              }
              return predicate;
              }
         };
         return  xzqhsqRepository.findAll(spec );
	}
	
	/***
	 * 查所有的县区列表
	 * @param sf
	 * @return
	 */
	public List<Xzqhxq> listAllXzqhxq(final String sq){
           Specification<Xzqhxq> spec = new Specification<Xzqhxq>() {
              public Predicate toPredicate(Root<Xzqhxq> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (sq != null) {
                   predicate.getExpressions().add(cb.equal(root.get("sssqdm").as(String.class),sq));
              }
              return predicate;
              }
         };
         return  xzqhxqRepository.findAll(spec );
	}
}