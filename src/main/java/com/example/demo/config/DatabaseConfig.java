package com.example.demo.config;

import java.util.Properties;
import javax.sql.DataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

/**멀티 베이스 페키지의 mapperScan이 일어나도록 선언해준다.*/
@Configuration  
@MapperScan(basePackages = {"com.example.demo.*.mapper", "com.sorincorp.comm.*.mapper"})
public class DatabaseConfig {

	
	/**yml 파일을 통해 설정한 datasource  설정을 가져와 생성한 후, build */
    @Bean
    @ConfigurationProperties(prefix ="spring.datasource")
    public DataSource dataSource() {
//        return DataSourceBuilder.create()
//                                .url("jdbc:log4jdbc:sqlserver://172.10.0.204:1433;database=SEC_DEV")
//                                .driverClassName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy")
//                                .username("srec0009")
//                                .password("Korea11!@")
//                                .build();
    	return  DataSourceBuilder.create().build();
    }

    /**mybatis가 sqlSession을 이용하여 쿼리와 프로시저를 실행하기 위한 설정*/
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);

        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        sqlSessionFactoryBean.setMapperLocations(resolver.getResources("classpath*:/mapper/*/*.xml"));

        /**DB컬럼명에 _가 추가되어있을 경우 자동으로 DTO에 camelCase로 변환하여 매핑되어 실행시켜준다.*/
        Properties properties = new Properties();
        properties.put("mapUnderscoreToCamelCase", true);
        sqlSessionFactoryBean.setConfigurationProperties(properties);

        return sqlSessionFactoryBean.getObject();
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
        sqlSessionFactory.getConfiguration().setMapUnderscoreToCamelCase(true);
        final SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory);
        return sqlSessionTemplate;
    }
}