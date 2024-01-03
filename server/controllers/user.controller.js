// const AccountModel = require('../models/account.models/account.model');
// const VerifyModel = require('../models/account.models/verify.model');
// const UserModel = require('../models/account.models/user.model');
// const mailConfig = require('../config/mail.config');
// const helper = require('../helpers');
// const constants = require('../constants');
//const bcrypt = require('bcryptjs');
const { User, User_role, Store } = require('../models');
// const { Op } = require('sequelize');
// const helpers = require('../helpers');
// const constrants = require('../constrants');
// const { login } = require('./auth.controller');

// const { User } = require('../models');


const verifyAccount =  (req, res) => {
  res.send("Hello");
  // const account = await User.findOne({
  //   where: { username: req.username },
  // });
  // account.active = 'active';
  // await account.save();
  // res.status(200).send(account);
};


const getUser = async (username) => {
  const user = await User.findOne({
    where: {
      username: username
    }
  })
  return user;
} 

const getUserByUsername  = async (req, res) => {
  const {username} = req.params;
  try {
    const user = await getUser(username);
    const {dataValues} = user;
    const {password, refreshToken, ...others} = dataValues;
    // console.log(others);
    res.status(200).json(others);
    
  } catch (err) {
    console.log(err);
  }
}

const getUserAuthorization = async (req, res) => {
  try {
    const user = await getUser(req.username);
    const {dataValues} = user;
    const {password, refreshToken, ...others} = dataValues;
    res.status(200).json(others);
    
  } catch (err) {
    console.log(err);
  }
}

const createRoleSeller = async (req, res) => {
  try {
      const {userId} = req.body;
      await User_role.create({
        roleId: 2,
        userId: userId,
      })
      res.status(200).json({message: "Created role Seller successfully !!!"});
  }
  catch (err) {
    console.log(err);
  }
}

const createSellerStore = async (req, res) => {
  try {
    const {shop_name, description, phone_number, address, avatar, userId} = req.body;
    await Store.create({
      shop_name: shop_name,
      description: description,
      phone_number: phone_number,
      address: address,
      avatar: avatar,
      userId: userId
    })

    res.status(200).json({message: "Created Seller Store successfully !!!"});
  }
  catch (err) {
    console.log(err);
  }
}

const updateUserInfo = async (req, res) => {
  const {avatar, fullname, phone_number, address, address2} = req.body;
  try {
    const existedUser = await User.findOne({
      where: {
        username: req.username
      }
    })
    if(!existedUser) {
      return res.status(400).json({message: "Not found user"})
    }
    await existedUser.update({
      avatar,
      fullname,
      phone_number,
      address: address2
    })

    res.status(204).json({message: "Update user successfully"});

  } catch (error) {
    console.log(error);
  }
}


const getUserByUserId= async (req, res) => {
    const {userId} = req.body;

}

module.exports = {
  verifyAccount,
  getUserByUsername,
  getUserAuthorization,
  createRoleSeller,
  createSellerStore,
  updateUserInfo,
  // getUserByStoreId,
};
