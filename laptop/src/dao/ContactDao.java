package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import entity.Contact;
@Repository
public class ContactDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Contact> getItems(int offset){
		String sql = "SELECT * FROM contact LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] {offset,Defines.ROW_COUNT},new BeanPropertyRowMapper<Contact>(Contact.class));
	}
	
	public int addItem(Contact contact) {
		String sql = "INSERT INTO contact(name,email,title,content) VALUES(?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{contact.getName(),contact.getEmail(),contact.getTitle(),contact.getContent()});
	}
	
	public int countContact() {
		String sql = "SELECT COUNT(*) AS countContact FROM contact";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public int delItem(int id) {
		String sql = "DELETE FROM contact WHERE id = ?";
		return jdbcTemplate.update(sql,new Object[] {id});
	}

}
