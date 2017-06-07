package model.spring;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages={"model"})
@EnableTransactionManagement
public class SpringJavaConfiguration {
	@Bean
	public DataSource dataSource() {
		System.out.println("calling dataSource()");
		DataSource dataSource = null;
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/xxx");
		} catch (NamingException e) {
			e.printStackTrace();
		}
		return dataSource;
	}
	@Bean
	public SessionFactory sessionFactory() {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource());
//		Properties props = new Properties();
//		props.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
//		props.setProperty("hibernate.show_sql", "true");
//		builder.addProperties(props);
//		builder.addAnnotatedClasses(CustomerBean.class, ProductBean.class);
		
		builder.configure("hibernate.cfg.xml");
		return builder.buildSessionFactory();
	}

	@Bean
	public PlatformTransactionManager transactionManager() {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory());
		return transactionManager;
	}
}
