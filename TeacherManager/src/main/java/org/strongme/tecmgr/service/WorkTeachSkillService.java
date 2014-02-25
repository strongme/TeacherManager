package org.strongme.tecmgr.service;

import java.io.UnsupportedEncodingException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.AbstractLobCreatingPreparedStatementCallback;
import org.springframework.jdbc.support.lob.LobCreator;
import org.springframework.jdbc.support.lob.LobHandler;
import org.springframework.stereotype.Service;
import org.strongme.tecmgr.bean.WorkTeachSkillBean;

@Service
public class WorkTeachSkillService {
	
	@Resource
	private JdbcTemplate jdbcTemplate;
	@Resource
	private LobHandler  lobHandler;
	
	public Integer save(WorkTeachSkillBean bean) {
		final WorkTeachSkillBean tmp = bean;
		int result = -1;
		String sql = "INSERT INTO workteachskill(teacherid,time,class,form,score,proff,remark) VALUES(?,?,?,?,?,?,?);";
		result = jdbcTemplate.execute(sql, new AbstractLobCreatingPreparedStatementCallback(this.lobHandler) {
			protected void setValues(PreparedStatement ps, LobCreator lc)
					throws SQLException, DataAccessException {
				ps.setString(1, tmp.getTeacherid());
				ps.setString(2, tmp.getTime());
				ps.setString(3, tmp.getClass_());
				ps.setString(4, tmp.getForm());
				ps.setString(5, tmp.getScore());
				ps.setString(6, tmp.getProff());
				try {
					lc.setBlobAsBytes(ps,7, tmp.getRemark().getBytes("UTF-8"));
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}});
		return result;
	}
	
	public Integer update(WorkTeachSkillBean bean) {
		final WorkTeachSkillBean tmp = bean;
		int result = -1;
		String sql = "UPDATE workteachskill SET time = ?,class = ?,form = ?,score = ?,proff = ?,remark = ? where id="+bean.getId()+";";
		result = jdbcTemplate.execute(sql, new AbstractLobCreatingPreparedStatementCallback(this.lobHandler) {
			protected void setValues(PreparedStatement ps, LobCreator lc)
					throws SQLException, DataAccessException {
				ps.setString(1, tmp.getTime());
				ps.setString(2, tmp.getClass_());
				ps.setString(3, tmp.getForm());
				ps.setString(4, tmp.getScore());
				ps.setString(5, tmp.getProff());
				try {
					lc.setBlobAsBytes(ps,6, tmp.getRemark().getBytes("UTF-8"));
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}});
		return result;
	}

	public List<WorkTeachSkillBean> get(String teacherid) {
		String sql = "SELECT id,teacherid,time,class,form,score,proff,remark FROM workteachskill where teacherid='"+teacherid+"';";
		List<WorkTeachSkillBean> list = jdbcTemplate.query(sql, new RowMapper<WorkTeachSkillBean>() {
			public WorkTeachSkillBean mapRow(ResultSet arg0, int arg1) throws SQLException {
				WorkTeachSkillBean result = new WorkTeachSkillBean();
				result.setId(arg0.getInt(1));
				result.setTeacherid(arg0.getString(2));
				result.setTime(arg0.getString(3));
				result.setClass_(arg0.getString(4));
				result.setForm(arg0.getString(5));
				result.setScore(arg0.getString(6));
				result.setProff(arg0.getString(7));
				try {
					result.setRemark(new String(lobHandler.getBlobAsBytes(arg0, 8),"UTF-8"));
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return result;
			}
		});
		return list;
	}
	public Integer delete(int id) {
		int result = -1;
		String sql = "DELETE FROM workteachskill WHERE id="+id;
		result = jdbcTemplate.update(sql);
		return result;
	}
	
}
