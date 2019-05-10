package ctfbackend.service.impl;

import ctfbackend.bean.Imagelocal;
import ctfbackend.dao.ImagelocalDao;
import ctfbackend.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ImageService")
public class ImageServiceImpl implements ImageService {

    @Autowired
    ImagelocalDao imagelocalMapper;

    @Override
    public void add(Imagelocal i) {
        imagelocalMapper.insert(i);
    }

    @Override
    public void update(Imagelocal i) {
        imagelocalMapper.updateByPrimaryKey(i);
    }

    @Override
    public Imagelocal select(Long id) {
        return imagelocalMapper.getById(id);
    }

    @Override
    public void delete(Long id) {
        imagelocalMapper.deleteById(id);
    }

    @Override
    public List<Imagelocal> list() {
        return imagelocalMapper.listAll();
    }

    @Override
    public List<Imagelocal> listByPage(int start, int prePageRecords) {
        return imagelocalMapper.listAllByPage(start,prePageRecords);
    }


}
