package com.rain.tpl.idgenerator;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;

public class OwnerIdGenerator implements IdentifierGenerator {



@Override
public Serializable generate(SharedSessionContractImplementor session, Object object) throws HibernateException {
	// TODO Auto-generated method stub
	String prefix = "OWN";
    Connection connection = session.connection();
    try {

        PreparedStatement ps = connection
                .prepareStatement("select count(*)+3 as nextVal  from tpl_user_tbl");

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            int id = rs.getInt("nextVal");
            Calendar calendar = Calendar.getInstance(); 
            String code = prefix + new Integer(id).toString()+calendar.get(Calendar.MONTH)+calendar.get(Calendar.YEAR);
           // System.out.println("Generated Stock Code: " + code);
            return code;
        }

    } catch (SQLException e) {       
        e.printStackTrace();
    }
    return null;
}

}