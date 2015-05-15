package com.sds.icto.mysite.servlet.action.guestbook;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.GuestbookDao;
import com.sds.icto.mysite.vo.GuestbookVo;
import com.sds.icto.web.Action;

public class DeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		
		//삭제
		String no = request.getParameter( "no" );
		String password = request.getParameter( "password" );

		GuestbookVo vo = new GuestbookVo();
		vo.setNo( Long.parseLong(no) );
		vo.setPassword(password);

		GuestbookDao dao = new GuestbookDao();
		dao.delete(vo);

		//리다이렉트
		response.sendRedirect( "/mysite/guestbook" );
	}
}
