package com.nss.sahibganj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nss.sahibganj.entities.EventBean;
import com.nss.sahibganj.entities.Noticebean;
import com.nss.sahibganj.entities.User;
import com.nss.sahibganj.helper.ConnectionProvider;

public class NoticeEventImageDao {
	private static Connection con;

	public NoticeEventImageDao(Connection con) {
		super();
		this.con = con;
	}

	public NoticeEventImageDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	// Add Notice
	public boolean addNotice(Noticebean nei) {
		boolean f = false;
		try {

			String qry = "INSERT INTO `notice` (`si`, `notices`) VALUES (?, ?) ";
			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setInt(1, nei.getSi());
			ps.setString(2, nei.getNotices());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}

	// Add Events
	public boolean addEvents(EventBean nei) {
		boolean f = false;
		try {

			String qry = "INSERT INTO `events` (`si`, `event`) VALUES (?, ?) ";
			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setInt(1, nei.getSi());
			ps.setString(2, nei.getEvents());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}

	// Display All Notice
	public List<Noticebean> getAllNotices() {
		List<Noticebean> list = new ArrayList<Noticebean>();
		NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
		try {
			String qry = "SELECT * FROM `notice`";

			PreparedStatement ps = con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Noticebean nei = new Noticebean();
				nei.setSi(rs.getInt(1));
				nei.setNotices(rs.getString(2));
				list.add(nei);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// Display all events
	public List<EventBean> getAllEvents() {
		List<EventBean> list = new ArrayList<EventBean>();
		NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
		try {
			String qry = "SELECT * FROM `events`";

			PreparedStatement ps = con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				EventBean nei = new EventBean();
				nei.setSi(rs.getInt(1));
				nei.setEvents(rs.getString(2));
				list.add(nei);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// delete Notice
	public static int deleteNotice(Noticebean u) {
		int status = 0;

		try {
			NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
			String sql = "DELETE FROM `notice` WHERE `notices`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getNotices());
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// delete Notice
	public static int deleteEvents(EventBean u) {
		int status = 0;

		try {
			NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
			String sql = "DELETE FROM `notice` WHERE `event`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getEvents());
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// Add Slides
	public boolean addSlides(EventBean nei) {
		boolean f = false;
		try {

			String qry = "INSERT INTO `events` (`si`, `event`) VALUES (?, ?) ";
			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setInt(1, nei.getSi());
			ps.setString(2, nei.getEvents());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}

	// Display all Slides
	public List<EventBean> getAllSlides() {
		List<EventBean> list = new ArrayList<EventBean>();
		NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
		try {
			String qry = "SELECT * FROM `slideimage`";

			PreparedStatement ps = con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				EventBean nei = new EventBean();
				nei.setSi(rs.getInt(1));
				nei.setEvents(rs.getString(2));
				list.add(nei);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// delete Slides
	public static int deleteSlides(EventBean u) {
		int status = 0;

		try {
			NoticeEventImageDao dao = new NoticeEventImageDao(ConnectionProvider.getConnection());
			String sql = "DELETE FROM `notice` WHERE `event`=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getEvents());
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// EditOrUpdate Slides
	public boolean updateSlides(EventBean eb) {
		boolean f = false;
		try {

			String qry = "UPDATE `slideimage` SET `slide1`=?,`slide2`=?,`slide3`=?, `slide4`=? WHERE `si`=1";

			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setString(1, eb.getSlide1());
			ps.setString(2, eb.getSlide2());
			ps.setString(3, eb.getSlide3());
			ps.setString(4, eb.getSlide4());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}

	public boolean insertGallery(EventBean eb) {
		boolean f = false;
		try {

			String qry = "INSERT INTO `gallery` (`photos`, `caption`, `text`) VALUES (?, ?, ?) ";

			PreparedStatement ps = this.con.prepareStatement(qry);
			ps.setString(1, eb.getPhotos());
			ps.setString(2, eb.getCaption());
			ps.setString(3, eb.getTextarea());
			ps.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}

}
