package com.crud.dao;

import com.crud.bean.DiaryVO;
import com.crud.diary.DiaryService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DiaryDAO {

    @Autowired
    SqlSession sqlSession;
    public int insertDiary(DiaryVO vo){
        return sqlSession.insert("Diary.insertDiary",vo);
    }
    public int updateDiary(DiaryVO vo){
        return sqlSession.update("Diary.updateDiary",vo);
    }
    public int deleteDiary(int seq){
        return sqlSession.delete("Diary.deleteDiary",seq);
    }
    public DiaryVO getDiary(int seq){
        return sqlSession.selectOne("Diary.getDiary",seq);
    }
    public List< DiaryVO> getDiaryList(){
        return sqlSession.selectList("Diary.getDiaryList");
    }
}
