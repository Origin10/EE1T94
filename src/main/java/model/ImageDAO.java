package model;

import java.util.List;

/**
 * Created by Student on 2017/6/1.
 */
public interface ImageDAO {

    public void insert(ImageInfo imageInfo);

    public void update(ImageInfo imageInfo);

    public void delete(Integer id);

    public ImageInfo findByPrimaryKey(Integer id);

    public List<ImageInfo> getAll();

}
