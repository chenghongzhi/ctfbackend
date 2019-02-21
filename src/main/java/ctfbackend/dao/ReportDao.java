package ctfbackend.dao;

import ctfbackend.bean.Report;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReportDao
{

    void deleteById(Long id);

    Report getById(Long id);

    List<Report> getAllReport();

    List<Report> selectByPage(@Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize);

    List<Report> selectByStuIdToPage(@Param("stuId") Long stuId, @Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize);

    List<Report> selectByTmpIdToPage(@Param("tmpId") Long tmpId, @Param("couId") Long couId, @Param("beginIndex") Integer beginIndex, @Param("pageSize") Integer pageSize);

    List<Report> selectByStuId(Long stuid);

}