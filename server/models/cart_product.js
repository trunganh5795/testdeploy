"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Cart_product extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate({Product_detail, Cart }) {
      // define association here
        this.belongsTo(Cart,{
            foreignKey: "cartId",
        })
        this.belongsTo(Product_detail,{
            foreignKey: "productDetailId",
        })
    }
  }
  Cart_product.init( 
    {
        id: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
          allowNull: false,
        },
        // cart_date: {
        //   type: DataTypes.DATE,
        // },
        quantity: {
          type: DataTypes.INTEGER,
        },
    },
    {
        sequelize,
        timestamps: true,
        modelName: "Cart_product",
        tableName: "cart_product",
      }
    );
  return Cart_product;
};