package ctfbackend.dao;

import ctfbackend.bean.Imagelocal;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ImagelocalDao {

    @Delete("delete from imagelocal where id = #{id}")
    void deleteById(Long id);
    @Insert("insert into imagelocal (iname, size, ports,createdtime, idescribe, imageid)values (#{iname,jdbcType=VARCHAR}, #{size,jdbcType=VARCHAR}, #{ports,jdbcType=VARCHAR},#{createdtime,jdbcType=TIMESTAMP}, #{idescribe,jdbcType=VARCHAR}, #{imageid,jdbcType=VARCHAR})")
    void insert(Imagelocal imagelocal);

    @Select("select * from imagelocal where id = #{id,jdbcType=BIGINT}")
    Imagelocal getById(Long id);

    @Select("select * from imagelocal")
    List<Imagelocal> listAll();

    @Select("select * from imagelocal LIMIT #{start},#{prePageRecords}")
    List<Imagelocal> listAllByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);

    void updateByPrimaryKey(Imagelocal record);
}
