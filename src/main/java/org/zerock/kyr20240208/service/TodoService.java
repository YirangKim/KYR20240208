package org.zerock.kyr20240208.service;

import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.zerock.kyr20240208.dao.TodoDAO;
import org.zerock.kyr20240208.domain.TodoVO;
import org.zerock.kyr20240208.dto.TodoDTO;
import org.zerock.kyr20240208.utill.MapperUtil;

import java.util.List;
import java.util.stream.Collectors;

@Log4j2
public enum TodoService {
    INSTANCE;

    private TodoDAO dao;
    private ModelMapper modelMapper;

    TodoService() {
        dao = new TodoDAO();
        modelMapper = MapperUtil.INSTANCE.get();
    }

    public void register(TodoDTO todoDTO) throws Exception {

        TodoVO todoVO = modelMapper.map(todoDTO, TodoVO.class);
        log.info(todoVO);
        dao.insert(todoVO);
    }

    public List<TodoDTO> listAll()throws Exception {
        List<TodoVO> voList = dao.selectAll();
        log.info("voList...............");
        log.info(voList);
        List<TodoDTO> dtoList = voList.stream()
                .map(vo -> modelMapper.map(vo,TodoDTO.class))
                .collect(Collectors.toList());

        return dtoList;
    }
}
