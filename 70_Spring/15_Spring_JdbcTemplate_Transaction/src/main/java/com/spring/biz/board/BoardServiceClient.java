package com.spring.biz.board;

import java.util.List;

import org.springframework.context.support.GenericXmlApplicationContext;

import com.spring.biz.board.impl.BoardServiceImpl;


public class BoardServiceClient {

	public static void main(String[] args) {
		
		
		System.out.println("--- 스프링 컨테이너 구동전 ---");
		//1. 스프링 컨테이너 구동(스프링 설정 파일 읽어서)
		GenericXmlApplicationContext container = 
				new GenericXmlApplicationContext("applicationContext.xml");
		
		System.out.println("--- 스프링 컨테이너 구동후 ---");
		
		BoardService boardService = (BoardService) container.getBean("boardService");
		//2. 스프링 컨테이너 사용 : 생성된 객체 요청(lookup)
		
		BoardVO vo = new BoardVO();
		
//		vo.setTitle("테스트2-spring");
//		vo.setWriter("홍길동2-spring");
//		vo.setContent("테스트2-내용-spring");
//		
		boardService.insertBoard(vo);
		
		List<BoardVO> list = boardService.getBoardList();
		
		for(BoardVO board : list) {
			System.out.println(board);
		}
		
		System.out.println("-- tv 요청 사용 ---");
		
		vo.setTitle("테스트2-spring");
		vo.setWriter("홍길동2-spring");
		vo.setContent("테스트2-내용-spring");
		boardService.UpdateBoard(vo);
		
		
		System.out.println("--------DELETE---------");
		vo.setSeq(3);
	//	boardService.deleteBoard(vo);
		
		System.out.println("--------SelectOne---------");
		System.out.println(boardService.getBoard(vo));
		

		
		
		
		container.close();

	}

}
