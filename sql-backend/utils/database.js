import { Sequelize } from 'sequelize';

const sequelize = new Sequelize('enceladus', 'postgres', 'admin', {
    dialect: 'postgres',
    host: 'localhost', 
    define: {
        freezeTableName: true
    }
});

export default sequelize;