package com.pp.boot.board.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import com.pp.boot.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Component
public class Board {
	private int boardNo;
	private String memberId;
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private int boardView;
	private String category;
}
