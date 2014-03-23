package com.seneca.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Program;
import com.seneca.repository.ProgramDao;

@Service("programService")
public class ProgramService {

	@Autowired
	ProgramDao programDao;
	//CRUD OPERATIONS:

	public Program add(String p_code, String p_name, int totalSem) {
		Program p = new Program();
		p.setProgramCode(p_code);
		p.setProgramName(p_name);
		p.setTotalSemester(totalSem);
		return programDao.create(p);
	}

	public Program update(Integer id, String p_code, String p_name, int totalSem) {
		Program p = programDao.getById(id);
		p.setProgramCode(p_code);
		p.setProgramName(p_name);
		p.setTotalSemester(totalSem);
		programDao.update(p);
		return null;
	}

	public void delete(Integer id) {
		programDao.delete(id);
	}

	public List<Program> getAll() {
		return programDao.getAll();
	}

	public Program getOne(Integer id) {
		return programDao.getById(id);
	}

	public void addCourseToProgram(String pcode, String pname, int num,
			List<String> sem) {
		// TODO Find the course then add it to the program
		
		
	}


}
