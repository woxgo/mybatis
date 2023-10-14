package dao.impl;

import dao.AccountDao;
import pojo.Account;
import utils.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;

public class AccountDaoImpl implements AccountDao {

    @Override
    public Account selectByActno(String arg0) {
        SqlSession sqlSession = SqlSessionUtil.openSession();
        //Account account = (Account) sqlSession.selectOne("account.selectByActno", arg0);
        //return account;
        return (Account) sqlSession.selectOne("account.selectByActno", arg0);
    }

    @Override
    public int updateByActno(Account arg0) {
        SqlSession sqlSession = SqlSessionUtil.openSession();
        //int count = sqlSession.update("account.updateByActno", act);
        //return count;
        return sqlSession.update("account.updateByActno", arg0);
    }
}

