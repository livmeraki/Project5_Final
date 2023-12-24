package com.crud.diary;

import com.crud.bean.DiaryVO;

import java.util.List;

public interface DiaryService {
    public int insertDiary(DiaryVO vo);
    public int deleteDiary(int seq);
    public int updateDiary(DiaryVO vo);
    public DiaryVO getDiary(int seq);
    public List<DiaryVO> getDiaryList();

}
