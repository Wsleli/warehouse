package com.lili.sys.service.impl;

import com.lili.sys.entity.Notice;
import com.lili.sys.mapper.NoticeMapper;
import com.lili.sys.service.INoticeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>
 * InnoDB free: 9216 kB 服务实现类
 * </p>
 *
 * @author: Wsleli Wiliams
 * @since 2024-5-17
 */
@Service
@Transactional
public class NoticeServiceImpl extends ServiceImpl<NoticeMapper, Notice> implements INoticeService {

}
