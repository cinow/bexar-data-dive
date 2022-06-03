package org.cinow.omh.locations;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class LocationRepositoryPostgresql implements LocationRepository {

	@Autowired
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Override
	public List<Location> findLocationByType(long typeId) {
		String sql = ""
			+ " select id_, location_type_id, name_en, name_es "
			+ " from tbl_locations "
			+ " where location_type_id = :location_type_id ";
		MapSqlParameterSource paramMap = new MapSqlParameterSource();
		paramMap.addValue("location_type_id", typeId);

		return this.namedParameterJdbcTemplate.query(sql, paramMap, this.locationRowMapper());
	}

	@Override
	public Location findLocation(long id, long typeId) {
		String sql = ""
			+ " select id_, location_type_id, name_en, name_es "
			+ " from tbl_locations "
			+ " where id_ = :id and location_type_id = :location_type_id ";
		MapSqlParameterSource paramMap = new MapSqlParameterSource();
		paramMap.addValue("id", id);
		paramMap.addValue("location_type_id", typeId);

		return this.namedParameterJdbcTemplate.queryForObject(sql, paramMap, this.locationRowMapper());
	}
	
	private RowMapper<Location> locationRowMapper() {
		return new RowMapper<Location>() {
			@Override
			public Location mapRow(ResultSet rs, int rowNum) throws SQLException {
				Location location = new Location();
				location.setId(rs.getLong("id_"));
				location.setName_en(rs.getString("name_en"));
				location.setName_es(rs.getString("name_es"));
				location.setTypeId(rs.getLong("location_type_id"));

				return location;
			}
		};
	}
}
