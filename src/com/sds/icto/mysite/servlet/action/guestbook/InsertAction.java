package com.sds.icto.mysite.servlet.action.guestbook;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.GuestbookDao;
import com.sds.icto.mysite.vo.GuestbookVo;
import com.sds.icto.web.Action;

public class InsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		// 메세지 등록
		String name = request.getParameter( "name" );
		String password = request.getParameter( "pass" );
		String message = request.getParameter( "content" );

		GuestbookVo vo = new GuestbookVo();
		vo.setName( name );
		vo.setPassword(password);
		vo.setMessage(message);

		GuestbookDao dao = new GuestbookDao();
		dao.insert(vo);

		//리다이렉트
		response.sendRedirect( "/mysite/guestbook" );
	}
}
