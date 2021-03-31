package com.hcl.taskmanagement.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hcl.taskmanagement.model.Task;
import com.hcl.taskmanagement.model.User;

@Repository
public interface TaskRepo extends CrudRepository<Task, Integer> {

	List<Task> findAllByUser(User user);

}
